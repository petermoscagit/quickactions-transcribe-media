# quickactions-transcribe-media

Quick Actions for macOS to transcribe media files into plain text. These Automator workflows can be triggered from Finder’s **right-click menu > Quick Actions**.

---

## 🎯 Included Quick Actions

- **Transcribe MP4.workflow**  
  Extracts and transcribes audio from an `.mp4` video file to a `.txt` file.

- **Transcribe WAV.workflow**  
  Transcribes a `.wav` audio file to a `.txt` file using local tools.

> Each workflow outputs a `.txt` file in the same folder as the source file.

---

## 📥 Installation

### 🔹 Option 1: One-line install (recommended)

```bash
curl -L https://github.com/petermoscagit/quickactions-transcribe-media/archive/refs/tags/v1.0.1.zip -o quickactions.zip && unzip quickactions.zip && cd quickactions-transcribe-media-1.0.1 && ./install.sh
