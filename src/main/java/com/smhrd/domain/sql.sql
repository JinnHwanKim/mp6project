create table board
(
   idx int not null auto_increment,
   title varchar(100) not null,
   writer varchar(100) not null,
   content varchar(2000) not null,
   indate datetime default now(),
   count int default 0,
   
   primary key(idx)
);
--mysql
insert into board(title, writer, content)
values('스프링 게시판','김진환','즐거운 게시판 만들기!');
--먼저 실행시키고 해야한다.--
delete from board;
-----------------------

-- 오라클 시퀀스초기화 개념 : 번호 초기화
--ALTER TABLE 테이블 이름 AUTO_INCREMENT=변경할 숫자;
ALTER TABLE board AUTO_INCREMENT=0;
--oracle

/*
insert into board(idx,title, writer, content)
values(board_seq.nextval,'스프링 게시판','김진환','즐거운 게시판 만들기!');
*/

--update
update board set title='안녕하세요', writer='김진환', content='안녕하세요'
where idx=7;

update board set count = count +1 where idx = 8;

create table members
(
   id varchar(100) not null,
   pw varchar(100) not null,
   name varchar(100) not null,
   age int not null,
   gender varchar(100) not null,
   joindate datetime default now(),
   
   primary key(id)
);

insert into members(id, pw, name, age, gender) values('test', '1234', 'test', '30', 'M')

select * from members


CREATE TABLE tbl_book
(
    `num`      INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '번호', 
    `title`    VARCHAR(50)     NOT NULL    COMMENT '제목', 
    `author`   VARCHAR(30)     NOT NULL    COMMENT '작가', 
    `company`  VARCHAR(50)     NOT NULL    COMMENT '출판사', 
    `isbn`     VARCHAR(30)     NOT NULL    COMMENT 'ISBN', 
    `count`    INT UNSIGNED    NOT NULL    COMMENT '보유도서수', 
     PRIMARY KEY (num)
);


INSERT INTO tbl_book (title, author, company, isbn, count) VALUES ('해리포터와 아즈카반의 죄수', 'J.K 롤링', '문학수첩', 'isbn 1', 12);
INSERT INTO tbl_book (title, author, company, isbn, count) VALUES ('난중일기', 'author 2', '이순신', '서해문집', 8);
INSERT INTO tbl_book (title, author, company, isbn, count) VALUES ('수학 귀신', 'author 3', '한스 마그누스', '비룡소', 9);
INSERT INTO tbl_book (title, author, company, isbn, count) VALUES ('윌리를 찾아라! ', '마틴 핸드포드', '예꿈', 'isbn 4', 20);
INSERT INTO tbl_book (title, author, company, isbn, count) VALUES ('오세암', ' 정채봉', 'company 5', '창비', 4);

select * from tbl_book;

select * from tbl_book where title like '%'+#{title}+'%';

select title, author, company, isbn, count from tbl_book where title like concat('%','해리포터','%') and author like concat('%','롤링','%');


select * from mm_member;

ALTER TABLE mm_member DROP m_birthdate;

ALTER TABLE mm_member ADD m_yy int;
ALTER TABLE mm_member ADD m_mm int;
ALTER TABLE mm_member ADD m_dd int;

select * from mm_member where m_id = "test5";

DROP TABLE mm_member CASCADE CONSTRAINTS;

select * from mm_member;

CREATE TABLE mm_member
(
    m_id         VARCHAR(20),
    m_pw         VARCHAR(60),
    m_name       VARCHAR(30),
    m_birthdate  DATE,   
    m_gender     CHAR(10),
    m_joindate   DATE,
    m_phone      VARCHAR(20),
    m_yy			int,
    m_mm			int,
    m_dd			int,
    CONSTRAINT M_ID_PK PRIMARY KEY(M_ID)
);



