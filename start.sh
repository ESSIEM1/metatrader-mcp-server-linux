#!/bin/bash
# Only start bridge if not already running
if ! nc -z 127.0.0.1 18812 2>/dev/null; then
    WINEPREFIX=~/.mt5 wine python -m mt5linux &
    sleep 3
fi
# Start MCP server
metatrader-mcp-server \
    --login YOUR ACCOUNT NUMBER \
    --password YOUR ACCOUNT PASSWORD \
    --server YOUR MT5 BROKER SERVER NAME \
    --transport stdio \
    --path 'C:\Program Files\MetaTrader 5\terminal64.exe'
