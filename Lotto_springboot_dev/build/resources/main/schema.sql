CREATE TABLE Member (
                       id INT PRIMARY KEY AUTO_INCREMENT,
                       nickname VARCHAR(50) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       password VARCHAR(100) NOT NULL ,
                       authority VARCHAR(20) ,
                       registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                       last_login TIMESTAMP,
                       is_active BOOLEAN DEFAULT TRUE
);

commit;

INSERT INTO Member (nickname, email, password, authority, last_login)
VALUES ('john_doe', 'token-test@test.com', 'hashed_password_123','ROLE_ADMIN', CURRENT_TIMESTAMP);

INSERT INTO Member (nickname, email, password, authority, last_login)
VALUES ('jane_smith', 'jane@example.com', 'hashed_password_456','ROLE_ADMIN', CURRENT_TIMESTAMP);

INSERT INTO Member (nickname, email, password, authority, last_login)
VALUES ('dlckd', 'dlckd125@nate.com', 'MTIzNA==','ROLE_ADMIN', CURRENT_TIMESTAMP);

commit;