#!/bin/sh
set -e

cd "$(dirname "$0")/.."
[ -d ./themes/yrzam ] && cd ./themes/yrzam

VARS=$(printenv | \
	grep -E 'THEME_.*' | \
	sed -e 's/[= ].*//g' | sed -e 's/^/\$/' | tr '\n' ' '
)

envsubst "$VARS" < "./assets/css/variables.scss.tmpl" > "./assets/css/variables.scss"
