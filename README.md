# Sample_codes_on_Tartarus
#written in swi-prolog

Tartarus is a multi agent system. Its acts as a platform and facilitates creating, moving, cloning of the agents. 
TASK1. Instantiate 5 Tartarus platforms. Create an agent at platform 1 and 
make that agent move from 1 to 2, 2 to 3, 3 to 4, 4 to 5 and from 5 
back to 1. Please note that each platform should have a different token 
number.
 TASK2. Create a Tartarus network with the following configuration:
• Platform 1 generates a random list of fixed size (having numbers 
between 1 and 50) continuously.
• Platform 2 reads the list from Platform 1 and depending on the 
sum of the values, prints whether the sum is greater than 100 or 
less than 100, in Platform 2.
• Please note that each platform should have a different token 
number.
 TASK3. Create two Tartarus platforms with the following configuration:
• Create a mobile agent on platform 1and let it carry two numbers 
as a payload with it to the second Tartarus platform.
• On platform 2, create a static agent which will take these two 
numbers from the mobile agent and add them and display the 
result.
• Please note that each platform should have a different token 
number

NOTE:To execute these tasks, you need to also import the platform_ubuntu.pl file which basically contains all the tartarus predicates. 
