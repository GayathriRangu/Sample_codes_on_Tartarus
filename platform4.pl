
platform4:-
consult("C:/Users/Maithri.R/Desktop/platform_windows.pl"), 
start_tartarus(localhost,50004,4),                                         %the platform is instantiated with ip=localhost, port=50004, token=4
move_agent(agent1,(localhost,50005)).                                      %the agent is moved to another platform having ip=localhost and port=50005