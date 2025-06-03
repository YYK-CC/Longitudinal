*************************************
* PSID Individual ID Code 
* Longitudinal Data Analysis Projects
*************************************

* See FAQ#9 for info: https://psidonline.isr.umich.edu/Guide/FAQ.aspx
/* 
The combination of the 1968 ID and the person number uniquely identify each individual.

To identify an individual across waves use the 1968 ID and Person Number (Summary Variables ER30001 and ER30002). Though you can combine them uniquely in many ways we find that many researchers use the following method:

(ER30001 * 1000) + ER30002


(1968 ID multiplied by 1000) plus Person Number
*/ 

gen PID = (ER30001 * 1000) + ER30002
lab var PID "Participant Identifier"

order PID //putting at beginning of dataset

duplicates list, sepby(PID) //checking for duplicates by pid

/* you should get this output 

Duplicates in terms of all variables

(0 observations are duplicates)

*/
