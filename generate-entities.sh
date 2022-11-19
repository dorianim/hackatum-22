DB_FILE="./.tmp-db.sqlite"
export DATABASE_URL="sqlite:$DB_FILE?mode=rwc"

sea-orm-cli migrate fresh
sea-orm-cli generate entity -o src/model --with-serde both

rm $DB_FILE