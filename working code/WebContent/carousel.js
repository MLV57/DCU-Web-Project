class Carousel {
    constructor(element, options = {}){
        this.element = element;
        this.options = Object.assign({}, {
            slidesToScroll: 1, //number of items that will move on button click
            slidesVisible: 1, // number of items displayed 
            loop : true // will it loop when going too far or just stop ?
        }, options);
        let children = [].slice.call(element.children); //list of children
        this.isMobile = false; //will be used for smartphone screen display
        this.currentItem = 0;
        this.root = this.createDivWithClass('carousel'); //creation of the carousel
        this.container = this.createDivWithClass('carousel_container');
        this.root.appendChild(this.container);
        this.element.appendChild(this.root);
        this.moveCallbacks = [];
        this.items = children.map((child)=> { //get items from original htlm content and puts it in the carousel
            let item = this.createDivWithClass('carousel_item');
            item.appendChild(child);
            this.container.appendChild(item);
            return item;
        });
        this.setStyle();
        this.creatNavigation();
        
        //this.moveCallbacks.forEach(cb => cb(0))
        //this.createPagination(); //this feature is useless as it's not working properly
        this.onWindowResize();
        window.addEventListener('resize', this.onWindowResize.bind(this)); //for the mobile display function
        debugger
    }
    //Here we can define the size of each item of the carousel
    setStyle () {
        let ratio = this.items.length / this.slidesVisible;
        this.container.style.width = (ratio*100) + "%";
        this.items.forEach(item => item.style.width = ((100 / this.slidesVisible)/ratio) + "%");
    
    }
    //here we create two buttons used to horizontally scroll the carousel
    creatNavigation (){
        let nextbutton = this.createDivWithClass('carousel_next');
        let prevbutton = this.createDivWithClass('carousel_prev');
        this.root.appendChild(nextbutton);
        this.root.appendChild(prevbutton);
        nextbutton.addEventListener('click', this.next.bind(this));//bind context to use it in next function
        prevbutton.addEventListener('click', this.prev.bind(this)); 
       
       
    }

    next() { //this will take class as reference and the clicked item thanks to the bind function
        this.goToItem(this.currentItem + this.slidesToScroll);
    
    }

    prev() {
        this.goToItem(this.currentItem - this.slidesToScroll);
    }

    createPagination(){ //pagination process, didn't succeed to set an active button 
        let pagination = this.createDivWithClass('carousel_pagination');
        let buttons = [];
        this.root.appendChild(pagination);
        for (let i = 0;i< this.items.length; i = i + this.options.slidesVisible){
            let button = this.createDivWithClass('carousel_pagination_button');
            button.addEventListener('click', ()=> this.goToItem(i));
            pagination.appendChild(button);
            buttons.push(button);
        }
        this.onMove(index => {
            let activeButton = buttons[Math.floor(index/this.options.slidesToScroll)];
            if (activeButton){
                buttons.forEach(button => button.classlist.remove('carousel_pagination_button-active'));
                activeButton.classlist.add('.carousel_pagination_button-active');
            }
        });
    }

    goToItem (index) {
        if (index < 0) { //loop option when going before index 0
            index = this.items.length - this.options.slidesVisible;
            //loop option when going after last index
        } else if (index >= this.items.length || this.items[this.currentItem + this.options.slidesVisible]===undefined &&
             index > this.currentItem){ // the second condition is used so that it won't let a void at the end
                //more extacly it takes the current item, adds the number of visible slides and see if there is nomething to display or not
            index = 0;
        }
        let translateX = -index * 100 / this.items.length; //calculate the length to translate
        this.container.style.transform = 'translate3d(' + translateX + '%,0,0)'; //actual translation
        this.currentItem = index;
    }

    onMove (cb) { //pocess to memorize which pagination button is active
        this.moveCallbacks.push(cb);
    }
    //this function create a div with a defined class name
    createDivWithClass (className){
        let div = document.createElement('div');
        div.setAttribute('class',className);
        return div;
    }
    onWindowResize (){
        let mobile = window.innerWidth < 800 //value in pixels
        if (mobile !== this.isMobile) {
            this.isMobile = mobile;
            this.setStyle();
        }
    }
    get slidesToScroll () {
        return this.isMobile ? 1 : this.options.slidesToScroll; //ternary condition
    }

    get slidesVisible () {
        return this.isMobile ? 1 : this.options.slidesVisible;
    }
}




