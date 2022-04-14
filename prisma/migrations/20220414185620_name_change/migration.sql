/*
  Warnings:

  - You are about to drop the `Grupo_de_Sensores` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Grupo_de_Sensores";

-- CreateTable
CREATE TABLE "sensores" (
    "id" TEXT NOT NULL,
    "tamanho" VARCHAR(10),
    "tensão_bat" DECIMAL(4,1) NOT NULL,
    "marca" CHAR(3) NOT NULL,
    "tipo" TEXT NOT NULL,
    "creat_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "sensores_pkey" PRIMARY KEY ("id")
);
