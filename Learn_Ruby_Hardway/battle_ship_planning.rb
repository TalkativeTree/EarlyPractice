Need 3 classes
 * Battleship Game
 	*Player << BattleShip
 	*computer
 	*board


1. start game
2. Declare number of players


BattleShip
 State
 * BOARD
 * ships
 * 
 * Finished

 Variables
 * start game
 * place ship
 * unload aresenal
 * damage ship
 * destroy ship (wrecked)
 * 


Battleship -----> Start Game ------> Player boards ------> start round ------> each round   

                  Create Players -----> Player 1 --------> places ships -----> shoots salvo
                       
                                 -----> Player 2 --------> places ships -----> declares hits
                                        Player 1      ---> put hits/mised on board
                                        Player 2      ---> show wreckage where hits occurred 
                                        
                                 -----> Player 2                        -----> shoots salvo

                                 -----> Player 1                        -----> declares hits
                                        Player 1      ---> put hits/mised on board
                                        Player 2      ---> show wreckage where hits occurred 

                                                                        -----> determine if winner

                                                    