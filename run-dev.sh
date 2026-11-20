#!/usr/bin/env bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cmd.exe /c "cd /d $SCRIPT_DIR && \"Run Dev Mode.bat\""
