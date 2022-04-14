/*
  Warnings:

  - The primary key for the `Grupo_de_Sensores` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE "Grupo_de_Sensores" DROP CONSTRAINT "Grupo_de_Sensores_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Grupo_de_Sensores_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Grupo_de_Sensores_id_seq";
