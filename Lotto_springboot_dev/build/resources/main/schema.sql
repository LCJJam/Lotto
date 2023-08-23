CREATE TABLE Member (
                       id INT PRIMARY KEY AUTO_INCREMENT,
                       nickname VARCHAR(50) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       password_hash VARCHAR(100) NOT NULL,
                       registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                       last_login TIMESTAMP,
                       is_active BOOLEAN DEFAULT TRUE
);

commit;

INSERT INTO Member (nickname, email, password_hash, last_login)
VALUES ('john_doe', 'token-test@test.com', 'hashed_password_123', CURRENT_TIMESTAMP);

INSERT INTO Member (nickname, email, password_hash, last_login)
VALUES ('jane_smith', 'jane@example.com', 'hashed_password_456', CURRENT_TIMESTAMP);

commit;