#!/bin/sh
cd "$(dirname "$0")"
echo "Safe Way backend starting on http://0.0.0.0:8090"
echo "Admin panel: http://127.0.0.1:8090/_/  (admin@safeway.app / SafeWay#2026)"
exec ./pocketbase serve --http=0.0.0.0:8090
