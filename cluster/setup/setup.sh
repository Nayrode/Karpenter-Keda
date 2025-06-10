#!/bin/bash

set -e

echo "🔧 Création du virtualenv..."
mkdir -p ~/.venvs
python3 -m venv ~/.venvs/kubespray

echo "📦 Activation du virtualenv..."
source ~/.venvs/kubespray/bin/activate

echo "🚀 Mise à jour de pip/setuptools/wheel..."
pip install --upgrade pip setuptools wheel

echo "📥 Installation de Ansible + distlib..."
pip install ansible distlib

echo "📚 Installation de la collection kubespray..."
ansible-galaxy install -r requirements.yml


echo "✅ Installation terminée avec succès."
echo "👉 Pour activer le virtualenv plus tard :"
echo "   source ~/.venvs/kubespray/bin/activate"
