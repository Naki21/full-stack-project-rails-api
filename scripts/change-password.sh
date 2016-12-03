#!/bin/bash

curl --include --request PATCH http://localhost:4741/change-password/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "an example password",
      "new": "super sekrit"
    }
  }'

  curl --include --request POST http://localhost:4741/fighters/4 \
    --data '{
      "fighter": {
        "url": "an example password",
    }'
    curl --include --request PUT http://localhost:4741/barracks/6 \
      --data '{
"barrack": {
"id": 6,
"user_id": 1,
"url": null
}
}'
