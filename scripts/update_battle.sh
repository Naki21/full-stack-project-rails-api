#!/bin/bash
TOKEN=BAhJIiVjMjIwNGMyMzQzYTM3ZWJhYjAwOTY2NDEzY2YyM2U2ZgY6BkVG--01d09d581c79cfb29e077e98509d8cb8029e5ed7

curl --include --request PATCH http://localhost:4741/battles/76 \
  --header "Authorization: Token token=BAhJIiViZDE3YmZhYjE1MDg5OTE4YTI0YmI1YzFkNjM1ZDZhYwY6BkVG--fc771935fdca77ca7746ec3fd456c9399d7d3f77" \
  --header "Content-Type: application/json" \
  --data '{
    "battle": {
      "win": "true"
    }
  }'
