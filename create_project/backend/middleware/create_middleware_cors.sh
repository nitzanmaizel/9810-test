#!/bin/bash
# Ensure backend config directory exists
mkdir -p backend/src/middleware

echo "Creating middleware cors file..."

# Create cors.ts file with content
cat <<EOL > backend/src/middleware/cors.ts
import cors, { CorsOptions } from 'cors';

const corsOptions: CorsOptions = {
  optionsSuccessStatus: 200,
  origin: ['http://localhost:3000'],
  methods: ['GET', 'POST', 'PUT', 'DELETE'],
  allowedHeaders: ['Content-Type', 'Authorization', 'credentials'],
  credentials: true,
};

export default cors(corsOptions);
EOL