-- User Table Create SQL
CREATE TABLE User
(
    `user_id`        INT             NOT NULL    AUTO_INCREMENT COMMENT 'user_id', 
    `user_email`     VARCHAR(50)     NOT NULL    COMMENT 'user_email', 
    `user_password`  VARCHAR(30)     NOT NULL    COMMENT 'user_password', 
    `user_nickname`  VARCHAR(10)     NOT NULL    COMMENT 'user_nickname', 
    `user_phone`     VARCHAR(15)     NOT NULL    COMMENT 'user_pparkingboardcarinfohone', 
    `user_pic`       VARCHAR(100)    NOT NULL    COMMENT 'user_pic', 
    PRIMARY KEY (user_id)
);

ALTER TABLE User COMMENT '회원';

ALTER TABLE User AUTO_INCREMENT=10000;



-- User Table Create SQL
CREATE TABLE ParkingBoard
(
    `parking_id`        INT             NOT NULL    AUTO_INCREMENT COMMENT 'parking_id', 
    `owner_id`          INT             NOT NULL    COMMENT 'owner_id', 
    `parking_type`      VARCHAR(2)      NOT NULL    COMMENT 'parking_type', 
    `parking_title`     VARCHAR(45)     NOT NULL    COMMENT 'parking_title', 
    `parking_content`   VARCHAR(500)    NOT NULL    COMMENT 'parking_content', 
    `parking_pic`       VARCHAR(100)    NOT NULL    COMMENT 'parking_pic', 
    `parking_location`  VARCHAR(100)    NOT NULL    COMMENT 'parking_location', 
    `parking_cartype`   VARCHAR(45)     NOT NULL    COMMENT 'parking_cartype', 
    `parking_price`     INT     NOT NULL    COMMENT 'parking_price', 
    `parking_intime`    DATETIME        NOT NULL    COMMENT 'parking_intime', 
    `parking_outtime`   DATETIME        NOT NULL    COMMENT 'parking_outtime', 
    `parking_deleted`   INT             NOT NULL    COMMENT 'parking_deleted', 
    PRIMARY KEY (parking_id)
);

ALTER TABLE ParkingBoard COMMENT '주차장 등록 글';

ALTER TABLE ParkingBoard AUTO_INCREMENT=30000;

ALTER TABLE ParkingBoard
    ADD CONSTRAINT FK_ParkingBoard_owner_id_User_user_id FOREIGN KEY (owner_id)
        REFERENCES User (user_id) ON DELETE CASCADE;


-- User Table Create SQL
CREATE TABLE Reservation
(
    `rsv_id`       INT            NOT NULL    AUTO_INCREMENT COMMENT 'rsv_id', 
    `parker_id`    INT            NOT NULL    COMMENT 'parker_id', 
    `parking_id`   INT            NOT NULL    COMMENT 'parking_id', 
    `rsv_price`    INT    NOT NULL    COMMENT 'rsv_price', 
    `rsv_intime`   DATETIME       NOT NULL    COMMENT 'rsv_intime', 
    `rsv_outtime`  DATETIME       NOT NULL   COMMENT 'rsv_outtime', 
    `rsv_datetime`  DATETIME    NOT NULL    COMMENT 'rsv_datetime', 
    `rsv_states`   INT            NOT NULL    COMMENT 'rsv_states', 
    PRIMARY KEY (rsv_id)
);

ALTER TABLE Reservation COMMENT '예약정보';

ALTER TABLE Reservation AUTO_INCREMENT=50000;


ALTER TABLE Reservation
    ADD CONSTRAINT FK_Reservation_parker_id_User_user_id FOREIGN KEY (parker_id)
        REFERENCES User (user_id)  ON DELETE CASCADE;
        
ALTER TABLE Reservation
    ADD CONSTRAINT FK_Reservation_parking_id_ParkingBoard_parking_id FOREIGN KEY (parking_id)
        REFERENCES ParkingBoard (parking_id)  ON DELETE CASCADE;
        


-- User Table Create SQL
CREATE TABLE ChatRoom
(
    `chatroom_id`        INT         NOT NULL    AUTO_INCREMENT COMMENT 'chatroom_id', 
    `rsv_id`             INT         NOT NULL    COMMENT 'rsv_id', 
    `parker_id`          INT         NOT NULL    COMMENT 'parker_id', 
    `chatroom_datetime`  DATETIME  DEFAULT CURRENT_TIMESTAMP  NOT NULL    COMMENT 'chatroom_datetime', 
    PRIMARY KEY (chatroom_id)
);

ALTER TABLE ChatRoom COMMENT '채팅방';

ALTER TABLE ChatRoom AUTO_INCREMENT=90000;

ALTER TABLE ChatRoom
    ADD CONSTRAINT FK_reservation_rsv_id FOREIGN KEY (rsv_id)
        REFERENCES Reservation (rsv_id)  ON DELETE CASCADE;

ALTER TABLE ChatRoom
    ADD CONSTRAINT FK_reservation_parker_id FOREIGN KEY (parker_id)
        REFERENCES Reservation (parker_id)  ON DELETE CASCADE;

