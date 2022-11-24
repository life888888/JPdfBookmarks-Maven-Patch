#!/bin/sh
# Steps to refactor jpdfbookmarks-src-2.5.2 to maven architecture 

export BASE=`pwd`

#### module iText-2.1.7-patched ####
# Create Maven Standard Directory Layout
mkdir -p $BASE/iText-2.1.7-patched/src/main/java
mkdir -p $BASE/iText-2.1.7-patched/src/main/resources

# module iText-2.1.7-patched
cd $BASE/iText-2.1.7-patched/src

# split the source code into two directories: java and resources 
# copy the source code into two directories: java and resources 
# merge 4 source code directories (core, rtf, rups, toolbox ) into one directory

cp -R core/* main/java/
cp -R rtf/* main/java/
cp -R rups/* main/java/
cp -R toolbox/* main/java/

# merge 4 source code directories (core, rtf, rups, toolbox ) into one directory
cp -R core/* main/resources/
cp -R rtf/* main/resources/
cp -R rups/* main/resources/
cp -R toolbox/* main/resources/


# there will be no java files in resources directory , 
# so delete them all 
cd $BASE/iText-2.1.7-patched/src/main/resources/
find . -type f -iname \*.java -delete
# delete empty directory 
find . -empty -type d -delete


# There will be no jpg, png, gif, ico, txt, properties, html, afm files in the java directory, 
# so delete them 
cd $BASE/iText-2.1.7-patched/src/main/java/
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

# delete src/core & rtf & rups & toolbox directories
cd $BASE/iText-2.1.7-patched/src
rm -R ./core
rm -R ./rtf
rm -R ./rups
rm -R ./toolbox
rm -R ./ant
rm build.xml
rm test.xml

# delete unnecessary directories and files.
cd $BASE/iText-2.1.7-patched
rm -R nbproject
rm manifest.mf
rm nbbuild.xml
