DROP TABLE IF EXISTS user;

CREATE TABLE user
(
    id INTEGER(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(64) NOT NULL,
    password VARCHAR(64) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
    PRIMARY KEY (id)
)
