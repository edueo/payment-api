CREATE SCHEMA IF NOT EXISTS "PAYMENTS" AUTHORIZATION "SA";

CREATE CACHED TABLE "PAYMENTS"."PAYMENTS"(
    "TICKET" VARCHAR(60) NOT NULL,
    "CLIENT_ID" INTEGER NOT NULL,
    "STATUS" SMALLINT NOT NULL,
    "BUYER_NAME" VARCHAR(150) NOT NULL,
    "BUYER_EMAIL" VARCHAR(100) NOT NULL,
    "BUYER_CPF" VARCHAR(11) NOT NULL,
    "AMOUNT" DECIMAL(11) NOT NULL,
    "TYPE" SMALLINT NOT NULL,
    "BOLETO_NUM" VARCHAR(60),
    "CARD_HOLDER" VARCHAR(150),
    "CARD_NUMBER" VARCHAR(20),
    "CARD_EXPIRATION" TIMESTAMP
);

ALTER TABLE "PAYMENTS"."PAYMENTS" ADD CONSTRAINT "PAYMENTS"."CONSTRAINT_8" PRIMARY KEY("TICKET");