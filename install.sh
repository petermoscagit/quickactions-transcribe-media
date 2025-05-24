#!/bin/bash

set -e  # Exit on error

echo "📦 Installing macOS Quick Actions..."

TARGET_DIR="$HOME/Library/Services"
WORKFLOWS=("Transcribe MP4.workflow" "Transcribe WAV.workflow")

mkdir -p "$TARGET_DIR"

for wf in "${WORKFLOWS[@]}"; do
    if [ -d "$wf" ]; then
        echo "➡️  Installing $wf to $TARGET_DIR"
        cp -R "$wf" "$TARGET_DIR/"
    else
        echo "⚠️  Warning: $wf not found in current directory"
    fi
done

echo "✅ Installation complete!"
echo "🧭 Available under Finder > Quick Actions and System Settings > Keyboard > Services."

