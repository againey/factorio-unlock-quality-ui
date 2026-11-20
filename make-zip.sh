#!/bin/bash

MODNAME='unlock-quality-ui'
VERSION=$1
ZIPFILE="${MODNAME}_${VERSION}.zip"
DIRECTORY=$MODNAME
EXCLUDE="${DIRECTORY}/make-zip.sh ${DIRECTORY}/.editorconfig ${DIRECTORY}/${MODNAME}_*.zip ${DIRECTORY}/TODO.md ${DIRECTORY}/thumbnail.svg"

find . -name "${MODNAME}_*.zip" -delete
cd ..
zip -r $DIRECTORY/$ZIPFILE $DIRECTORY -x $DIRECTORY/.git\* $EXCLUDE
cd $DIRECTORY
