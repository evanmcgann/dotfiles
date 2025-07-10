#!/bin/bash

echo "🔧 Setting up Gitpod workspace..."

# Install nvm (Node Version Manager) if missing
if [ ! -d "$HOME/.nvm" ]; then
  echo "🛠 Installing NVM..."
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
fi

# Load nvm into the shell (Gitpod uses bash)
export NVM_DIR="$HOME/.nvm"
# shellcheck source=/dev/null
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install Node.js 18 and use it
nvm install 18
nvm use 18

# Install Claude Code globally
if ! npm list -g @anthropic-ai/claude-code >/dev/null 2>&1; then
  echo "🧠 Installing Claude Code..."
  npm install -g @anthropic-ai/claude-code
fi

echo "✅ Gitpod setup complete!"
