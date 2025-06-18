# Linux Command Cheat Sheet Generator 🐧⚡

![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Deployed-brightgreen)
![Version](https://img.shields.io/badge/Version-1.0-orange)

A Bash-powered tool that automatically generates a well-formatted Linux command cheat sheet from categorized command lists.

🔗 **Live Demo**: [Access the Cheat Sheet](https://aryansharma2206.github.io/linux-cheat-sheet/)  
📅 **Auto-updated**: Daily via cron job

## Features ✨

- 🗂️ **Categorized Commands**: Organized by topics (Docker, systemd, networking, etc.)
- 📝 **Markdown Formatting**: Clean, readable output with consistent styling
- 🔍 **Search-Friendly**: Structured for quick command lookup
- 🤖 **Automated Generation**: Runs daily via cron job
- 🌐 **Web Accessible**: GitHub Pages hosting makes it always available
- 📱 **Responsive Design**: Works on both desktop and mobile devices

## How It Works 🔧

```mermaid
flowchart TD
    A[START] --> B{Trigger}
    B -->|Manual| C[generate_cheatsheet.sh]
    B -->|Cron Job| C
    C --> D[Scan categories/*.txt]
    D --> E[Process each file]
    E --> F[Generate Markdown]
    F --> G[Linux_Cheat_Sheet.md]
    G --> H[GitHub Pages]
    H --> I[Auto-deploy HTML]
