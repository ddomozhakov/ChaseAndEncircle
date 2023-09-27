# ChaseAndEncircle

Colorful CLI catch-up game

The goal of the game is to get to the target and not be caught by one of the enemies. To move, enter one of the numbers (1 - left, 3 - right, 2 - down, 5 - up) and press Enter. To give up, enter the number 9. At startup, you can set the size of the playing field, the number of pursuers and the number of obstacles as shown below. The method of random generation of the playing field is applied so that the player always has a chance to reach the goal. Otherwise, overgeneration takes place. Two launch modes are available: normal --profile=production and developer mode --profile=dev, in which only one chaser moves. By modifying the *.properties files, you can customize the characters that display elements of the playfield, as well as customize the colors displayed.

*** Installation ***

sh install.sh

*** Usage ***

java -jar src/game.jar --enemiesCount=10 --wallsCount=10 --size=30 --profile=production

*** Deletion ***

rm game.jar

*** Requirements ***

Java 1.8, Maven
