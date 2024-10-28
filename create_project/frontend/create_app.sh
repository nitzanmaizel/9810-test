#!/bin/bash
mkdir -p frontend/src

echo "Creating app file..."

# Create useSnackbar.tsx file with content
cat <<EOL > frontend/src/app.tsx
import React from 'react';
import { Routes, Route } from 'react-router-dom';
import HomePage from '@/pages/HomePage';

const App: React.FC = () => {
  return (
    <Routes>
      <Route path='/' element={<HomePage />} />
    </Routes>
  );
};

export default App;
EOL