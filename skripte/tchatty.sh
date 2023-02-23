#!bin/bash
# nutze chatty um zu chatten. Chatty grüsst, nimmt dann name und alter entgegen bevor es mit optionalen Fragen weitergeht
# try it yourself
# load variables with data
ORTE=("Bielefeld" "Berlin" "Hamburg" "München" "Frankfurt" "Leipzig" "Köln")
ORTEgreet=("ERR:panic:doesnt_exist" "Was los dicka" "moin Diggi" "Grüzli" "Guten Tag" "Tagchen" "alaaf d'jecke")
ORTEmotto=("die es nicht gibt!" "die niemals schläft" "der Seemenschen!" "mit 'de Wiesn!" "der Banker*innen" "Stadt der Dichter und weniger Dichten!" "der kulturellen und sexuellen Vielfalt!")
ESSEN=("banane" "lasagna" "ramen" "burger" "pommes" "fisch" "carbonara" "salat")
ESSENr=("king-cron" "grep-field" "sudo Goku" "which Wendy" "Peter- | " "find / nemo" "ca -r -banana" ".tar-zahn")
userfood="banane"
userort="Berlin"
echo $ORTE
finaltext(){
for i in $ORTE
    do	
        if [[ ($ORTE[i]) = $userort ]]
		    then
		    orteGREET=($ORTEgreet[i])
		    orteMOTTO=($ORTEmotto[i])
	    else
		    orteGreet="Hallo"
		    orteMOTTO="die so toll ist!"
	    fi
    done 
for j in $ESSEN
do
	if [[ ($ESSEN[j]) = $userfood ]]
		then
		essenR=($ESSENr[j])
	else
		essenR="Bernard v Bearnaise"
	fi
echo "$orteMOTTO $username ,aus $userort , der Stadt, $orteMOTTO Oder etwa nicht?"
echo -e
echo "Dein Techstarter-Motivations-Maskottchen ist uebrigens: $essenR !"
}
finaltext