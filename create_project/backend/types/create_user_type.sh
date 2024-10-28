#!/bin/bash
# Ensure backend config directory exists
mkdir -p backend/src/types

echo "Creating types user file..."

# Create UserTypes.ts file with content
cat <<EOL > backend/src/types/UserTypes.ts
import { Document } from "mongoose";

export type UserRole = "user" | "admin";

export interface IUser {
  name: string;
  userId: string;
  email: string;
  role: UserRole;
  picture?: string;
  accessToken?: string;
  refreshToken?: string;
  tokenExpiryDate?: Date;
}

export interface IUserDocument extends IUser, Document {}
EOL