CREATE TABLE mm_analysis
(
    a_seq                    INT UNSIGNED       NOT NULL    AUTO_INCREMENT COMMENT '분석 순번', 
    m_id                     VARCHAR(20)        NULL        COMMENT '회원 아이디', 
    song_info                VARCHAR(300)       NULL        COMMENT '곡 정보', 
    song_genre               VARCHAR(30)        NULL        COMMENT '곡 장르', 
    song_playtime            INT                NULL        COMMENT '곡 길이', 
    chroma_stft_mean         DECIMAL(65, 30)    NULL        COMMENT 'CHROMA_STFT_MEAN', 
    chroma_stft_var          DECIMAL(65, 30)    NULL        COMMENT 'CHROMA_STFT_VAR', 
    rms_mean                 DECIMAL(65, 30)    NULL        COMMENT 'RMS_MEAN', 
    rms_var                  DECIMAL(65, 30)    NULL        COMMENT 'RMS_VAR', 
    spectral_centroid_mean   DECIMAL(65, 30)    NULL        COMMENT 'SPECTRAL_CENROID_MEAN', 
    spectral_cenroid_var     DECIMAL(65, 30)    NULL        COMMENT 'SPECTRAL_CENROID_VAR', 
    spectral_bandwidth_mean  DECIMAL(65, 30)    NULL        COMMENT 'SPECTRAL_BANDWIDTH_MEAN', 
    spectral_bandwidth_var   DECIMAL(65, 30)    NULL        COMMENT 'SPECTRAL_BANDWIDTH_VAR', 
    rolloff_mean             DECIMAL(65, 30)    NULL        COMMENT 'ROLLOFF_MEAN', 
    rolloff_var              DECIMAL(65, 30)    NULL        COMMENT 'ROLLOFF_VAR', 
    zero_crossing_rate_mean  DECIMAL(65, 30)    NULL        COMMENT 'ZERO_CROSSING_RATE_MEAN', 
    zero_crossing_rate_var   DECIMAL(65, 30)    NULL        COMMENT 'ZERO_CROSSING_RATE_VAR', 
    harmony_mean             DECIMAL(65, 30)    NULL        COMMENT 'HARMONY_MEAN', 
    harmony_var              DECIMAL(65, 30)    NULL        COMMENT 'HARMONY_VAR', 
    perceptr_mean            DECIMAL(65, 30)    NULL        COMMENT 'PERCEPTR_MEAN', 
    perceptr_var             DECIMAL(65, 30)    NULL        COMMENT 'PERCEPTR_VAR', 
    tempo                    DECIMAL(65, 30)    NULL        COMMENT 'TEMPO', 
    mfcc1_mean               DECIMAL(65, 30)    NULL        COMMENT 'MFCC1_MEAN', 
    mfcc1_var                DECIMAL(65, 30)    NULL        COMMENT 'MFCC1_VAR', 
    mfcc2_mean               DECIMAL(65, 30)    NULL        COMMENT 'MFCC2_MEAN', 
    mfcc2_var                DECIMAL(65, 30)    NULL        COMMENT 'MFCC2_VAR', 
    mfcc3_mean               DECIMAL(65, 30)    NULL        COMMENT 'MFCC3_MEAN', 
    mfcc3_var                DECIMAL(65, 30)    NULL        COMMENT 'MFCC3_VAR', 
    mfcc4_mean               DECIMAL(65, 30)    NULL        COMMENT 'MFCC4_MEAN', 
    mfcc4_var                DECIMAL(65, 30)    NULL        COMMENT 'MFCC4_VAR', 
    mfcc5_mean               DECIMAL(65, 30)    NULL        COMMENT 'MFCC5_MEAN', 
    mfcc5_var                DECIMAL(65, 30)    NULL        COMMENT 'MFCC5_VAR', 
    mfcc6_mean               DECIMAL(65, 30)    NULL        COMMENT 'MFCC6_MEAN', 
    mfcc6_var                DECIMAL(65, 30)    NULL        COMMENT 'MFCC6_VAR', 
    mfcc7_mean               DECIMAL(65, 30)    NULL        COMMENT 'MFCC7_MEAN', 
    mfcc7_var                DECIMAL(65, 30)    NULL        COMMENT 'MFCC7_VAR', 
    mfcc8_mean               DECIMAL(65, 30)    NULL        COMMENT 'MFCC8_MEAN', 
    mfcc8_var                DECIMAL(65, 30)    NULL        COMMENT 'MFCC8_VAR', 
    mfcc9_mean               DECIMAL(65, 30)    NULL        COMMENT 'MFCC9_MEAN', 
    mfcc9_var                DECIMAL(65, 30)    NULL        COMMENT 'MFCC9_VAR', 
    mfcc10_mean              DECIMAL(65, 30)    NULL        COMMENT 'MFCC10_MEAN', 
    mfcc10_var               DECIMAL(65, 30)    NULL        COMMENT 'MFCC10_VAR', 
    mfcc11_mean              DECIMAL(65, 30)    NULL        COMMENT 'MFCC11_MEAN', 
    mfcc11_var               DECIMAL(65, 30)    NULL        COMMENT 'MFCC11_VAR', 
    mfcc12_mean              DECIMAL(65, 30)    NULL        COMMENT 'MFCC12_MEAN', 
    mfcc12_var               DECIMAL(65, 30)    NULL        COMMENT 'MFCC12_VAR', 
    mfcc13_mean              DECIMAL(65, 30)    NULL        COMMENT 'MFCC13_MEAN', 
    mfcc13_var               DECIMAL(65, 30)    NULL        COMMENT 'MFCC13_VAR', 
    mfcc14_mean              DECIMAL(65, 30)    NULL        COMMENT 'MFCC14_MEAN', 
    mfcc14_var               DECIMAL(65, 30)    NULL        COMMENT 'MFCC14_VAR', 
    mfcc15_mean              DECIMAL(65, 30)    NULL        COMMENT 'MFCC15_MEAN', 
    mfcc15_var               DECIMAL(65, 30)    NULL        COMMENT 'MFCC15_VAR', 
    mfcc16_mean              DECIMAL(65, 30)    NULL        COMMENT 'MFCC16_MEAN', 
    mfcc16_var               DECIMAL(65, 30)    NULL        COMMENT 'MFCC16_VAR', 
    mfcc17_mean              DECIMAL(65, 30)    NULL        COMMENT 'MFCC17_MEAN', 
    mfcc17_var               DECIMAL(65, 30)    NULL        COMMENT 'MFCC17_VAR', 
    mfcc18_mean              DECIMAL(65, 30)    NULL        COMMENT 'MFCC18_MEAN', 
    mfcc18_var               DECIMAL(65, 30)    NULL        COMMENT 'MFCC18_VAR', 
    mfcc19_mean              DECIMAL(65, 30)    NULL        COMMENT 'MFCC19_MEAN', 
    mfcc19_var               DECIMAL(65, 30)    NULL        COMMENT 'MFCC19_VAR', 
    mfcc20_mean              DECIMAL(65, 30)    NULL        COMMENT 'MFCC20_MEAN', 
    mfcc20_var               DECIMAL(65, 30)    NULL        COMMENT 'MFCC20_VAR', 
     PRIMARY KEY (a_seq)
);

ALTER TABLE mm_analysis COMMENT '곡 분석 정보 테이블';

ALTER TABLE mm_analysis
    ADD CONSTRAINT FK_mm_analysis_m_id_mm_member_m_id FOREIGN KEY (m_id)
        REFERENCES mm_member (m_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

select * from mm_analysis;

delete from mm_analysis where a_seq = '5706';

delete from mm_analysis where m_id = 'result';

select * from mm_analysis;
select * from mm_result;
select * from mm_member;

alter table mm_result change result_score result_score DECIMAL(18,16);
alter table mm_result change song_num song_num varchar(100);