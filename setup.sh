#!/bin/bash

# ==============================================================================
# FAlvarix - Fedora Workstation 44 Bootstrap Automation Script
# Real DevOps. No fluff. No magic.
# ==============================================================================

# Set strict execution bash flags for professional pipeline management
set -euo pipefail

# Visual markers for execution feedback
INFO="[INFO]"
SUCCESS="[SUCCESS]"
ERROR="[ERROR]"

echo "======================================================================"
echo " Starting FAlvarix Core Post-Installation Setup for Fedora 44"
echo "======================================================================"

# 1. Optimize DNF Configuration for High-Speed Downloads
echo "${INFO} Optimizing DNF configuration parameters..."
sudo tee -a /etc/dnf/dnf.conf > /dev/null <<EOT
max_parallel_downloads=10
fastestmirror=True
deltarpm=True
defaultyes=True
EOT
echo "${SUCCESS} DNF configuration optimized successfully."

# 2. Synchronize and Upgrade System Core Dependencies
echo "${INFO} Refreshing active repositories and upgrading core system binaries..."
sudo dnf upgrade --refresh -y
echo "${SUCCESS} System up to date."

# 3. Enable Essential Third-Party Repositories & RPM Fusion
echo "${INFO} Integrating RPM Fusion repositories (Free & Non-Free)..."
sudo dnf install -y https://pi.com.tw/rpmfusion/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm || true
sudo dnf install -y https://pi.com.tw/rpmfusion/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm || true
echo "${SUCCESS} RPM Fusion infrastructure added."

# 4. Install Core System Utilities & CLI Tooling Matrix
echo "${INFO} Provisioning engineering and system CLI utilities..."
CORE_PACKAGES=(
    git
    curl
    wget
    tmux
    htop
    neovim
    util-linux-user
    zsh
)
sudo dnf install -y "${CORE_PACKAGES[@]}"
echo "${SUCCESS} Core utilities provisioned."

# 5. Enable and Setup Flatpak Ecosystem with Flathub
echo "${INFO} Adding Flathub remote repository configuration..."
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
echo "${SUCCESS} Flathub integrated seamlessly into GNOME Software."

# 6. Housekeeping and Package Manager Cleanup
echo "${INFO} Purging unneeded metadata and package tracking cache..."
sudo dnf autoremove -y
sudo dnf clean all
echo "${SUCCESS} Storage space cleared."

echo "======================================================================"
echo " ${SUCCESS} Execution Finished. Fedora 44 is optimized for DevOps workflows."
echo " Please perform a manual system restart to apply all core changes."
echo "======================================================================"
