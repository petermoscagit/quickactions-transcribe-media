#!/bin/bash

set -e

echo "📦 Installing macOS Quick Actions..."

TARGET_DIR="$HOME/Library/Services"
WORKFLOWS=("Transcribe MP4.workflow" "Transcribe WAV.workflow")

# Check dependencies
echo "🔍 Checking for dependencies..."

missing=()

if ! command -v ffmpeg &> /dev/null; then
    missing+=("ffmpeg")
fi

if ! command -v whisper &> /dev/null; then
    missing+=("whisper (Python version)")
fi

if [ ${#missing[@]} -ne 0 ]; then
    echo "❌ Missing dependencies: ${missing[*]}"
    echo "➡️  Please install them before running this script."
    echo "   For example:"
    echo "   brew install ffmpeg"
    echo "   pip install git+https://github.com/openai/whisper.git"
    exit 1
fi

# Copy workflows
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

