# fedora-44-quickstart 🐧🚀

### Production-grade automation kit to bootstrap, harden, and optimize a fresh Fedora Workstation 44 environment for modern DevOps workstations and engineering labs. No fluff.

---

## 🏁 The Problem & The Solution

Installing a fresh Linux distribution is only 20% of the job. The remaining 80% is spent configuring system tweaks, installing engineering tools, enabling repositories, and hardening security parameters. 

This repository hosts a battle-tested, automated shell utility designed to transform a standard vanilla **Fedora Workstation 44 (GNOME 50)** installation into an optimized, high-performance powerhouse for developers and infrastructure engineers in a matter of minutes.

---

## 🛠 Core Optimization Pillars

The execution script carries out an extensive architecture cleanup and enhancement setup:

* **Repository Expansion:** Native integration of Third-Party repositories, RPM Fusion (Free/Non-Free), and the complete Flathub flatpak universe.
* **DNF Package Manager Speedup:** Optimizes package fetching by configuring optimal parallel downloads, fastest mirror selection, and delta RPM enhancements.
* **System Hardening & Core Utilities:** Installs vital tools (`git`, `curl`, `tmux`, `htop`, `neovim`) and sets up basic security hardening baselines.
* **Engineering Runtime Preparation:** Configures foundational container layer tools and developmental dependencies without breaking core OS layers.

---

## 🚀 Quick Start / Deployment

> **Warning:** Review the script content before execution on production systems. Run this utility exclusively on a fresh, clean installation of Fedora Workstation 44.

Open your GNOME Terminal and trigger the execution pipeline with a single command string:

```bash
curl -sSL https://raw.githubusercontent.com/FAlvarix/fedora-44-quickstart/main/setup.sh | bash
```

---

## 🗂 Standardized Execution Layout

The internal automation architecture is structured as follows:

```text
fedora-44-quickstart/
├── LICENSE          # Open-Source MIT Standard Permissions
├── README.md        # Technical Documentation Hub
└── setup.sh         # Core Automation Script Logic
```

---

## 🤝 Contributing

We enforce a strict **No Fluff** policy. If you find bugs, edge cases with hardware controllers, or potential optimizations for DNF package delivery, please open an Issue or submit a highly granular Pull Request.

---

## 📺 Media & Ecosystem Connections

This project is a dedicated technical pillar of the **FAlvarix** infrastructure deployment workflow. Access the detailed companion walk-throughs across our channels:

* **YouTube Guide (ES):** [Watch the video walkthrough](https://youtube.com/falvarix)
* **YouTube Guide (EN):** [Watch the global video walkthrough](https://youtube.com/falvarix-en)
* **Technical Blog (ES):** [Read the full deployment article](https://es.falvarix.eu)
* **Technical Blog (EN):** [Read the full deployment article](https://en.falvarix.eu)
* **Professional Networking (ES):** [Connect via LinkedIn](https://linkedin.com/company/falvarix)
* **Professional Networking (EN):** [Connect via LinkedIn](https://linkedin.com/company/falvarix-en)

*Maintained with 💻 by @falvarix*
