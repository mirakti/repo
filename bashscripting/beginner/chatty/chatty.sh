#!bin/bash
# nutze chatty um zu chatten. Chatty grüsst, nimmt dann name und alter entgegen bevor es mit optionalen Fragen weitergeht
# try it yourself
# load variables with data
ORTE=("Bielefeld" "Berlin" "Hamburg" "München" "Frankfurt" "Leipzig" "Köln")
ORTEgreet=("ERR:panic:doesnt_exist" "Was los dicka" "moin Diggi" "Grüzli" "Guten Tag" "Tagchen" "alaaf d'jecke")
ORTEmotto=("die es nicht gibt!" "die niemals schläft" "der Seemenschen!" "mit 'de Wiesn!" "der Banker*innen" "Stadt der Dichter und weniger Dichten!" "der kulturellen und sexuellen Vielfalt!")
ESSEN=("banane" "lasagna" "ramen" "burger" "pommes" "fisch" "carbonara" "salat")
ESSENr=("king-cron" "grep-field" "sudo Goku" "which Wendy" "Peter- | " "find / nemo" "ca -r -banana" ".tar-zahn")
endchatty(){
	echo "(w)eiter oder (e)nde?"
	read auswahl
	if [[ $auswahl = "e" ]]
		then
		exit
	else
		finaltext
	fi
}
finaltext(){
for i in ORTE
	if [[ $(ORTE[i]) = $userort ]]
		then
		orteGREET=$(ORTEgreet[i])
		orteMOTTO=$(ORTEmotto[i])
	else
		orteGreet="Hallo"
		orteMOTTO="die so toll ist!"
	fi
for j in ESSEN ()
	if [[ $(ESSEN[j]) = $userfood ]]
		then
		essenR=$(ESSENr[j])
	else
		essenR="Bernard v"
	fi
echo "$orteMOTTO $username ,aus $userort , der Stadt, $orteMOTTO Oder etwa nicht?"
echo -e
echo "Dein Techstarter-Motivations-Maskottchen ist uebrigens: $essenR !"
}
#
#
#
#
echo "Hallo, ich bin Chatty. Wie heißt du?"
read username
echo "Dein Alter:"
read useralter
if [[ $useralter -lt 20 ]]
	then
	echo "Yo Brudi $username , voll der Ehrenmensch!"		
elif [[ $useralter -le 50 ]]
	then 
	echo "Moin $username , schön mit dir zu chatten!"
else
	echo "Guten Tag $username , schön mit Ihnen zu tippen!"
fi
endchatty
echo "Dein Geburtsort:"
read userort
endchatty
echo "Lieblingsessen:"
read userfood
endchatty "e"