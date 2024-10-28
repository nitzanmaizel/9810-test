#!/bin/bash
mkdir -p frontend/src/components/Layout

echo "Creating Footer file..."

# Create useSnackbar.tsx file with content
cat <<EOL > frontend/src/components/Layout/Footer.tsx
import { Box } from '@mui/material';
import React from 'react';

const Footer: React.FC = () => {
  return (
    <Box component={'footer'} display={'flex'} justifyContent={'center'}>
      <p>&copy; 2024 Battalion 910</p>
    </Box>
  );
};

export default Footer;
EOL