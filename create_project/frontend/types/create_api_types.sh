#!/bin/bash
mkdir -p frontend/src

echo "Creating tokenManager file..."

# Create useSnackbar.tsx file with content
cat <<EOL > frontend/src/types/ApiTypes.ts
export const API_BASE_URL = import.meta.env.VITE_API_BASE_URL;

export const API_VERSION = '/api/v1';

export const API_FULL_URL = \`\${API_BASE_URL}\${API_VERSION}\`;

export const API_LOGIN = \`\${API_FULL_URL}/auth/login\`;

export const API_USER = '/auth/user';

export const API_LOGOUT = '/auth/logout';
EOL

# Create .env file with content
cat <<EOL > frontend/.env
VITE_API_BASE_URL=http://localhost:5000
EOL