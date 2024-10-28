# helpers.sh

# Define colors
RED='\033[0;31m'         # Error
GREEN='\033[0;32m'       # Success
YELLOW='\033[1;33m'      # Warning
BLUE='\033[0;34m'        # Info
CYAN='\033[0;36m'        # Secondary info
LIGHT_BLUE='\033[1;34m'  # Frontend
PURPLE='\033[0;35m'      # Backend
NC='\033[0m'             # No Color (reset)

# Define the echo function with color based on type
function colored_echo() {
  local message=$1
  local type=$2

  case "$type" in
    success)
      echo -e "${GREEN}${message}${NC}"
      ;;
    error)
      echo -e "${RED}${message}${NC}"
      ;;
    warning)
      echo -e "${YELLOW}${message}${NC}"
      ;;
    info)
      echo -e "${BLUE}${message}${NC}"
      ;;
    secondary)
      echo -e "${CYAN}${message}${NC}"
      ;;
    frontend)
      echo -e "${LIGHT_BLUE}${message}${NC}"
      ;;
    backend)
      echo -e "${PURPLE}${message}${NC}"
      ;;
    *)
      echo "$message" # Default to no color
      ;;
  esac
}
