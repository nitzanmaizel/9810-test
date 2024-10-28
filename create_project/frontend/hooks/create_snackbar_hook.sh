#!/bin/bash
mkdir -p frontend/src/hooks

echo "Creating useSnackbar file..."

# Create useSnackbar.tsx file with content
cat <<EOL > frontend/src/hooks/useSnackbar.tsx
import { useContext } from "react";
import { SnackbarContext } from "@/context/SnackbarContext";

export const useSnackbar = () => {
  const context = useContext(SnackbarContext);
  if (!context) {
    throw new Error("useSnackbar must be used within a SnackbarProvider");
  }
  return context;
};
EOL