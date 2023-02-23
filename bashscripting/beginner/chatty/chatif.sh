#!/bin/bash
# nutze chatty um zu chatten. Chatty gruesst, nimmt dann name und alter entgegen bevor es mit optionalen Fragen weitergeht
# try it yourself
# load variables with data
ORTE=("Bielefeld" "Berlin" "Hamburg" "Muenchen" "Frankfurt" "Leipzig" "Koeln")
ORTEgreet=("FEHLER:panik:doesnt_exist" "Was los dicka" "moin Diggi" "Gruezli" "Guten Tag" "Tagchen" "alaaf de jecke")
echo ${ORTE[@]}
echo ${ORTEgreet[@]}
vari="Leipzig"
userort="Frankfurt"
echo "${vari}${userort}" 
if [[ "${vari}" = "${userort}" ]]
then
    orteGREET=${ORTEgreet[1]}
    orteMOTTO="testmotto"
else
    orteGREET="Hallo"
    orteMOTTO="die so toll ist!"
fi
echo "$orteGREET"
echo "$orteMOTTO"