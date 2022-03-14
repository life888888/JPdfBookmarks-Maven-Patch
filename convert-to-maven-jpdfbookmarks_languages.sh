#!/bin/sh
# Steps to refactor jpdfbookmarks-src-2.5.2 to maven architecture 

export BASE=`pwd`

#### module jpdfbookmarks_languages ####
# Create Maven Standard Directory Layout
mkdir -p $BASE/jpdfbookmarks_languages/src/main/java
mkdir -p $BASE/jpdfbookmarks_languages/src/main/resources

# module jpdfbookmarks_languages
cd $BASE/jpdfbookmarks_languages/src

# split the source code into two directories: java and resources 
# copy the source code into two directories: java and resources 
cp -R it main/java/
cp -R it main/resources/

# there will be no java files in resources directory , 
# so delete them all 
cd $BASE/jpdfbookmarks_languages/src/main/resources/
find . -type f -iname \*.java -delete
# delete empty directory 
find . -empty -type d -delete

# There will be no jpg, png, gif, ico, txt, properties, html, afm files in the java directory, 
# so delete them 
cd $BASE/jpdfbookmarks_languages/src/main/java/
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
cd $BASE/jpdfbookmarks_languages/src
rm -R ./it


# delete unnecessary directories and files.
cd $BASE/jpdfbookmarks_languages/
rm -R nbproject
rm -R test
rm build.xml

