/*
  Warnings:

  - You are about to drop the `senso` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `sensores` table. If the table is not empty, all the data it contains will be lost.

*/
-- AlterTable
ALTER TABLE "sensor" ADD COLUMN     "creat_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- DropTable
DROP TABLE "senso";

-- DropTable
DROP TABLE "sensores";
