#!/usr/bin/env bash
set -euo pipefail

skill_name="full-video-motion-workflow"
skill_root="${CODEX_HOME:-$HOME/.codex}/skills/$skill_name"
repo_url="https://github.com/xiaoshan-shuma/full-video-motion-workflow.git"

if command -v git >/dev/null 2>&1; then
  if [ -d "$skill_root/.git" ]; then
    git -C "$skill_root" pull --ff-only origin main
  elif [ -e "$skill_root" ]; then
    printf 'Error: %s already exists and is not a Git checkout.\n' "$skill_root" >&2
    exit 1
  else
    mkdir -p "$(dirname "$skill_root")"
    git clone --depth 1 "$repo_url" "$skill_root"
  fi
else
  printf 'Error: git is required to install %s.\n' "$skill_name" >&2
  exit 1
fi

printf 'Installed %s to %s\n' "$skill_name" "$skill_root"
printf 'Restart or refresh Codex, then say: 使用 full-video-motion-workflow。\n'