-- User Table Create SQL
CREATE TABLE CarInfo
(
    `user_id`       INT            NOT NULL    COMMENT 'user_id', 
    `car_num`       VARCHAR(10)    NOT NULL    COMMENT 'car_num', 
    `car_type`      VARCHAR(45)    NOT NULL    COMMENT 'car_type', 
    `car_location`  VARCHAR(5)     NOT NULL    COMMENT 'car_location', 
    PRIMARY KEY (user_id)
);

ALTER TABLE CarInfo COMMENT '회원 차 정보';

ALTER TABLE CarInfo
    ADD CONSTRAINT FK_CarInfo_user_id_User_user_id FOREIGN KEY (user_id)
        REFERENCES User (user_id)  ON DELETE CASCADE;


-- User Table Create SQL
CREATE TABLE WishList
(
    `wish_id`     INT    NOT NULL    AUTO_INCREMENT COMMENT 'wish_id', 
    `user_id`     INT    NOT NULL    COMMENT 'user_id', 
    `parking_id`  INT    NOT NULL    COMMENT 'parking_id', 
    PRIMARY KEY (wish_id)
);

ALTER TABLE WishList COMMENT '찜하기';

ALTER TABLE WishList AUTO_INCREMENT=70000;

ALTER TABLE WishList
    ADD CONSTRAINT FK_WishList_user_id_User_user_id FOREIGN KEY (user_id)
        REFERENCES User (user_id)  ON DELETE CASCADE;

ALTER TABLE WishList
    ADD CONSTRAINT FK_WishList_parking_id_ParkingBoard_parking_id FOREIGN KEY (parking_id)
        REFERENCES ParkingBoard (parking_id) ON DELETE CASCADE;


-- User Table Create SQL
CREATE TABLE Review
(
    `review_id`       INT             NOT NULL    AUTO_INCREMENT COMMENT 'review_id', 
    `user_id`         INT             NOT NULL    COMMENT 'user_id', 
    `rsv_id`          INT             NOT NULL    COMMENT 'rsv_id', 
    `review_date`     DATE            NOT NULL    COMMENT 'review_date', 
    `review_content`  VARCHAR(500)    NOT NULL    COMMENT 'review_content', 
    `review_rating`   INT             NOT NULL    COMMENT 'review_rating', 
    PRIMARY KEY (review_id)
);

ALTER TABLE Review COMMENT '리뷰';

ALTER TABLE Review AUTO_INCREMENT=80000;

ALTER TABLE Review
    ADD CONSTRAINT FK_Review_user_id_User_user_id FOREIGN KEY (user_id)
        REFERENCES User (user_id)  ON DELETE CASCADE;

ALTER TABLE Review
    ADD CONSTRAINT FK_Review_rsv_id_Reservation_rsv_id FOREIGN KEY (rsv_id)
        REFERENCES Reservation (rsv_id)  ON DELETE CASCADE;


-- User Table Create SQL
CREATE TABLE Notification
(
    `not_id`             INT             NOT NULL    AUTO_INCREMENT COMMENT 'not_id', 
    `user_id`            INT             NOT NULL    COMMENT 'user_id', 
    `parking_id`         INT             NOT NULL    COMMENT 'parking_id', 
    `not_type`           VARCHAR(45)     NOT NULL    COMMENT 'not_type', 
    `not_message`        VARCHAR(200)    NOT NULL    COMMENT 'not_message', 
    `not_url`            VARCHAR(100)    NOT NULL    COMMENT 'not_url', 
    `not_datetime`       DATETIME        NOT NULL    COMMENT 'not_datetime', 
    `not_read_datetime`  DATETIME        NULL        COMMENT 'not_read_datetime', 
    PRIMARY KEY (not_id)
);

ALTER TABLE Notification COMMENT '알림';

ALTER TABLE Notification AUTO_INCREMENT=200000;

ALTER TABLE Notification
    ADD CONSTRAINT FK_Notification_parking_id_Reservation_parking_id FOREIGN KEY (parking_id)
        REFERENCES Reservation (parking_id)  ON DELETE CASCADE;

ALTER TABLE Notification
    ADD CONSTRAINT FK_Notification_user_id_User_user_id FOREIGN KEY (user_id)
        REFERENCES User (user_id)  ON DELETE CASCADE;


-- User Table Create SQL
CREATE TABLE ChatMassages
(
    `message_id`             INT             NOT NULL    AUTO_INCREMENT COMMENT 'message_id', 
    `chatroom_id`            INT             NOT NULL    COMMENT 'chatroom_id', 
    `user_id`                INT             NOT NULL    COMMENT 'user_id', 
    `message_content`        VARCHAR(300)    NOT NULL    COMMENT 'message_content', 
    `message_datetime`       DATETIME        NOT NULL    COMMENT 'message_datetime', 
    `message_read_datetime`  DATETIME        NULL        COMMENT 'message_read_datetime', 
    PRIMARY KEY (message_id)
);

ALTER TABLE ChatMassages AUTO_INCREMENT=100000;