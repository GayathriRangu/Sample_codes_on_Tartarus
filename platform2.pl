
platform2:-
consult("C:/Users/Maithri.R/Desktop/platform_windows.pl"),
start_tartarus(localhost,50002,2),                                 %the platform is instantiated with ip=localhost, port=50002, token=2
move_agent(agent1,(localhost,50003)).                              %the agent is moved to another platform having ip=localhost and port=50003