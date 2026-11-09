#!/usr/bin/env bash
# Gera turbofraction.zip e versao.json a partir da pasta da extensão.
# Uso: ./publicar.sh "Novidade 1" "Novidade 2" ...
set -euo pipefail
cd "$(dirname "$0")"
EXT=../turbofraction
VER=$(python3 -c "import json;print(json.load(open('$EXT/manifest.json'))['version'])")
rm -f turbofraction.zip
(cd "$EXT/.." && zip -qr "$OLDPWD/turbofraction.zip" turbofraction)
python3 - "$VER" "$@" <<'PY'
import json, sys, datetime
ver, notas = sys.argv[1], sys.argv[2:]
json.dump({
  "versao": ver,
  "data": datetime.date.today().isoformat(),
  "download": "https://github.com/rameno-hash/TurboFraction-update/releases/latest/download/turbofraction.zip",
  "notas": notas,
}, open("versao.json", "w", encoding="utf-8"), ensure_ascii=False, indent=2)
PY
echo "Pronto: versão $VER (turbofraction.zip + versao.json)"
