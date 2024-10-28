#!/bin/bash
echo "Setting up package.json file..."

# Write new content to package.json
cat <<EOL > backend/package.json
{
  "name": "backend",
  "version": "1.0.0",
  "scripts": {
    "start": "node dist/server.js",
    "build": "tsc",
    "dev": "cross-env NODE_OPTIONS='--max-old-space-size=4096' ts-node-dev src/server.ts"
  },
  "dependencies": {
    "cors": "^2.8.5",
    "dotenv": "^16.4.5",
    "express": "^4.21.1",
    "google-auth-library": "^9.14.2",
    "googleapis": "^144.0.0",
    "jsonwebtoken": "^9.0.2",
    "mongoose": "^8.7.1",
    "mongoose-encryption": "^2.1.2"
  },
  "devDependencies": {
    "@types/cors": "^2.8.17",
    "@types/express": "^5.0.0",
    "@types/jsonwebtoken": "^9.0.7",
    "@types/node": "^22.7.5",
    "nodemon": "^3.1.7",
    "ts-node": "^10.9.2",
    "cross-env": "^7.0.3",
    "ts-node-dev": "^2.0.0",
    "typescript": "^5.6.3"
  }
}
EOL




echo "Setting up tsconfig.json file..."
# Initialize TypeScript and create nodemon config
cat <<EOL > backend/tsconfig.json
{
  "compilerOptions": {
    "target": "ESNext",
    "module": "CommonJS",
    "rootDir": "./src",
    "outDir": "./dist",
    "strict": true,
    "esModuleInterop": true,
    "forceConsistentCasingInFileNames": true,
    "skipLibCheck": true,
    "moduleResolution": "node",
    "resolveJsonModule": true,
    "noImplicitAny": true,
    "noUnusedLocals": true,
    "noUnusedParameters": true,
    "noImplicitReturns": true,
    "noFallthroughCasesInSwitch": true
  },
  "include": ["src/**/*.ts", "src/types/**/*.d.ts"],
  "exclude": ["node_modules", "dist"],
  "typeRoots": ["./src/types", "./node_modules/@types"],
  "ts-node": {
    "transpileOnly": true
  }
}
EOL

echo "Setting up nodemon.json file..."
cat <<EOL > backend/nodemon.json
{
  "watch": ["src"],
  "ext": "ts",
  "ignore": ["src/**/*.spec.ts"],
  "exec": "ts-node src/server.ts"
}
EOL


echo "Setting up .gitignore file..."
cat <<EOL > backend/.gitignore
# Node.js
node_modules/
dist/

# Logs
logs
*.log
npm-debug.log*

# Dependency directories
pids
logs
*.pid
*.seed
*.pid.lock

# Optional npm cache directory
.npm

# Optional eslint cache
.eslintcache

# Optional REPL history
.node_repl_history

# Environment variables
.env*
EOL

# Set up environment variables
echo "Setting up .env file..."
cat <<EOL > backend/.env
FRONTEND_URL=http://localhost:3000
GOOGLE_CLIENT_ID=
GOOGLE_CLIENT_SECRET=
GOOGLE_REDIRECT_URI=http://localhost:5000/api/v1/auth/oauth2callback
MONGODB_URI=
SIG_KEY=
ENC_KEY=
JWT_SECRET=
PORT=5000
EOL