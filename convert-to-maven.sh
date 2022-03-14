#!/bin/sh
# Steps to refactor jpdfbookmarks-src-2.5.2 to maven architecture 

./convert-to-maven-jpdfbookmarks_lib.sh
./convert-to-maven-Bookmark.sh
./convert-to-maven-CollapsingPanel.sh
./convert-to-maven-Colors.sh
./convert-to-maven-iText-2.1.7-patched.sh
./convert-to-maven-iTextBookmarksConverter.sh
./convert-to-maven-jpdfbookmarks_core.sh
./convert-to-maven-jpdfbookmarks_graphics.sh
./convert-to-maven-jpdfbookmarks_languages.sh
./convert-to-maven-ResourceHelper.sh
./convert-to-maven-Utilities.sh


./convert-to-maven-Packaging.sh
rm -R doc
