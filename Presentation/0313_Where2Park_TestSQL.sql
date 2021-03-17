insert into RESERVATION (rsv_id, parker_id, parking_id, rsv_price, rsv_intime, rsv_outtime, rsv_datetime, rsv_states)
 values (50001, 15602, 46120, 3884, '2021-04-11 12:00:00', '2021-04-13 10:00:00','2021-03-02 10:00:00', 0);
 
delete from RESERVATION where rsv_id = 50001;
delete from REVIEW where review_id = 80000;