# ECRIRE
def echo(str)
	return str
end

# MISE EN MAJUSCULE
def shout(str)
	return str.upcase
end

# REPETER ( AU MOINS 2 FOIS)
def repeat(str, nb=0)
	strBase = str
	if nb < 1
		return str+ " " +strBase
	else
		(nb-1).times do |i|
			str += " " +strBase
		end
	end

	return str
end

# AVOIR LES x PREMIERES LETTRES
def start_of_word(str, number)
	return str[0, number]
end

# AVOIR LE PREMIER MOT
def first_word(str)
	return str.split[0]
end

# METTRE EN CAPITALE
def titleize(str)
	wordLittle = ["and", "the"]

	str = str.split
	str.length.times do |i|
		if i == 0
			str[i].capitalize!
		elsif !wordLittle.include?(str[i])
			str[i].capitalize!
		end
	end
	return str.join(" ")
end

