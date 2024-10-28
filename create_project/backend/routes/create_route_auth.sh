#!/bin/bash
# Ensure backend config directory exists
mkdir -p backend/src/routes

echo "Creating routes auth file..."

# Create auth.ts file with content
cat <<EOL > backend/src/routes/auth.ts
import express from 'express';
import { getProfile, googleCallback, login } from '../controllers/authControllers';
import { authenticateJWT, refreshTokenMiddleware } from '../middleware';

const router = express.Router();

router.get('/login', login);
router.get('/oauth2callback', googleCallback);

router.use(authenticateJWT, refreshTokenMiddleware);
router.get('/user', getProfile);

export default router;
EOL