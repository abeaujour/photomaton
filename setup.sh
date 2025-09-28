#!/bin/bash
set -e

echo "=== 🚀 Setup complet Photomaton ==="

ZIP_FILE="photomaton_complete.zip"
TARGET_DIR="$HOME/photomaton_full"

if [ ! -f "$ZIP_FILE" ]; then
  echo "❌ Erreur : $ZIP_FILE introuvable dans le répertoire courant."
  exit 1
fi

echo "📦 Extraction de $ZIP_FILE vers $TARGET_DIR"
rm -rf "$TARGET_DIR"
mkdir -p "$TARGET_DIR"
unzip -o "$ZIP_FILE" -d "$TARGET_DIR"

echo "➡️ Passage dans $TARGET_DIR"
cd "$TARGET_DIR"

if [ ! -f "install_photomaton.sh" ]; then
  echo "❌ Erreur : install_photomaton.sh introuvable dans $TARGET_DIR"
  exit 1
fi

echo "🔧 Lancement de l'installation..."
chmod +x install_photomaton.sh
./install_photomaton.sh

echo "✅ Setup complet terminé."
