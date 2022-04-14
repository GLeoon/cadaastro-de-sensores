-- CreateTable
CREATE TABLE "senso" (
    "id" SERIAL NOT NULL,
    "tamanho" VARCHAR(10),
    "tensão_bat" DECIMAL(2,2),
    "marca" CHAR(3),
    "tipo" TEXT
);

-- CreateTable
CREATE TABLE "sensor" (
    "id" SERIAL NOT NULL,
    "tamanho" VARCHAR(10),
    "tensão_bat" DECIMAL(4,1),
    "marca" CHAR(3),
    "tipo" TEXT
);

-- CreateTable
CREATE TABLE "sensores" (
    "id" SERIAL NOT NULL,
    "nome" VARCHAR(255),
    "tamanho" DECIMAL(1,1),
    "tensão_bat" DECIMAL(1,1),
    "marca" CHAR(3),
    "tipo" TEXT
);
