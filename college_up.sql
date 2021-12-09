use colleges;
drop table if exists college;
-- CREATE TABLE author (
--   id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   name VARCHAR(100) NOT NULL
-- ) ENGINE = InnoDB;

-- CREATE TABLE book (
--   id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   title VARCHAR(200) NOT NULL,
--   author_id SMALLINT UNSIGNED NOT NULL,
--   CONSTRAINT `fk_book_author`
--     FOREIGN KEY (author_id) REFERENCES author (id)
--     ON DELETE CASCADE
--     ON UPDATE RESTRICT
-- ) ENGINE = InnoDB;

create table college(
    college_id INT NOT NULL AUTO_INCREMENT, 
    name VARCHAR(45),
    city VARCHAR(45), 
    state VARCHAR(45),
    PRIMARY KEY ( college_id )
) ;
drop table if exists cost;
create table cost(
    cost_id INT NOT NULL AUTO_INCREMENT,
    in_state_cost INT,
    out_of_state_cost INT,
    idcollege INT REFERENCES college(college_id),
    PRIMARY KEY (cost_id)
);   
-- ) ENGINE=InnoDB;
-- drop table stats;
-- create 
