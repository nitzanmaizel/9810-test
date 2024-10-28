#!/bin/bash
# Ensure backend config directory exists
mkdir -p backend/src/middleware

echo "Creating middleware index file..."

# Create index.ts file with content
cat <<EOL > backend/src/middleware/index.ts
import cors from './cors';
import { authenticateJWT } from './authenticateJWT';
import { refreshTokenMiddleware } from './refreshToken';

export { cors, refreshTokenMiddleware, authenticateJWT };
EOL