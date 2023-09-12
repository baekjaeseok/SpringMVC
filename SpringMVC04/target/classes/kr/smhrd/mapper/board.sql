CREATE TABLE reply(
	num int not null auto_increment, -- 자동 증가
	username varchar(255) not null, -- 사용자 아이디
	title varchar(100) not null,
	content varchar(2000) not null,
	writer varchar(100) not null,
	indate datetime default now(), -- now() --> sysdate
	count int default 0,
	-- 답변형 게시판
	bgroup int, -- 원글과 답글을 하나로 묶는 역할, 0 1 2 3 : 
	bseq int, -- 답글의 순서(asc)(0, 1, 2 ~)
	blevel int, -- 답글의 들여쓰기(0, 1, 2 ~)
	bdelete int default 0, -- 0(정상글), 1(삭제된 글)
	primary key(num)
);

CREATE TABLE member(
	idx int auto_increment primary key, -- 자동 증가
	username varchar(255) not null unique,
	password varchar(255) not null,
	name varchar(255) not null,
	email varchar(255) not null
);

SELECT * FROM member;
SELECT max(bgroup) FROM reply; -- null(0)
SELECT IFNULL(max(bgroup)+1, 0) AS bgroup FROM reply;
SELECT * FROM reply;
SELECT * FROM board;