#!/bin/sh
# Steps to refactor jpdfbookmarks-src-2.5.2 to maven architecture 

export BASE=`pwd`

# install jpedal_lgpl.jar to local maven repository
cd $BASE/jpdfbookmarks_lib

# mvn install:install-file -Dfile=jpedal_lgpl.jar -DgroupId=org.jpedal -DartifactId=jpedal -Dversion=4.22b16 -Dpackaging=jar

# archiving unnecessary jar files.
mkdir Can_Remove_Jars
mv bcmail-jdk16-145.jar ./Can_Remove_Jars
mv bcprov-jdk16-145.jar ./Can_Remove_Jars
mv bctsp-jdk16-145.jar ./Can_Remove_Jars
mv commons-cli-1.2.jar ./Can_Remove_Jars
mv swing-layout-1.0.3.jar ./Can_Remove_Jars

tar zcvf Can_Remove_Jars.tar.gz Can_Remove_Jars
rm -R Can_Remove_Jars

# remove comment to delete backup jar
# rm $BASE/jpdfbookmarks_lib/Can_Remove_Jars.tar.gz


./install_lib.sh
