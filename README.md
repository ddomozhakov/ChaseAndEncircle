# ChaseAndEncircle
Colorful CLI catch-up game

The goal of the game is to get to the target and not be caught by one of the enemies. To move, enter one of the numbers (1 - left, 3 - right, 2 - down, 5 - up) and press Enter. To give up, enter the number 9. At startup, you can set the size of the playing field, the number of pursuers and the number of obstacles as shown below. The method of random generation of the playing field is applied so that the player always has a chance to reach the goal. Otherwise, overgeneration takes place. Two launch modes are available: normal --profile=production and developer mode --profile=dev, in which only one chaser moves. By modifying the *.properties files, you can customize the characters that display elements of the playfield, as well as customize the colors displayed.

*** Installation ***
cd src
mkdir target
curl https://repo1.maven.org/maven2/com/beust/jcommander/1.78/jcommander-1.78.jar -o ../Game/lib/jcommander-1.78.jar
curl https://repo1.maven.org/maven2/com/diogonunes/JCDP/4.0.2/JCDP-4.0.2.jar -o ../Game/lib/JCDP-4.0.2.jar
javac -d target/ -sourcepath Game/src/main/java/ -cp Game/lib/\*  Game/src/main/java/game/app/Program.java ChaseLogic/src/main/java/chase/logic/*.java
cp -r Game/src/main/resources/*.* target
cd target
jar xf ../Game/lib/jcommander-1.78.jar
jar xf ../Game/lib/JCDP-4.0.2.jar
rm -rf META-INF
cd ..
jar cmf Game/manifest.txt game.jar -C target .
rm -rf target

*** Usage ***
java -jar game.jar --enemiesCount=10 --wallsCount=10 --size=30 --profile=production

*** Deletion ***
rm game.jar

*** Requirements ***
Java 1.8, Maven
