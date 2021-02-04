---Заполнение талицы USERS---

INSERT INTO `users` (`phone`,`e-mail`) VALUES 
("076 6463 2720","Nam.tempor@non.edu"),
("076 8473 1651","Aliquam@eleifendnec.net"),
("(0121) 095 9809","mi@nectempus.org"),
("(016914) 43864","Cras.eu@mattisCras.edu"),
("0500 306558","ante.lectus.convallis@faucibus.edu"),
("070 7286 6197","ullamcorper@Maecenas.org"),
("055 7554 6911","lectus.sit@odioa.co.uk"),
("07971 113634","tincidunt.orci@Quisque.co.uk"),
("(017066) 15558","ornare@mollis.ca"),
("07624 391596","Duis.mi@rutrumlorem.co.uk"),
("(0114) 677 0998","luctus.sit@Donecatarcu.edu"),
("0845 46 45","a.auctor.non@ipsumnuncid.net"),
("0800 1111","sed.facilisis.vitae@idsapienCras.edu"),
("0876 885 2569","interdum.enim.non@rutrum.com"),
("(029) 1266 3699","et@Vestibulum.net"),
("0800 1111","malesuada.vel@Donecest.edu"),
("0845 46 47","et.euismod.et@eu.ca"),
("(0114) 513 3102","Vestibulum.ut@pharetra.org"),
("0800 001 2163","sagittis@acmattisvelit.net"),
("(0118) 048 2840","egestas.blandit.Nam@Proinvel.com"),
("055 7124 9104","porttitor.tellus@eleifendegestas.ca"),
("0500 538838","rutrum.eu.ultrices@velit.edu"),
("0800 923 6215","Morbi.vehicula@rhoncusid.ca"),
("(016977) 8680","condimentum@Duisa.com"),
("(026) 6290 4055","Morbi.quis@elementumduiquis.co.uk"),
("(014712) 21655","nascetur.ridiculus@enim.edu"),
("0845 46 41","mauris.a@augueut.edu"),
("(01258) 08972","Aliquam@Nuncmauriselit.net"),
("07624 035064","urna@egetmagnaSuspendisse.com"),
("07921 472048","non.lobortis@turpisegestasAliquam.net");

---Заполнение талицы GENDERS---

INSERT INTO `genders` (`gender_name`) VALUES
("male"),
("female");

---Заполнение талицы PROFILES---

INSERT INTO `profiles` (`user_id`,`gender_id`,`first_name`,`last_name`,`address`,`country`,`birthday`,`discount`) VALUES 
(1,2,"Barbara","Horton","832-5935 Senectus Av.","Pakistan","2003-03-08 07:58:21",15),
(2,1,"Bruce","Garza","5285 Erat. Rd.","Slovakia","2001-01-04 20:17:41",10),
(3,1,"Alexis","Jordan","P.O. Box 930, 2771 Tempor Rd.","Yemen","1968-04-27 09:13:48",5),
(4,2,"Maya","Delgado","P.O. Box 248, 2057 Risus. St.","Australia","1973-02-20 18:35:05",0),
(5,1,"Abraham","Blackburn","575-765 Turpis Av.","Guyana","2009-07-14 18:23:22",5),
(6,2,"Tasha","Houston","3627 Sodales Street","Guatemala","1988-06-12 06:25:09",0),
(7,2,"Velma","Underwood","Ap #825-5847 Lacus, Ave","Uzbekistan","2017-09-25 10:40:37",10),
(8,2,"Cassidy","Shannon","Ap #123-8269 Quam, Road","Puerto Rico","1992-12-18 02:09:35",5),
(9,1,"Sage","Dillard","8763 Risus. Street","Timor-Leste","1981-05-07 04:46:23",40),
(10,1,"Donovan","Kerr","Ap #410-3768 In, Street","Haiti","1980-03-30 04:32:47",25),
(11,2,"Beatrice","Gilbert","5414 Mauris Avenue","Pakistan","2009-04-11 09:05:15",5),
(12,2,"Meghan","Atkins","Ap #246-8379 Dictum St.","Guam","1975-07-07 12:47:44",10),
(13,2,"Hadassah","Weber","6869 Est Street","Vanuatu","1980-08-03 12:00:19",5),
(14,1,"Malcolm","Koch","P.O. Box 634, 4262 Eu Street","Japan","2016-01-29 03:55:29",25),
(15,2,"Regina","Vargas","Ap #306-7907 Eu Rd.","Indonesia","1967-10-21 21:09:55",0),
(16,1,"Eaton","Rosales","1989 Lobortis Road","Cayman Islands","1994-04-02 00:09:09",5),
(17,1,"Keegan","Wilcox","805-7260 Libero. St.","Ecuador","2007-01-16 00:39:35",10),
(18,1,"Echo","Dale","978-9002 Phasellus St.","Estonia","2000-07-29 09:00:00",15),
(19,2,"Rana","Reynolds","P.O. Box 740, 6108 Consectetuer Rd.","Cook Islands","1990-08-27 17:51:55",40),
(20,1,"Samuel","Tillman","411-815 Habitant St.","Armenia","2007-04-14 21:57:50",0),
(21,1,"Gary","Hess","Ap #580-6898 Suspendisse Av.","Marshall Islands","2007-10-16 05:48:48",20),
(22,1,"Alan","Hood","Ap #660-5356 Ut Street","Mauritania","1966-12-28 00:39:04",35),
(23,2,"Ross","Tyson","P.O. Box 530, 9432 Dolor. Av.","Sint Maarten","1976-02-01 05:00:39",10),
(24,1,"Autumn","Maldonado","355-9151 Adipiscing. St.","Tajikistan","1999-10-09 14:39:11",0),
(25,1,"Craig","Meyer","Ap #557-6964 Pharetra St.","Wallis and Futuna","2020-04-17 21:54:35",25),
(26,2,"Ulysses","Mcfadden","462-4092 Eu St.","Tonga","1991-10-15 18:02:48",20),
(27,1,"Arden","Willis","Ap #204-7633 Nibh Av.","Guatemala","1982-07-26 17:40:14",15),
(28,2,"Catherine","Romero","240-9483 A Street","Equatorial Guinea","2000-11-30 12:55:53",35),
(29,1,"Phillip","Wilcox","Ap #596-8745 Dui, Road","Gambia","1973-11-02 14:19:24",10),
(30,1,"Gay","Chaney","796-7998 Aliquet Rd.","Guyana","1972-08-06 11:16:42",30);

