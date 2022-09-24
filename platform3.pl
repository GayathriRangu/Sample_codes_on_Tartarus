
platform3:-
consult("C:/Users/Maithri.R/Desktop/platform_windows.pl"),
start_tartarus(localhost,50003,3),                                 %the platform is instantiated with ip=localhost, port=50003, token=3
move_agent(agent1,(localhost,50004)).                               %the agent is moved to another platform having ip=localhost and port=50004