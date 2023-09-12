CREATE TABLE memboard(
	num int not null auto_increment, -- 자동 증가
	username varchar(255) not null, -- 사용자 아이디
	title varchar(100) not null,
	content varchar(2000) not null,
	writer varchar(100) not null,
	indate datetime default now(), -- now() --> sysdate
	count int default 0,
	primary key(num)
);

-- insert
INSERT INTO board(title,content,writer)
VALUES('스프링게시판','스프링게시판','관리자');
smhrd01 board(title,content,writer)
VALUES('스프링게시판','스프링게시판','백재석');
smhrd01 board(title,content,writer)
VALUES('스프링게시판','스프링게시판','신형만');

CREATE TABLE member(
	idx int auto_increment primary key, -- 자동 증가
	username varchar(255) not null unique,
	password varchar(255) not null,
	name varchar(255) not null,
	email varchar(255) not null
);


-- member insert
INSERT INTO member(username,password,name,email)
VALUES('smhrd01','smhrd01','관리자','smhrd01@naver.com');
INSERT INTO member(username,password,name,email)
VALUES('smhrd02','smhrd02','토토로','smhrd02@naver.com');
INSERT INTO member(username,password,name,email)
values('smhrd03','smhrd03','케로로','smhrd02@naver.com');
INSERT INTO member(username,password,name,email)
VALUES('tomatoraub','1234','백재석','tomatoraub@naver.com');


SELECT * FROM board;
SELECT * FROM member;