---Заполнение талицы GENRES---

INSERT INTO `genres` (`genre_name`, `genre_description`) VALUES
("Детектив", "Преимущественно литературный жанр, произведения которого описывают процесс исследования загадочного происшествия с целью выяснения его обстоятельств и раскрытия загадки."),
("Комедия", "Вид драматургического произведения. Отображает все уродливое и нелепое, смешное и несуразное, высмеивает пороки общества."),
("Научная фантастика", "Одна из разновидностей фантастики. Научная фантастика основывается на фантастических допущениях (вымысле) в области науки, включая различные виды наук, такие как: точные, естественные, и гуманитарные науки."),
("Сказка", "Это жанр литературного творчества, чаще всего в сказках присутствует волшебство и различные невероятные приключения."),
("Роман", "Произведение, в событиях которого обычно принимает участие много действующих лиц, чьи судьбы переплетаются. Романы бывают философские, приключенческие, исторические, семейно-бытовые, социальные."),
("Историческая литература", "Жанр, в основе которого стоит исторический сюжет."),
("Рыцарская литература", "Представляет собой жанр средневековой литературы, этот жанр появился в Англии, Германии и Франции вместе с рыцарством."),
("Ужасы/Мистика", "Это жанр литературы, имеющий целью вызвать у читателя чувство страха."),
("Любовный роман", "В качестве главной темы во всех этих книг взята тема любви."),
("Детская литература", "Книги предназначены для самых юных читателей.");

---Заполнение талицы AUTHORS---

INSERT INTO `authors` (`author_name`,`product_id`) VALUES 
("Nicholas D. Byers",25),
("Emmanuel P. Cash",9),
("Aileen U. Armstrong",10),
("Ali R. Williams",21),
("Kelly K. Dominguez",2),
("Dylan P. Heath",21),
("Avye G. Herring",9),
("September O. Reed",11),
("Evan C. Wolf",6),
("Jael S. Camacho",30),
("Jasper X. Edwards",18),
("Timon T. Warren",9),
("Clark H. Holcomb",24),
("Bruno I. Herring",30),
("Remedios F. Randall",8),
("Cailin B. Charles",10),
("Deanna I. Clarke",1),
("Daniel E. Salazar",3),
("Leah Z. Kemp",23),
("Moses F. Macias",21),
("Victoria Y. Stewart",30),
("Karly Y. Rios",5),
("Elmo S. Wooten",24),
("Whilemina R. Valencia",6),
("Maile S. Gilliam",24),
("Ira N. Clements",4),
("Tasha C. Holland",26),
("Colby S. Vincent",28),
("Neve X. Lopez",23),
("Jesse U. Sharpe",30);

---Заполнение талицы CATALOGS---

INSERT INTO `catalogs` (`catalog_name`, `catalog_description`) VALUES
("Современная литература", "Шедевры литературы нашего времени."),
("Классическая литература", "Неумирающая классика, лучшая литература своей эпохи."),
("Обучающие книги", "Литература от которой не только получешь удовольствие, но и учишься."),
("Справочники", "Полезные сборники с нужной информации."),
("Учебники", "Необходимая литература для школы.");

---Заполнение талицы PRODUCTS---

