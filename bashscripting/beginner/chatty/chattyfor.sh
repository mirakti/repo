#!/bin/bash
ORTE=("Bielefeld" "Berlin" "Hamburg" "Muenchen" "Frankfurt" "Leipzig" "Koeln")
ORTEgreet=("FEHLER:panik:doesnt_exist" "Was los dicka" "moin Diggi" "Gruezli" "Guten Tag" "Tagchen" "alaaf de jecke")
echo ${ORTE[@]}
echo ${ORTEgreet[@]}
vari="Leipzig"
userort="Frankfurt"
echo "${vari}${userort}"
iterator=0 
while [[ "${vari}" != "${ORTE[${iterator}]}" ]]; do
    echo "${ORTE[${iterator}]}"
done 
echo ${orteGreet}
echo ${orteMotto}