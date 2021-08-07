#!/bin/bash

export FLASK_APP=microblog.py
export FLASK_ENV=development
export MAIL_SERVER=smtp.googlemail.com
export MAIL_PORT=587
export MAIL_USE_TLS=1
export MAIL_USERNAME="<your-gmail-username>"
export MAIL_PASSWORD="<your-gmail-password>"
export MS_TRANSLATOR_KEY=2b9ae2bfc7374697983d1047931eee90
export ELASTICSEARCH_URL=http://localhost:9200

UNAME=$(uname)

if [[ "$UNAME" == "Linux" || "$UNAME" == "Darwin" ]] ; then
	export FLASK_APP=microblog.py
    export FLASK_ENV=development
elif [[ "$UNAME" == CYGWIN* || "$UNAME" == MINGW* ]] ; then
	set FLASK_APP=microblog.py
    set FLASK_ENV=development
fi

xdg-open http://127.0.0.1:5000/
flask run

# flask db migrate -m ...
# flask db upgrade

# Extract all translatable texts
# pybabel extract -F babel.cfg -k _l -o messages.pot .
# Generate a language catalog
# pybabel init -i messages.pot -d app/translations -l es
# Compile Translations
# pybabel compile -d app/translations
# Update tranlations
# (venv) $ pybabel update -i messages.pot -d app/translations