INSERT INTO `products` (`name`,`genre_id`,`author_id`,`description`,`catalog_id`,`price`,`availability`,`orders`) VALUES 
("Arcu",3,1,"In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices",1,201,44,0),
("Maecenas",8,2,"consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.",4,474,40,00),
("Ipsum non",4,3,"aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas,",3,532,42,0),
("A purus",3,4,"leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum",1,368,45,2),
("Tincidunt congue turpis",2,5,"lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero.",1,908,31,0),
("Mus",10,6,"Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla",3,542,20,9),
("Cubilia",8,7,"amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem",3,566,41,0),
("Quisque",8,8,"Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem,",3,964,47,0),
("Vulputate dui",2,9,"posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus",3,570,45,0),
("Egestas rhoncus",3,10,"pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec",5,691,43,1),
("Et, magna",9,11,"Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae",4,959,43,2),
("Semper",6,12,"rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque",4,448,36,3),
("Orci",8,13,"Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum",2,987,36,1),
("Blandit",8,14,"tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec",3,439,7,3),
("Est, vitae",1,15,"dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras",5,340,17,0),
("In molestie",7,16,"urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel,",2,824,49,0),
("Maecenas ornare egestas",6,17,"est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam",3,987,36,0),
("Massa",1,18,"parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed",5,835,24,1),
("Egestas",1,19,"risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi.",4,923,24,3),
("Massa rutrum",10,20,"pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada",4,755,6,3),
("Quisque porttitor eros",8,21,"elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem.",1,552,5,4),
("Elit pede, malesuada",8,22,"cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim.",1,531,28,0),
("Metus",4,23,"Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus",5,703,29,1),
("Vitae, aliquet nec",2,24,"lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per",2,262,2,2),
("Sed dictum",7,25,"neque. In ornare sagittis felis. Donec tempor, est ac mattis",3,844,17,0),
("Gravida",6,26,"sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu",4,430,31,0),
("Vitae",8,27,"facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa.",2,865,36,0),
("Nec",4,28,"condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque",4,990,8,4),
("Pellentesque ut ipsum",7,29,"faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis",2,975,1,0),
("Sit amet ante",3,30,"enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor",3,917,20,0);

---Заполнение талицы LIST_ORDERS---

INSERT INTO `list_orders` (`user_id`, `product_name`, `count_product`) VALUES
(22, "Mus", 2),
(8, "Orci", 1),
(25, "Semper", 3),
(25, "Mus", 2),
(26, "Blandit", 3),
(27, "Nec", 4),
(27, "Massa", 1),
(27, "Egestas", 3),
(27, "A purus", 2),
(10, "Et, magna", 2),
(26, "Quisque porttitor eros", 1),
(23, "Quisque porttitor eros", 2),
(23, "Mus", 3),
(16, "Mus", 1),
(16, "Egestas rhoncus", 1),
(16, "Quisque porttitor eros", 1),
(26, "Vitae, aliquet nec", 2),
(26, "Massa rutrum", 3),
(26, "Metus", 1),
(26, "Mus", 1);

---Заполнение талицы ORDERS---

INSERT INTO `orders` (`user_id`,`count`,`value`) VALUES
(22,2,1084),
(8,1,987),
(25,5,2428),
(26,3,1317),
(27,10,8300),
(10,2,1918),
(26,1,552),
(23,5,2730),
(16,3,1785),
(26,7,4034);

INSERT INTO `orders` (`user_id`,`count`,`value`) VALUES
(22,2,1084),
(8,1,987),
(25,5,2428),
(26,3,1317),
(27,10,8300),
(10,2,1918),
(26,1,552),
(23,5,2730),
(16,3,1785),
(26,7,4034);

---Заполнение талицы GENRE_LIKES---

INSERT INTO `genre_likes` (`user_id`,`like_genre`) VALUES 
(10,6),
(5,4),
(6,1),
(3,6),
(6,5),
(15,5),
(20,4),
(7,2),
(9,2),
(20,9),
(17,2),
(27,2),
(14,6),
(16,1),
(15,10),
(8,4),
(13,8),
(29,5),
(14,8),
(23,1),
(22,4),
(22,2),
(11,10),
(3,9),
(30,3),
(10,10),
(22,3),
(1,8),
(9,8),
(20,1);

---Заполнение талицы AVAILABILITY---

INSERT INTO `availability` (`products_id`, `number_of_goods`) VALUES
(1, 44),
(2, 40),
(3, 42),
(4, 45),
(5, 31),
(6, 20),
(7, 41),
(8, 47),
(9, 45),
(10, 43),
(11, 43),
(12, 36),
(13, 36),
(14, 7),
(15, 17),
(16, 49),
(17, 36),
(18, 24),
(19, 24),
(20, 6),
(21, 5),
(22, 28),
(23, 29),
(24, 2),
(25, 17),
(26, 31),
(27, 36),
(28, 8),
(29, 1),
(30, 20);



