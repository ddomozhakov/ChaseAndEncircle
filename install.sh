cd src
mkdir target
mkdir Game/lib
curl https://repo1.maven.org/maven2/com/beust/jcommander/1.78/jcommander-1.78.jar -o Game/lib/jcommander-1.78.jar
curl https://repo1.maven.org/maven2/com/diogonunes/JCDP/4.0.2/JCDP-4.0.2.jar -o Game/lib/JCDP-4.0.2.jar
javac -d target/ -sourcepath Game/src/main/java/ -cp Game/lib/\*  Game/src/main/java/game/app/Program.java ChaseLogic/src/main/java/chase/logic/*.java
cp -r Game/src/main/resources/*.* target
cd target
jar xf ../Game/lib/jcommander-1.78.jar
jar xf ../Game/lib/JCDP-4.0.2.jar
rm -rf META-INF
cd ..
jar cmf Game/manifest.txt game.jar -C target .
rm -rf target