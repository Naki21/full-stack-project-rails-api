#!/bin/bash
TOKEN=BAhJIiVjMjIwNGMyMzQzYTM3ZWJhYjAwOTY2NDEzY2YyM2U2ZgY6BkVG--01d09d581c79cfb29e077e98509d8cb8029e5ed7

curl --include --request POST http://localhost:4741/fighters \
  --header "Authorization: Token token=BAhJIiVjMjIwNGMyMzQzYTM3ZWJhYjAwOTY2NDEzY2YyM2U2ZgY6BkVG--01d09d581c79cfb29e077e98509d8cb8029e5ed7" \
  --header "Content-Type: application/json" \
  --data '{
    "fighter": {
      "url": "store.temp_fighter.image_url",
      "user_id": "10"
    }
  }'
