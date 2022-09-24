
%this is the handler code for agent1
:-dynamic handler1/3.

node1:-
      consult("C:/Users/Maithri.R/Desktop/platform_windows.pl"),                         %consulting the platform file
      start_tartarus(localhost,50001,1),                                                 %nstantiate the platform using predicate
      create_mobile_agent(agent1,(localhost,50001),handler1,[1,2,3,4,5]),                %a mobile agent is created of name agent1, Ip is localhost, port=50001, handler is handler1, tokens are 1,2,3,4,5     
      move_agent(agent1,(localhost,50002)).                                             %the agent is moved to another platform having ip=localhost, port=50002

handler1(guid,(_,_),main):-                                                             %handler of the agent1
            writeln("This is handler1").                                                 %it prints a message
