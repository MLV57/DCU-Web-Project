/*create table groupH_topics_table
(TOPIC_ID INT NOT NULL auto_increment,
 TITLE TEXT NOT NULL,
 DESCR TEXT,
 PRIMARY KEY (TOPIC_ID));
 
 create table groupH_discussion_table
(DISCUSSION_ID INT NOT NULL auto_increment,
 TITLE TEXT NOT NULL,
 TAGS VARCHAR(100),
 CREATION_DATE TIMESTAMP,
 TOPIC_ID INT,
 PRIMARY KEY (DISCUSSION_ID));
 
 create table groupH_messages_discussion_table
(MESSAGE_ID INT NOT NULL auto_increment PRIMARY KEY,
 CONTENT TEXT,
 POST_DATE TIMESTAMP,
 DISC_ID INT,
 USER_ID INT
 );
 
 create table groupH_user_table
(USER_ID INT NOT NULL auto_increment PRIMARY KEY,
 PSEUDO VARCHAR(30)
 );
 
 insert into groupH_topics_table (title,descr) values ("Artificial Intelligence","Here, come and share your ideas about AI");
 insert into groupH_topics_table (title,descr) values ("Cryptography","A question about the latest cryptography techniques? You are in the right place");
 insert into groupH_topics_table (title,descr) values ("Electronics","All your questions about electronics");
 insert into groupH_topics_table (title,descr) values ("Engineering new","Get informed about the latest engineering projects here");
 insert into groupH_topics_table (title,descr) values ("Astronomy","All discussions about astronom");
 insert into groupH_topics_table (title,descr) values ("Biology","Here it is about biology of all kinds, join the discussion !");
 insert into groupH_topics_table (title,descr) values ("Physics","Ask here your general questions about physics");
 insert into groupH_topics_table (title,descr) values ("Mathematics","Here, discover the latest mathematical concepts");
 insert into groupH_topics_table (title,descr) values ("Painting","Come and discuss painting");
 insert into groupH_topics_table (title,descr) values ("Sculpture","Here, join sculpture enthusiasts of all kinds");
 insert into groupH_topics_table (title,descr) values ("Architecture","Rediscover the architectural treasures of our history");
 insert into groupH_topics_table (title,descr) values ("Music","Share your latest musical discovery");
 insert into groupH_topics_table (title,descr) values ("Poetry","Here discuss poetry and find your inspiration");
 insert into groupH_topics_table (title,descr) values ("Theater","Write your next piece !");
 insert into groupH_topics_table (title,descr) values ("Novel","Share your feelings on your last readings");
 insert into groupH_topics_table (title,descr) values ("Essay","Discover the essays of the community");
 */
insert into groupH_discussion_table (title, tags, creation_date, topic_id) values ("is AI a danger for humanity ?", "Computer Sciences;Machine Learning", "2021-04-23 15:02:23",1 );
insert into groupH_discussion_table (title, tags, creation_date, topic_id) values ("How do neural networks work ?", "Computer Sciences;Deep Learning", "2021-04-23 16:25:38",1);
insert into groupH_discussion_table (title, tags, creation_date, topic_id) values ("Can robots be 'smart' ?", "Computer Sciences;robotics", "2021-04-23 16:25:46",1);
insert into groupH_discussion_table (title, tags, creation_date, topic_id) values ("How cryptography was an advantage during WW2", "Enigma;WW2;History", "2021-04-24 16:25:38",2);
insert into groupH_discussion_table (title, tags, creation_date, topic_id) values ("Is it possible to break credit card security ?", "hacks;code;bank", "2021-03-23 16:25:38",2);
insert into groupH_discussion_table (title, tags, creation_date, topic_id) values ("what's the differnece between public and private keys ?", "internet;cryptography;keys", "2020-04-23 16:25:38",2);
insert into groupH_discussion_table (title, tags, creation_date, topic_id) values ("Can I repair elecrtonic stuff by myself ?", "DIY;electronics;repair", "2021-04-23 16:20:38",3);
insert into groupH_discussion_table (title, tags, creation_date, topic_id) values ("How does my hardware computer works ?", "Computer;hardware", "2021-04-23 16:25:38",3);
insert into groupH_discussion_table (title, tags, creation_date, topic_id) values ("News about Spacex advances", "SpaceX;Elon Musk", "2021-04-23 16:25:38",4);
insert into groupH_discussion_table (title, tags, creation_date, topic_id) values ("Drones delivery", "drones;delivery;amazon", "2021-04-23 16:25:38",4);
insert into groupH_discussion_table (title, tags, creation_date, topic_id) values ("how to become an engineer ?", "Studies;Engineering", "2021-04-23 08:25:38",4);
insert into groupH_discussion_table (title, tags, creation_date, topic_id) values ("Would you agree to travel in an autonomous car ?", "Autonomous car", "2021-04-23 10:47:12",4);
insert into groupH_discussion_table (title, tags, creation_date, topic_id) values ("Is the Internet of Things the future ?", "Engineering; IoT", "2021-04-23 10:13:12",4);
insert into groupH_discussion_table (title, tags, creation_date, topic_id) values ("Can Near Field Communication change the biomedical space ?", "Engineering; Biomedical; NFCr", "2021-04-23 10:19:12",4);
insert into groupH_discussion_table (title, tags, creation_date, topic_id) values ("Will Elon Musk get to Mars ?", "SpaceX; space; mars", "2021-04-23 15:56:23",5);
insert into groupH_discussion_table (title, tags, creation_date, topic_id) values ("Something about literature", "Literature", "2021-04-23 16:02:23",16);
 
 