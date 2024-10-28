#!/bin/bash
mkdir -p frontend/src

echo "Creating tokenManager file..."

# Create useSnackbar.tsx file with content
cat <<EOL > frontend/src/tokenManager.ts
let accessToken: string | null = localStorage.getItem('jwtToken');

window.addEventListener('storage', (event) => {
  if (event.key === 'jwtToken') {
    accessToken = event.newValue;
  }
});

export function setAccessToken(token: string | null) {
  accessToken = token;
  if (token) {
    localStorage.setItem('jwtToken', token);
  } else {
    localStorage.removeItem('jwtToken');
  }
}

export function getAccessToken(): string | null {
  return accessToken;
}
EOL