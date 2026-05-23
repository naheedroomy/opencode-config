#!/bin/bash
# Usage: switch-preset.sh <preset-name>
# Example: switch-preset.sh xeno-optimized

CONFIG="$HOME/.config/opencode/oh-my-opencode-slim.json"
PRESET=$1

if [ -z "$PRESET" ]; then
  echo "Usage: switch-preset.sh <preset-name>"
  echo "Available presets: xeno-optimized, nuz-optimized"
  exit 1
fi

# Validate preset exists in config
if ! grep -q "\"$PRESET\":" "$CONFIG"; then
  echo "Error: preset '$PRESET' not found in $CONFIG"
  exit 1
fi

# Swap the active preset
sed -i '' "s/\"preset\": \".*\"/\"preset\": \"$PRESET\"/" "$CONFIG"

echo "Switched to preset: $PRESET"
echo "Restart OpenCode to apply."
