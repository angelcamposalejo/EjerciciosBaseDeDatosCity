CREATE DATABASE city_bank;
USE city_bank;
CREATE TABLE friend (
    friend_id INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(60) NOT NULL,
    brith_date DATE NOT NULL,
    ssn VARCHAR(20) NOT NULL
);
CREATE TABLE client (
    client_id INT(10) NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    addres VARCHAR(60) NOT NULL,
    type VARCHAR(10) NOT NULL
);
CREATE TABLE brach (
    branch_id INT(10) NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(60) NOT NULL,
    manager_id INT(10) NOT NULL
);
CREATE TABLE account (
    account_id INT(10) NOT NULL PRIMARY KEY,
    balance DOUBLE NOT NULL,
    type VARCHAR(10) NOT NULL,
    branch_id INT(10) NOT NULL,
    FOREIGN KEY (branch_id)
        REFERENCES brach (branch_id)
);
CREATE TABLE client_account (
    client_id INT(10) NOT NULL PRIMARY KEY,
    account_id INT(10) NOT NULL,
    FOREIGN KEY (client_id)
        REFERENCES client (client_id),
    FOREIGN KEY (account_id)
        REFERENCES account (account_id)
);
