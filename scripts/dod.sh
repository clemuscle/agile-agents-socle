#!/usr/bin/env bash
# Definition of Done — SEUL fichier à adapter à ta pile.
# Doit sortir avec un code != 0 si la qualité n'est pas au rendez-vous.
# Exemples : décommente ce qui correspond à ton projet.

set -e

# --- Node / JS ---
# npm test --silent
# npm run lint --silent

# --- Python ---
# pytest -q
# ruff check .

# --- Go ---
# go test ./...
# go vet ./...

# --- Rust ---
# cargo test --quiet
# cargo clippy -- -D warnings

# Par défaut (aucune commande configurée) : on ne bloque pas, mais on prévient.
echo "dod.sh: aucune commande de qualité configurée — édite scripts/dod.sh" >&2
exit 0
