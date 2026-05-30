#!/bin/bash
# Only start bridge if not already running
if ! nc -z 127.0.0.1 18812 2>/dev/null; then
    WINEPREFIX=~/.mt5 wine python -m mt5linux &
    sleep 3
fi
# Start MCP server
metatrader-mcp-server \
    --login 10043851 \
    --password '$E5513mc0rp$' \
    --server Axi-US50-Demo \
    --transport stdio \
    --path 'C:\Program Files\MetaTrader 5\terminal64.exe'
