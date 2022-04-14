import { prisma } from "../databases/prismaClient.js";


export class CreateSensoController{
    async handle(req, res){

        const { tamanho, tens_o_bat, marca, tipo } = req.body
        const result = await prisma.sensoresGroup.create({
            data: {
                tamanho,
                tens_o_bat,
                marca,
                tipo,
            },
        })
        res.json(result)
    }
}