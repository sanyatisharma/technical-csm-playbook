#!/usr/bin/env bash
# Sets up a clean git repo for the VerifyFlow CSM toolkit with two
# honestly-scoped commits. Run this from inside this folder:
#   cd ~/Desktop/Projects/verifyflow-csm-toolkit && bash setup-git.sh
set -e

# Remove the partial .git folder created during setup (safe to delete).
rm -rf .git

git init
git config user.name "Sanyati Sharma"
git config user.email "sanyatisharma@gmail.com"

# Commit 1 — project scaffolding
git add README.md .gitignore setup-git.sh
git commit -m "Initialize project scaffolding

Add README and .gitignore for the VerifyFlow CSM toolkit project."

# Commit 2 — the toolkit page
git add verifyflow_csm_toolkit_2.html
git commit -m "Add VerifyFlow CSM toolkit page

Self-contained HTML page of CSM frameworks for technical
infrastructure products."

echo
echo "Done. Commit history:"
git log --pretty=format:'%h  %ad  %s' --date=iso
echo

# ---- To push to GitHub (optional) ----
# 1. Create an empty repo on GitHub (no README).
# 2. Then run:
#    git remote add origin git@github.com:<your-username>/verifyflow-csm-toolkit.git
#    git branch -M main
#    git push -u origin main
