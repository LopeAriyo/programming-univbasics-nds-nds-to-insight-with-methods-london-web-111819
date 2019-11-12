require 'directors_database'
require 'pp'

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

  gross = 0
  i = 0

  while i < director_data[:movies].length do
    gross += director_data[:movies][index][:worldwide_gross]
    i += 1
  end

  gross

end
