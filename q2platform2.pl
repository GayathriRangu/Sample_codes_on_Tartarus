:-dynamic handler5/3, sumvalue/2, readerlist/2.
handler5(guid,(_,_),main):-
readerlist(guid,Y),                                                          %storing the list received as payload
sumvalue([],0).                                                        %add the values of list and store in Sum variable
sumvalue([Head|Tail], Sum):-
     sumvalue(Tail,Sum1),
     Sum=Head+Sum1,
sumvalue(Y),
                                                                         %If else condition based on Sum value
(Sum>100 -> writeln("sum is grreater than 100" );
              writeln("sum is less than 100")
).



node2:-
consult("C:/Users/Maithri.R/Desktop/platform_windows.pl"),                           
start_tartarus(localhost,80001,2),  
create_mobile_agent(agent5,(localhost,80001),handler5,[1,2]),
assert(readerlist(guid,[0,0,0])),
add_payload(agent5,[(readerlist,2)]),
move_agent(agent5, (localhost,8000)).



