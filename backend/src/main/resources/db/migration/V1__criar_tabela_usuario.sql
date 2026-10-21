CREATE TABLE usuario (
                         id            BIGINT       NOT NULL AUTO_INCREMENT,
                         nome          VARCHAR(120) NOT NULL,
                         email         VARCHAR(160) NOT NULL,
                         senha_hash    VARCHAR(100) NOT NULL,
                         criado_em     DATETIME(6)  NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
                         atualizado_em DATETIME(6)  NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
                               ON UPDATE CURRENT_TIMESTAMP(6),
                         PRIMARY KEY (id),
                         CONSTRAINT uk_usuario_email UNIQUE (email)
) ENGINE=InnoDB;