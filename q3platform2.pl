:-dynamic handler2/3,buffer1/1,buffer2/1.                                    %dynamic handlers and nodes are declared
handler2(guid,(_,_),main):-                                                  %handler1 is being defined
buffer1(A1),                                                                 %buffer1 stores the first value carried by the payload
buffer2(B1),                                                                 %buffer2 stores the second value carried by the payload
C is A1+B1,                                                                  %both the values are added
writeln("this is handler2"),                                                   % a message is displayed
writeln("sum is:"),                                                 
 writeln(C).                                                                  %printing the sum value

       

node2:-                                                                         
consult("C:/Users/Maithri.R/Desktop/platform_windows.pl"),                           
start_tartarus(localhost,70500,2),                                          %start the platform on ip=localhost and port- 70500 and token=2
create_static_agent(agent4,(localhost,70501),handler2,[1,2],                %a static agent called agent4 is created with ip=localhost, port=70501, handler2, tokens =1,2
run:-
execute_agent(agent4,(localhost,70501),handler2).                                 % executing the static agent