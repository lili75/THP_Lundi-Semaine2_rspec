# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and 
#then add an "ay" sound to the end of the word.

def translate(str)
	voyelle = ["a","e","i","o","u","y"]
	strCon = ""
	tabMot = str.split()
	tabReturn = []


	#TRADUIS 2 MOTS OU PLUS
	if str.split().length > 1
		tabMot.each do |mot|
			mot = translate(mot)
			tabReturn << mot
		end
		return tabReturn.join(" ")
	end

	# TRADUIS MOT COMMENCANT PAR VOYELLE
	if voyelle.include?(str[0])
		return str+"ay"
	# TRADUIS MOT COMMENCANT PAR CONSONNE
	else
		str.length.times do |i|
			if !voyelle.include?(str[i])
				strCon += str[i]
				# puts "CONSONNE!"
			else
				# puts "voyelle"	
				# puts "STR[#{i}] = #{str[i]}"
				if str[i-1]=="q" && str[i] == "u"
					strCon += str[i]
					return str[i+1,str.length]+strCon+"ay"
				else
					return str[i,str.length]+strCon+"ay"
				end
			end
		end
	end
	
end
