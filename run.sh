#!/bin/bash

export FLASK_APP=app.py
export FLASK_ENV=development

UNAME=$(uname)

if [[ "$UNAME" == "Linux" || "$UNAME" == "Darwin" ]] ; then
	export FLASK_APP=app.py
    export FLASK_ENV=development
elif [[ "$UNAME" == CYGWIN* || "$UNAME" == MINGW* ]] ; then
	set FLASK_APP=app.py
    set FLASK_ENV=development
fi

xdg-open http://127.0.0.1:5000/
flask run

# flask db migrate -m ...
# flask db upgrade
