require 'directors_database'
require 'pp'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)

  result = {}
  director_number= 0

  until director_number == nds.size do
    director = nds[director_number]
    result[director[:name]] = gross_for_director(director)
    director_number += 1
  
  end

  result

end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

 # directors_totals(directors_database)[director_data[:name]]


 
   #binding.pry


   total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total

end
