   :-dynamic  randomlist/2.
node1:-
     consult("C:/Users/Maithri.R/Desktop/platform_windows.pl"), 
     start_tartarus(localhost,8000,1), 
       randomlist(0,[]).                                              %randomlist is generated using the following predicate  
      randomlist(C,Y):-
        C>0,
        C1 is C-1,
        random(1,50,U),
        Y=[U|T],
      randomlist(C1,T).  
