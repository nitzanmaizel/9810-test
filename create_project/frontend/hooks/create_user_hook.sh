#!/bin/bash
mkdir -p frontend/src/hooks

echo "Creating useUser file..."

# Create useUser.tsx file with content
cat <<EOL > frontend/src/hooks/useUser.tsx
import { useContext } from 'react';
import { UserContext } from '@/context/UserContext';

export const useUser = () => {
  const context = useContext(UserContext);
  if (context === undefined) {
    throw new Error('useUser must be used within a UserProvider');
  }
  return context;
};
EOL