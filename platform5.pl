
platform5:-

consult("C:/Users/Maithri.R/Desktop/platform_windows.pl"),
 start_tartarus(localhost,50005,5),                                           %the platform is instantiated with ip=localhost, port=50005, token=5
 move_agent(agent1,(localhost,50001)).                                         %the agent is moved to the first platform having ip=localhost and port=50001