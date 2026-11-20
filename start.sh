#!/usr/bin/env bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ -f "$SCRIPT_DIR/../venv/Scripts/python.exe" ]; then
    PYTHON="$SCRIPT_DIR/../venv/Scripts/python.exe"
elif [ -f "$SCRIPT_DIR/venv/Scripts/python.exe" ]; then
    PYTHON="$SCRIPT_DIR/venv/Scripts/python.exe"
else
    PYTHON="python"
fi

echo "============================================================"
echo "  Starting Factory Brain on http://localhost:8000"
echo "============================================================"

cd "$SCRIPT_DIR"
"$PYTHON" -m uvicorn api.main:app --host 0.0.0.0 --port 8000 --reload
