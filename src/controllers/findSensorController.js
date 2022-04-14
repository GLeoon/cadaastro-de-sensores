import { prisma } from "../databases/prismaClient.js";

export class FindSensorController {
  async handle(req, res) {
    const { id } = req.params;
    console.log(id);
    const sensor = await prisma.sensoresGroup.findFirst({
      where: {
        id,
      },
    });

    return res.json(sensor);
  }
}