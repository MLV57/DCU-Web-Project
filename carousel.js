class Carousel {
    constructor(element, options = {}){
        this.element = element
        this.options = Object.assign({}, {
            slidesToScroll: 1, //number of items that will move on button click
            slidesVisible: 1, // number of items displayed 
            loop : false // will it loop when going too far or just stop ?
        }, options)
        let children = [].slice.call(element.children)
        this.isMobile = false //will be used for smartphone screen display
        this.currentItem = 0
        this.root = this.createDivWithClass('carousel') //creation of the carousel
        this.container = this.createDivWithClass('carousel_container')
        this.root.appendChild(this.container)
        this.element.appendChild(this.root)
        this.moveCallbacks = []
        this.items = children.map((child)=> { //get items from original htlm content and puts it in the carousel
            let item = this.createDivWithClass('carousel_item')
            item.appendChild(child)
            this.container.appendChild(item)
            return item
        });
        this.setStyle()
        this.creatNavigation()
        this.moveCallbacks.forEach(cb => cb(0))
        window.addEventListener('resize', this.onWindowResize.bind(this))
        debugger
    }

    setStyle () {
        let ratio = this.items.length / this.slidesVisible
        this.container.style.width = (ratio*100) + "%"
        this.items.forEach(item => item.style.width = ((100 / this.slidesVisible)/ratio) + "%")
    
    }

    creatNavigation (){
        let nextbutton = this.createDivWithClass('carousel_next')
        let prevbutton = this.createDivWithClass('carousel_prev')
        this.root.appendChild(nextbutton)
        this.root.appendChild(prevbutton)
        nextbutton.addEventListener('click', this.next.bind(this)) //bind pour pas perdre le context
        prevbutton.addEventListener('click', this.prev.bind(this)) //bind pour pas perdre le context
        if (this.options.loop === true){
            return //leave function before the no loop process
        }
        this.onMove(index => {
            if (index == 0){
            prevbutton.classList.add('carousel_prev-hidden') //hide prev button when index is 0
            } else {
            prevbutton.classList.remove('carousel_prev-hidden') 
            }
            if (this.items[this.currentItem + this.slidesVisible]===undefined){
                nextbutton.classList.add('carousel_next-hidden')
            } else {
                nextbutton.classList.remove('carousel_next-hidden')
            }
        })
    }

    next() { //this fera reference a la classe et pas a l'element sur lequel on vient d'appuyer
        this.goToItem(this.currentItem + this.slidesToScroll)
    
    }

    prev() {
        this.goToItem(this.currentItem - this.slidesToScroll)
    }



    goToItem (index) {
        if (index < 0) {
            index = this.items.length - this.options.slidesVisible //loop option
        } else if (index >= this.items.length || this.items[this.currentItem + this.options.slidesVisible]===undefined &&
             index > this.currentItem){ //je sais pas torp a quoi sert la deuxieme option (pas a ne pas laisser du vide en tout cas)
            index = 0
        }
        let translateX = -index * 100 / this.items.length //calculate the length to translate
        this.container.style.transform = 'translate3d(' + translateX + '%,0,0)'
        this.currentItem = index
        this.moveCallbacks.forEach(cb => cb(index)) //je vois pas forcément a quoi ça sert
    }

    onMove (cb) { //takes callback as paramater to register callbacks
        this.moveCallbacks.push(cb)
    }

    createDivWithClass (className){
        let div = document.createElement('div')
        div.setAttribute('class',className)
        return div
    }
    onWindowresize (){
        let mobile = window.innerWidth < 800 //value in pixels
        if (mobile !== this.isMobile) {
            this.isMobile = mobile
            this.setStyle()
            this.moveCallbacks.forEach(cb => cb(this.currentItem)) //this should be submitted to a if loop == true
        }
    }
    get slidesToScroll () {
        return this.isMobile ? 1 : this.options.slidesToScroll
    }

    get slidesVisible () {
        return this.isMobile ? 1 : this.options.slidesVisible
    }
}




