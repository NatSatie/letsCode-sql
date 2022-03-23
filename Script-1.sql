CREATE TABLE "cliente" (
  "id" int UNIQUE PRIMARY KEY NOT NULL,
  "document" int UNIQUE NOT NULL,
  "name" varchar NOT NULL,
  "birth_date" date NOT NULL,
  "email" varchar NOT NULL
);

CREATE TABLE "dependente" (
  "id_dependente" int UNIQUE PRIMARY KEY NOT NULL,
  "id_associado" int NOT NULL
);

CREATE TABLE "contrato" (
  "id" int UNIQUE PRIMARY KEY NOT NULL,
  "id_segurado" int NOT NULL,
  "start_date" date NOT NULL,
  "produto" int NOT NULL
);

CREATE TABLE "produto" (
  "id" int UNIQUE PRIMARY KEY NOT NULL,
  "ans_code" int NOT NULL,
  "description" varchar NOT NULL,
  "value" money NOT NULL
);

ALTER TABLE "dependente" ADD FOREIGN KEY ("id_dependente") REFERENCES "cliente" ("id");

ALTER TABLE "dependente" ADD FOREIGN KEY ("id_associado") REFERENCES "cliente" ("id");

ALTER TABLE "contrato" ADD FOREIGN KEY ("id_segurado") REFERENCES "cliente" ("id");

ALTER TABLE "produto" ADD FOREIGN KEY ("id") REFERENCES "contrato" ("produto");
