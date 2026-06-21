#!/bin/bash
# Скрипт для обращения к Gemini API
PROMPT=$1
API_URL="https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=$API_KEY"

curl $API_URL \
    -H 'Content-Type: application/json' \
    -X POST \
    -d "{
      \"contents\": [{
        \"parts\":[{\"text\": \"$PROMPT\"}]
      }]
    }"
