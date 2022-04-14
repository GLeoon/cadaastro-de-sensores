import { prisma } from "../databases/prismaClient.js";

export class DeleteSensorController{
    async handle(req,res){
        const { id }= req.params;
        const sensor = await prisma.sensoresGroup.delete({
            where: {
                id,
            },
        });
        return res.json(sensor);
    }
}