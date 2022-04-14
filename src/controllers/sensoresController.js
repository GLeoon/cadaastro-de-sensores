import { prisma } from "../databases/prismaClient.js";

export class GetSensoresController{
    async handle(req, res){
        const sensores = await prisma.sensoresGroup.findMany();
        return res.json(sensores);
    }
}