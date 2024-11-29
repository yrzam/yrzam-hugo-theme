#!/bin/sh
set -e
cd "$(dirname "$0")/.."
if [ ! -f "../../themes/yrzam/init/import-environment.sh" ]; then
	echo "Wrong path" >&2
	exit 1;
fi

VARS=$(printenv | \
	grep -E 'THEME_.*' | \
	sed -e 's/[= ].*//g' | sed -e 's/^/\$/' | tr '\n' ' '
)

envsubst "$VARS" < "./assets/css/variables.scss.tmpl" > "./assets/css/variables.scss"
