---

# 🌌 IRIS — Offline AI Desktop Assistant

**IRIS** is an **offline-first, desktop AI assistant** with a modern glassmorphic UI, built using **Flutter** for the frontend and **local LLMs** (via Ollama) for intelligence.
No cloud. No tracking. Just your machine and your AI.

> Think of IRIS as a personal AI you *own*.

---

## ✨ Features

* 🧠 **Offline LLM support** (Ollama-based)
* 🪟 **Glassmorphic desktop UI**
* 💬 **Multi-conversation chat system**
* 🗂️ **Sidebar with add / delete conversations**
* ⚡ **Fast local inference**
* 🖥️ **Desktop-first design (Linux/macOS/Windows-ready)**
* 🔒 **Privacy-first (no internet required after setup)**

---

## 🛠️ Tech Stack

### Frontend

* **Flutter (Desktop)**
* Material 3
* Custom glassmorphic components
* Animated collapsible sidebar

### Backend (Planned / In Progress)

* **Python backend** (local server)
* **Ollama** for local LLMs (e.g. Mistral, LLaMA)
* Streaming token responses
* Long-term memory (planned)

---

## 🧊 UI Preview (Concept)

* Frosted glass header
* Glass input bar
* Glass sidebar
* Centered chat layout
* Smooth animations

> Inspired by macOS / Windows 11 design language.

---

## 🚀 Getting Started

### 1️⃣ Prerequisites

* Flutter (latest stable)
* Desktop toolchain enabled
* Ollama installed (for LLM inference)

Check Flutter setup:

```bash
flutter doctor
```

---

### 2️⃣ Clone the repository

```bash
git clone https://github.com/your-username/iris.git
cd iris
```

---

### 3️⃣ Run the frontend

```bash
flutter run -d linux   # or windows / macos
```

---

### 4️⃣ (Optional) Install Ollama

```bash
curl -fsSL https://ollama.com/install.sh | sh
```

Pull a model:

```bash
ollama pull mistral
```

---

## 🧠 Planned Features

* 🔁 Streaming responses from LLM
* 🧩 Memory per conversation
* 🧬 Personality inference & long-term memory
* 🗃️ Persistent chat history
* 🎨 Theme customization
* 📦 One-click installer (no technical setup)
* 🧠 ONNX / GGUF model support

## 🔒 Privacy Philosophy

IRIS is designed with **privacy as a default**, not an option.

* No cloud calls
* No telemetry
* No data leaves your machine
* All inference is local

---

## 🧑‍💻 Author

**Joel Jose**
AI / Systems / UI Engineering
Built as a learning-by-building project.

---

## 📜 License

MIT License
Feel free to fork, modify, and build on top of IRIS.

---

## ⭐ Why IRIS?

Most AI assistants today:

* require internet
* send your data to servers
* are locked behind APIs

**IRIS runs locally, belongs to you, and works even offline.**
* write a **roadmap.md**
* create a **CONTRIBUTING.md**

Just say the word 🚀
