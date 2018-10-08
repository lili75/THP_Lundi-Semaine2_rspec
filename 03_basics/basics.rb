# METHODE POUR SAVOIR QUI EST LE PLUS GRAND
def who_is_bigger(a,b,c)
	if a == nil || b == nil || c == nil
		return "nil detected"
	elsif a >= b && a >= c
		return "a is bigger"
	elsif b >= a && b >= c
		return "b is bigger"
	else
		return "c is bigger"
	end
end

# REVERSE puis MAJUSCULE puis PAS DE "A", "L", "T"
def reverse_upcase_noLTA(str1)
	str1.reverse!.upcase!
	str1.gsub!(/[LTA]/, '')

	return str1
end

# 42 EST IL PRESENT?
def array_42(tab)
	return tab.include?(42)
end

# ON MET TOUT DANS UN TABLEAU, REVERSE, MULTIPLE PAR 2
# SUPPRIME SI DIVISIBLE PAR 3, UNIQUE, TRIE
def magic_array(tab)
	tab.flatten.reverse!.map! {|a| a*2}.delete_if {|a| a%3 == 0}.uniq.sort
end
