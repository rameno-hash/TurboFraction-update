#!/usr/bin/env bash
# Cria o Release do GitHub da versão atual com o turbofraction.zip anexado (o GitHub conta os downloads)
# e, só se der certo, troca o link de download do versao.json para o endereço fixo da última versão.
# Usa só a API REST do GitHub. Rodar depois do ./publicar.sh e do push (a tag é criada no último commit).
set -euo pipefail
cd "$(dirname "$0")"
REPO=rameno-hash/TurboFraction-update
VER=$(python3 -c "import json;print(json.load(open('versao.json'))['versao'])")
NOTAS=$(python3 -c "import json;print('\n'.join('- '+n for n in json.load(open('versao.json'))['notas']))")
LINK="https://github.com/$REPO/releases/latest/download/turbofraction.zip"
ID=$(gh api "repos/$REPO/releases/tags/v$VER" --jq .id 2>/dev/null || true)
if [ -z "$ID" ]; then
  ID=$(gh api -X POST "repos/$REPO/releases" -f tag_name="v$VER" -f name="TurboFraction $VER" -f body="$NOTAS" -f make_latest=true --jq .id)
else
  # Release já existe: troca o arquivo anexado
  for A in $(gh api "repos/$REPO/releases/$ID/assets" --jq '.[] | select(.name=="turbofraction.zip") | .id'); do gh api -X DELETE "repos/$REPO/releases/assets/$A"; done
fi
gh api -X POST "https://uploads.github.com/repos/$REPO/releases/$ID/assets?name=turbofraction.zip" -H "Content-Type: application/zip" --input turbofraction.zip --jq '.browser_download_url'
# Confere que o link novo responde antes de usá-lo
if curl -sIL -o /dev/null -w '%{http_code}' "$LINK" | grep -q '^200$'; then
  python3 - "$LINK" <<'PY'
import json, sys
j = json.load(open("versao.json", encoding="utf-8")); j["download"] = sys.argv[1]
json.dump(j, open("versao.json", "w", encoding="utf-8"), ensure_ascii=False, indent=2)
PY
  echo "Release v$VER criado; versao.json aponta para $LINK"
else
  echo "Release v$VER criado, mas o link $LINK ainda não respondeu; versao.json mantido com o link antigo"
fi
