🐧⚡ Linux Command Cheat Sheet Generator



A Bash-powered tool that automatically generates a well-formatted Linux command cheat sheet from categorized command files.

📌 Live Demo:
👉 Access the Cheat Sheet

📅 Auto-updated:
Runs daily via cron job to reflect the latest command sets.

🚀 Features
🗂️ Categorized Commands
Commands are grouped by topics (e.g., Docker, systemd, networking, etc.)

📝 Markdown Formatting
Generates clean, readable Markdown output

🔍 Search-Friendly
Easily locate commands by category or keyword

🤖 Automated Generation
Powered by a daily cron job running the Bash script

🌐 Web Accessible
Hosted using GitHub Pages for quick access

📱 Responsive Design
Works well on desktop and mobile devices

🛠️ How It Works
mermaid
Copy
Edit
flowchart TD
    A[START] --> B{Trigger}
    B -->|Manual| C[generate_cheatsheet.sh]
    B -->|Cron Job| C
    C --> D[Scan categories/*.txt]
    D --> E[Process each file]
    E --> F[Generate Markdown]
    F --> G[Linux_Cheat_Sheet.md]
    G --> H[Push to GitHub Pages]
    H --> I[Auto-deploy HTML]
📂 Repository Structure
Copy
Edit
linux-cheat-sheet/
├── categories/
│   ├── docker.txt
│   ├── apache.txt
│   └── ...
├── generate_cheatsheet.sh
├── Linux_Cheat_Sheet.md
├── index.html
└── .github/
    └── workflows/
        └── cron.yml
👨‍💻 Author
Aryan Sharma
B.Tech CSE (AI & DS) | Poornima University
📍 Jaipur, India
🔗 GitHub @AryanSharma2206
🔗 LinkedIn
