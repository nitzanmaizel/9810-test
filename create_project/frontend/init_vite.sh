#!/bin/bash
# Initialize Vite project with React and TypeScript
echo "Initializing Vite project..."
if npm init vite@latest . -- --template react-ts -y; then
  echo "Frontend initialized with Vite."
else
  echo "Error initializing Vite. Exiting."
  exit 1
fi

# Install frontend dependencies
echo "Installing frontend dependencies..."
npm install
npm install react-router-dom @mui/material @mui/styled-engine-sc styled-components @mui/icons-material @tanstack/react-query @tanstack/react-query-devtools stylis stylis-plugin-rtl
npm install --save-dev @types/react-router-dom @types/stylis @vitejs/plugin-react-swc