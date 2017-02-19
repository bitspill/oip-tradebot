CREATE TABLE sendreceivemap (
    id INTEGER NOT NULL AUTO_INCREMENT,
    currencyA VARCHAR(10),
    addressA VARCHAR(64),
    currencyB VARCHAR(10),
    addressB VARCHAR(64));

CREATE TABLE receive (
    id INTEGER NOT NULL AUTO_INCREMENT,
    currencyA VARCHAR(10),
    addressA VARCHAR(64),
    amount DECIMAL(16,8),
    confirmations INT,
    txid VARCHAR(128),
    blockhash VARCHAR(128),
    processed BOOLEAN);

CREATE TABLE action (
    id INTEGER NOT NULL AUTO_INCREMENT,
    txidreceive VARCHAR(128),
    txidsend VARCHAR(128),
    status VARCHAR(128),
    action VARCHAR(128));

CREATE TABLE faucet (
    id          INTEGER NOT NULL AUTO_INCREMENT,
    flo_address VARCHAR(64),
    remote_addr VARCHAR(64),
    date_today  CHAR(10),
    txid_send   VARCHAR(128)
);