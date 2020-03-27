SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS address;
DROP TABLE IF EXISTS orderitem;
DROP TABLE IF EXISTS cart;
DROP TABLE IF EXISTS pick_up;
DROP TABLE IF EXISTS review;
DROP TABLE IF EXISTS whousing;
DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS orderlist;
DROP TABLE IF EXISTS point;
DROP TABLE IF EXISTS qnaboard;
DROP TABLE IF EXISTS member;
DROP TABLE IF EXISTS storeinfo;




/* Create Tables */

CREATE TABLE address
(
	address_code int NOT NULL,
	userid varchar(40) NOT NULL,
	address varchar(100),
	restaddress varchar(30),
	PRIMARY KEY (address_code)
);


CREATE TABLE cart
(
	itemnum int NOT NULL,
	userid varchar(40) NOT NULL,
	quantity int NOT NULL,
	price int NOT NULL,
	PRIMARY KEY (itemnum, userid)
);


CREATE TABLE item
(
	itemnum int NOT NULL,
	boardnum int NOT NULL,
	itemname varchar(20) NOT NULL,
	price int NOT NULL,
	itemfile1 varchar(20) NOT NULL,
	itemfile2 varchar(20) NOT NULL,
	itemfile3 varchar(20) DEFAULT '' NOT NULL,
	itemcontent mediumtext NOT NULL,
	itemcontent2 mediumtext NOT NULL,
	category int NOT NULL,
	subcategory int NOT NULL,
	character_c int NOT NULL,
	regdate datetime NOT NULL,
	PRIMARY KEY (itemnum)
);


CREATE TABLE member
(
	account varchar(20),
	userid varchar(40) NOT NULL,
	username varchar(20) NOT NULL,
	phonenum varchar(15),
	password varchar(150) NOT NULL,
	member_code int,
	access int,
	PRIMARY KEY (userid)
);


CREATE TABLE orderitem
(
	itemnum int NOT NULL,
	orderno varchar(20) NOT NULL,
	quantity int NOT NULL,
	price int NOT NULL,
	userid varchar(40) NOT NULL,
	PRIMARY KEY (itemnum, orderno)
);


CREATE TABLE orderlist
(
	orderno varchar(20) NOT NULL,
	userid varchar(40) NOT NULL,
	datepay datetime NOT NULL,
	payname varchar(20) NOT NULL,
	address varchar(100) NOT NULL,
	restaddress varchar(30) NOT NULL,
	phonenum varchar(15) NOT NULL,
	username varchar(20) NOT NULL,
	orderdate datetime NOT NULL,
	orderstate varchar(10) NOT NULL,
	usepoint int,
	selectpay varchar(20) NOT NULL,
	PRIMARY KEY (orderno)
);


CREATE TABLE pick_up
(
	itemnum int NOT NULL,
	userid varchar(40) NOT NULL,
	upcnt int,
	putype int,
	PRIMARY KEY (itemnum, userid)
);


CREATE TABLE point
(
	userid varchar(40) NOT NULL,
	pointnum int NOT NULL,
	point int NOT NULL,
	pointtext varchar(30),
	PRIMARY KEY (userid, pointnum)
);


CREATE TABLE qnaboard
(
	qnano int NOT NULL AUTO_INCREMENT,
	userid varchar(40) NOT NULL,
	filter int,
	qnasubject varbinary(50) NOT NULL,
	qcontent varchar(100) NOT NULL,
	aconent varchar(100),
	qnafile1 varchar(20),
	checkin int,
	PRIMARY KEY (qnano, userid)
);


CREATE TABLE review
(
	userid varchar(40) NOT NULL,
	itemnum int NOT NULL,
	reviewno int NOT NULL,
	reviewcontent mediumtext NOT NULL,
	itemavg double NOT NULL,
	reviewdate datetime NOT NULL,
	PRIMARY KEY (userid, itemnum)
);


CREATE TABLE storeinfo
(
	storeno  int NOT NULL AUTO_INCREMENT,
	storename varchar(30),
	storetel varchar(20),
	storetime varchar(20),
	storeadd varchar(50),
	storepic varchar(20),
	mapurl varchar(1000),
	mapiframe varchar(1000),
	PRIMARY KEY (storeno )
);


CREATE TABLE whousing
(
	whowsingnum int NOT NULL AUTO_INCREMENT,
	itemnum int NOT NULL,
	whowsingquant int NOT NULL,
	whowsingprice longblob NOT NULL,
	whousing_code int NOT NULL,
	whousing_date datetime NOT NULL,
	PRIMARY KEY (whowsingnum)
);



/* Create Foreign Keys */

ALTER TABLE orderitem
	ADD FOREIGN KEY (itemnum, userid)
	REFERENCES cart (itemnum, userid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE cart
	ADD FOREIGN KEY (itemnum)
	REFERENCES item (itemnum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE pick_up
	ADD FOREIGN KEY (itemnum)
	REFERENCES item (itemnum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE review
	ADD FOREIGN KEY (itemnum)
	REFERENCES item (itemnum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE whousing
	ADD FOREIGN KEY (itemnum)
	REFERENCES item (itemnum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE address
	ADD FOREIGN KEY (userid)
	REFERENCES member (userid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE cart
	ADD FOREIGN KEY (userid)
	REFERENCES member (userid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE orderlist
	ADD FOREIGN KEY (userid)
	REFERENCES member (userid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE pick_up
	ADD FOREIGN KEY (userid)
	REFERENCES member (userid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE point
	ADD FOREIGN KEY (userid)
	REFERENCES member (userid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE qnaboard
	ADD FOREIGN KEY (userid)
	REFERENCES member (userid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE orderitem
	ADD FOREIGN KEY (orderno)
	REFERENCES orderlist (orderno)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



