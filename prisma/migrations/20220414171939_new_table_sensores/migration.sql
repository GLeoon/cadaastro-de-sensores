/*
  Warnings:

  - You are about to drop the `Sensor` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Sensor";

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Grupo_de_Sensores" (
    "id" SERIAL NOT NULL,
    "tamanho" VARCHAR(10),
    "tensão_bat" DECIMAL(4,1) NOT NULL,
    "marca" CHAR(3) NOT NULL,
    "tipo" TEXT NOT NULL,
    "creat_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Grupo_de_Sensores_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
