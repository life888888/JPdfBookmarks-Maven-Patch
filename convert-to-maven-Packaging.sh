#!/bin/sh
# Steps to refactor jpdfbookmarks-src-2.5.2 to maven architecture 

export BASE=`pwd`

# 複製 Packaging 目錄下的 
# jpdfbookmarks  jpdfbookmarks_cli link_this_in_linux_path.sh link_this_in_linux_path_cli.sh 
# 到 jpdfbookmarks_core/src/main/scripts 目錄下
# mkdir -p $BASE/jpdfbookmarks_core/src/main/scripts
# cd $BASE/jpdfbookmarks_core/src/main/scripts
# cp $BASE/Packaging/jpdfbookmarks $BASE/jpdfbookmarks_core/src/main/scripts/
# cp $BASE/Packaging/jpdfbookmarks_cli $BASE/jpdfbookmarks_core/src/main/scripts/
# cp $BASE/Packaging/link_this_in_linux_path.sh $BASE/jpdfbookmarks_core/src/main/scripts/
# cp $BASE/Packaging/link_this_in_linux_path_cli.sh $BASE/jpdfbookmarks_core/src/main/scripts/
# cp -R $BASE/Packaging/launch4j $BASE/jpdfbookmarks_core/src/main/
# mkdir -p $BASE/jpdfbookmarks_core/src/main/images
# cp $BASE/Packaging/jpdfbookmarks.ico $BASE/jpdfbookmarks_core/src/main/images/
# cp $BASE/jpdfbookmarks_graphics/artwork/jpdfbookmarks.png $BASE/jpdfbookmarks_core/src/main/images/


rm -R ./Packaging
