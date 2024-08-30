#!/bin/sh

LOG_FILE="/tmp/uptime_log.json"
REPO_PATH="/path/to/your/repo"
COMMIT_MSG="Update uptime log $(date --utc +%Y-%m-%dT%H:%M:%SZ)"

cd $REPO_PATH
git pull origin main
cp $LOG_FILE .
git add $(basename $LOG_FILE)
git commit -m "$COMMIT_MSG"
git push origin main
