DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS batches CASCADE;

CREATE TABLE users (
  id            SERIAL PRIMARY KEY,
  address       VARCHAR(42) NOT NULL CHECK (address <> '')
);

CREATE TABLE batches (
  id            INT UNIQUE PRIMARY KEY,
  user_id       INT,
  quantity      INT NOT NULL,
  serialNumber  VARCHAR(100) NOT NULL CHECK (serialNumber <> ''),
  tx            VARCHAR(100) NOT NULL CHECK (tx <> ''),
  CONSTRAINT fk_user
    FOREIGN KEY(user_id)
      REFERENCES users(id)
);

INSERT INTO users (address) VALUES (
  '0xb1ae308795c275e4c238add681a9b2736af82e7a'
);

INSERT INTO batches (id, user_id, quantity, serialNumber, tx)
VALUES (124, 1, 330223, '1538-82392500-82392750-VCS-VCU-262-VER-BR-14-1686-01012018-31122018-1', '0x9f1ff43d7ad4ee9bd11f613b446e21186ec57f1e5125ded0f99300f16f98cea2'),
       (125, 1, 1423, '5381-82392500-82392750-VCS-VCU-262-VER-BR-14-1686-01012018-31122018-1', '0x3b446e2110f16f98cea29f1ff486ec57f1e5125ded0f99303d7ad4ee9bd11f61');
