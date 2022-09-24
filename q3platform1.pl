:-dynamic handler3/3,values/3. 

handler3(guid,(_,_),main):-                       %handler is defined before the agent is created
     values(guid, A,B),                           %values is a dynamic predicate whose first paramenter is guid which is later replaced with its agent name.
     writeln("numbers moved"),                    % a message is displayed
     assert(buffer1(A)),                          %asserting the first number in a vairiable A using a node called buffer1 
     assert(buffer2(B)),                          %asserting the second number in a variable B using the node called buffer2
     writeln(A),                                  %printing the firsat value to console
     writeln(B).                                  %printing the second value to console

node1:-
     consult("C:/Users/Maithri.R/Desktop/platform_windows.pl"), 
     start_tartarus(localhost,7000,1),                                          
     create_mobile_agent(agent3,(localhost,7000),handler3,[1,2]),                               % a mobile agent, named agent3 is created
     retractall(values(_,_,_)),                                                                 % values/3 is dynamic hence it is better to retract the variables first
     assert(values(guid,10,20)),                                                                % asserting numbers to the variables. guid is replaced by agent3 
       add_payload(agent3,[(values,3)]),                                                         %payload is being added to the agent 
      move_agent(agent3,(localhost,70501)).                                                      %the agent is moved to another platform 

