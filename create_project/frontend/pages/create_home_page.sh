#!/bin/bash
mkdir -p frontend/src/pages

echo "Creating HomePage.tsx file..."

# Create HomePage.tsx file with content
cat <<EOL > frontend/src/pages/HomePage.tsx
import React from "react";
import { Box } from '@mui/material';

import PageWrapper from "@/components/Layout/PageWrapper";
import { useUser } from '@/hooks/useUser';

const HomePage: React.FC = () => {
  const { userInfo } = useUser();

  return (
    <PageWrapper>
      <Box>
        <h1>Welcome, {userInfo?.name}!</h1>
      </Box>
    </PageWrapper>
  );
};

export default HomePage;
EOL