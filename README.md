Here's the corrected and improved README file with clickable links:

```markdown
# Linux Command Cheat Sheet Generator 🐧⚡

[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Deployed-brightgreen)](https://aryansharma2206.github.io/linux-cheat-sheet/)
[![Version](https://img.shields.io/badge/Version-1.0-orange)](https://github.com/aryansharma2206/linux-cheat-sheet/releases)

A Bash-powered tool that automatically generates a well-formatted Linux command cheat sheet from categorized command lists.

🔗 **Live Demo**: [Access the Cheat Sheet](https://aryansharma2206.github.io/linux-cheat-sheet/)  
📅 **Auto-updated**: Daily via cron job

## Features ✨

- 🗂️ **Categorized Commands**: Organized by topics (Docker, systemd, networking, etc.)
- 📝 **Markdown Formatting**: Clean, readable output with consistent styling
- 🔍 **Search-Friendly**: Structured for quick command lookup
- 🤖 **Automated Generation**: Runs daily via cron job
- 🌐 **Web Accessible**: [GitHub Pages](https://pages.github.com/) hosting makes it always available
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
```

## Getting Started 🚀

1. Clone the repository:
   ```bash
   git clone https://github.com/aryansharma2206/linux-cheat-sheet.git
   ```
2. Run the generator:
   ```bash
   cd linux-cheat-sheet
   ./generate_cheatsheet.sh
   ```

## Contributing 🤝

Contributions are welcome! Please read our [Contribution Guidelines](https://github.com/aryansharma2206/linux-cheat-sheet/blob/main/CONTRIBUTING.md) before submitting changes.

---

## 👨‍💻 Author

**Aryan Sharma**  
B.Tech CSE (AI & DS) | Poornima University  
GitHub: [@AryanSharma2206](https://github.com/AryanSharma2206)  
LinkedIn: [linkedin.com/in/aryan-sharma2206](https://www.linkedin.com/in/aryan-sharma-a2a240353/)  
Location: Jaipur, India

```

