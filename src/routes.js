import {Router} from "express";
import { GetSensoresController } from "./controllers/sensoresController.js";
import { FindSensorController } from "./controllers/findSensorController.js"
import { CreateSensoController } from "./controllers/createSensorController.js"

const router = Router();

const findSensor = new FindSensorController();
const getSensores = new GetSensoresController();
const createSensor = new CreateSensoController();

router.get("/sensores/:id", findSensor.handle);
router.get("/", getSensores.handle);

router.post("/sensores", createSensor.handle);

export { router };