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

flask run

# flask db migrate -m ...
# flask db upgrade
