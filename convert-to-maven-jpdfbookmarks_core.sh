#!/bin/sh
# Steps to refactor jpdfbookmarks-src-2.5.2 to maven architecture 

export BASE=`pwd`

#### module jpdfbookmarks_core ####
# Create Maven Standard Directory Layout
mkdir -p $BASE/jpdfbookmarks_core/src/main/java
mkdir -p $BASE/jpdfbookmarks_core/src/main/resources

# module jpdfbookmarks_core
cd $BASE/jpdfbookmarks_core/src

# split the source code into two directories: java and resources 
# copy the source code into two directories: java and resources 
cp -R it main/java/
cp -R it main/resources/

# there will be no java & form files in resources directory , 
# so delete them all 
cd $BASE/jpdfbookmarks_core/src/main/resources/
find . -type f -iname \*.java -delete
find . -type f -iname \*.form -delete

# delete empty directory 
find . -empty -type d -delete

# There will be no jpg, png, gif, ico, txt, properties, html, afm files in the java directory, 
# so delete them 
cd $BASE/jpdfbookmarks_core/src/main/java/
find . -type f -iname \*.jpg -delete
find . -type f -iname \*.png -delete
find . -type f -iname \*.gif -delete
find . -type f -iname \*.ico -delete
find . -type f -iname \*.txt -delete
find . -type f -iname \*.properties -delete
find . -type f -iname \*.html -delete
find . -type f -iname \*.afm -delete

# delete empty directory 
find . -empty -type d -delete


# delete src/it directories
cd $BASE/jpdfbookmarks_core/src
rm -R ./it


# delete unnecessary directories and files.
cd $BASE/jpdfbookmarks_core/
rm -R nbproject
rm -R test
rm -R others
rm build.xml
rm manifest.mf


# copy the Packaging 
# jpdfbookmarks  jpdfbookmarks_cli link_this_in_linux_path.sh link_this_in_linux_path_cli.sh 
# into the jpdfbookmarks_core/src/main/scripts directory
mkdir -p $BASE/jpdfbookmarks_core/src/main/scripts
cd $BASE/jpdfbookmarks_core/src/main/scripts
cp $BASE/Packaging/jpdfbookmarks $BASE/jpdfbookmarks_core/src/main/scripts/
cp $BASE/Packaging/jpdfbookmarks_cli $BASE/jpdfbookmarks_core/src/main/scripts/
cp $BASE/Packaging/link_this_in_linux_path.sh $BASE/jpdfbookmarks_core/src/main/scripts/
cp $BASE/Packaging/link_this_in_linux_path_cli.sh $BASE/jpdfbookmarks_core/src/main/scripts/

cp -R $BASE/Packaging/launch4j $BASE/jpdfbookmarks_core/src/main/

mkdir -p $BASE/jpdfbookmarks_core/src/main/images
cp $BASE/Packaging/jpdfbookmarks.ico $BASE/jpdfbookmarks_core/src/main/images/
cp $BASE/jpdfbookmarks_graphics/artwork/jpdfbookmarks.png $BASE/jpdfbookmarks_core/src/main/images/

