#!/bin/bash
echo Enter PROJECT_ID
read PROJECT_ID_INPUT
echo Enter API_KEY
read API_KEY_INPUT

# Check if running Darwin, as OS X implementation of sed differs
if [[ "$OSTYPE" == "darwin"* ]]; then
  LC_ALL=C find . -type f -name "*html*" -exec sed -i '' "s/PROJECT_ID/$PROJECT_ID_INPUT/g" {} +
  LC_ALL=C find . -type f -name "*html*" -exec sed -i '' "s/API_KEY/$API_KEY_INPUT/g" {} +
else 
  LC_ALL=C find . -type f -name "*html*" -exec sed -i "s/PROJECT_ID/$PROJECT_ID_INPUT/g" {} +
  LC_ALL=C find . -type f -name "*html*" -exec sed -i "s/API_KEY/$API_KEY_INPUT/g" {} +
fi

echo Done.
