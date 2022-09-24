1.
RELATED FILES: platform1.pl, platform2.pl, platform3.pl, platform4.pl, platform5.pl

Instantiate 5 tartarus platforms
Create agent at platform 1
make agent move from 1-2, 2-3, 3-4, 4-5, 5-1
->5 .pl files are created each representing a new platform with different tkens
->In platform1.pl, node1 is a predicate name to execute all the lines of code inside it.
->handler1 is the handler defined for the agent created in this platform. Its behaviour is just to display a message.
-> after creating a mobile agent, it is moved to platform2.
_->In platform2, the platform is started with a different tokens and the received agent is moved to the next platform.
-> Similarly, the agent is moved to all the platforms and is returned to platform1.

STEPS FOR EXECUTION:
-> Open 5 swi prolog consoles
-> Initially, consult platform5 then 4,3,2,1.
-> after consulting, execution is done by the predicate names given in the respective files.
-> when the agent is moved, the message will be displayed in the console of that platform.

 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 2. 
 RELATED FILES: q2platform1.pl, q2platform2.pl

 ->Two platform files are created.
 ->In q2platform1.pl,
     *A dynamic predicate is created which defines the logic to generate random numbers list.
   -> In q2platform2,
       * we define three dynamic predicates where handler5/3 acts as a handler to the agemt and readerlist acts as a payload and the umvalue predicate sums up the list values.
       *After receiving the list, the values are added and stored in a variable.
       * Depending on this variable, whether it is greater or less than 100 is printed.
       *node2 is the predicate used to create the mobile agent.
       * Initailly, a list with 0's is sent as payload and this is returned with the randomly created list.

   STEPS TO EXECUTE:
   -> Open two swi prolog consoles.
   ->consult each of the .pl files in seperate terminals.
   ->First execute the predicate "node2." in the terminal where second agent is created 
   -> and then execute "node1." in the other terminal

 --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 3. 
 RELATED FILES: q3platform1.pl, q3platform2.pl

 ->Two platform files are created namely, q3platform1.pl and q3platform2.pl
 ->In q3platform1.pl,
    * we have defined two dynamic predictes.
    *The behaviour of the agent (agent3) is to take the values passes  and print a message and store those values in nodes called buffers and finally print the values
    *node1 os the predicate used to start the platform and create agent 
    * since, the values/3 is dynamic predicate, retracting and asserting the values is done.
    * add_payload() is used to payload the numbers
    *then the agent is moved to another patfprm whose ip=localhost and port=70501
->In q3platform2.pl,
   *handler2 is the handler of the agent , buffer1/1 buffer2/1 are the nodes that are used to store the payload values.
   *these values are added and stored in other variable called C and is printed to console.
   * node2 is the predicate used to start the platform and create a static agent
   *Since, it is a static agent , the port number of the platform and the agent will be different. 
   * run is the predicate used to execute this agent.

STEPS FOR EXECUTION:
-> Initially open two swi prolog terminals.
-> Consult each file in a different terminal. 
-> In the terminal where q3platform2 was consulted, execute the prdicate "node2."
-> after that go to the other terminal and execute the predictae "node1."
-> Now, the agent is moved to other platform and the values are displayed.
-> In platform2, execute the predicate "run." and now, the sum value is diplayed.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------