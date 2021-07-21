require 'pry-byebug'

def normalized(word)
  word.strip.capitalize
end

def full_name(first_name, last_name)
  binding.pry
  normalized_first_name = normalized(first_name)
  normalized_last_name = normalized(last_name)
  normalized_first_name + " " + normalized_last_name
end

full_name("     ugo ", "LAHAye  ")
# => Ugo Lahaye

# DANS LE FICHIER 
# binding.pry

# DANS LA CONSOLE
# continue => piur finir l'exe de la fonction
# next => pour aller à la ligne suivante
# step => pour sauter à l'interieur d'une focntion
# help => pour choper la doc

# BEFORE COMMIT remove binding.pry

def +
end