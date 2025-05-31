#!/bin/bash

echo "📦 Adding all changes..."
git add .

echo "📝 Commit message (press Enter for 'Auto update'):"
read MESSAGE

if [ -z "$MESSAGE" ]; then
    MESSAGE="Auto update"
fi

git commit -m "$MESSAGE"
git push

echo "✅ Done! Changes pushed to GitHub."
