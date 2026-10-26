#!/usr/bin/env bash
# API LLM tanpa sensor untuk developer Indonesia — quickstart
set -euo pipefail
: "${UNLLM_KEY:?export UNLLM_KEY=sk-...}"

curl -s https://uncensored-llm.sbs/v1/chat/completions \
  -H "Authorization: Bearer $UNLLM_KEY" \
  -H "Content-Type: application/json" \
  -d '{"model":"uncensored-llm","messages":[{"role":"user","content":"Jelaskan tanpa bertele-tele bagaimana cara kerja kapitalisasi pasar kripto."}]}' | head -c 2000
echo
