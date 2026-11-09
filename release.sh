#!/usr/bin/env bash
# Cria o Release do GitHub da versão atual com o turbofraction.zip anexado (o GitHub conta os downloads)
# e, só se der certo, troca o link de download do versao.json para o endereço fixo da última versão.
# Uso (depois do ./publicar.sh): ./release.sh
set -euo pipefail
cd "$(dirname "$0")"
REPO=rameno-hash/TurboFraction-update
VER=$(python3 -c "import json;print(json.load(open('versao.json'))['versao'])")
NOTAS=$(python3 -c "import json;print('\n'.join('- '+n for n in json.load(open('versao.json'))['notas']))")
LINK="https://github.com/$REPO/releases/latest/download/turbofraction.zip"
if gh release view "v$VER" -R "$REPO" >/dev/null 2>&1; then
  gh release upload "v$VER" turbofraction.zip -R "$REPO" --clobber
else
  gh release create "v$VER" turbofraction.zip -R "$REPO" --title "TurboFraction $VER" --notes "$NOTAS" --latest
fi
# Confere que o link novo responde antes de usá-lo
if curl -sIL -o /dev/null -w '%{http_code}' "$LINK" | grep -q '^200$'; then
  python3 - "$LINK" <<'PY'
import json, sys
j = json.load(open("versao.json", encoding="utf-8")); j["download"] = sys.argv[1]
json.dump(j, open("versao.json", "w", encoding="utf-8"), ensure_ascii=False, indent=2)
PY
  echo "Release v$VER criado; versao.json aponta para $LINK"
else
  echo "Release criado, mas o link $LINK ainda não respondeu; versao.json mantido com o link antigo"
fi
