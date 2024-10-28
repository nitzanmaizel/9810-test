import { Router } from "express";
import authRoute from "./auth";
import sheetsRoute from "./sheets";
import { authenticateJWT, refreshTokenMiddleware } from "../middleware";

const router = Router();

router.use("/auth", authRoute);
router.use(authenticateJWT, refreshTokenMiddleware);
router.use("/sheet", sheetsRoute);

export default router;
