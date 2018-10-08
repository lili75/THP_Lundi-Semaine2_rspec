# ADDITION
def add(nb1,nb2)
	return nb1+nb2
end

# SOUSTRACTION
def subtract(nb1,nb2)
	return nb1-nb2
end

# SOMME DES CHIFFRES D'UN TABLEAU
def sum (array)
    sum = 0
    array.each{ |param| sum+=param }
    return sum
end

# MULTIPLICATION
def multiply(nb1,nb2)
	nb1*nb2
end

# PUISSANCE
def power(nb1,nb2)
	nb1**nb2
end

# FACTORIELLE
def factorial(nb)
	compte = 1
	nb.times do |i|
		compte *= (i+1)
	end
	return compte
end
