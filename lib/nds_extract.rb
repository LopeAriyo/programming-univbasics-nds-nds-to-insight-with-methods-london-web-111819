require 'directors_database'
require 'pp'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)

  result = {}
  director_index = 0

  until director_index == nds.size do
    #director = nds[director_index]
    #result[director[:name]] = gross_for_director(director)
    director_index += 1
    binding.pry
  end

  #result

end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

 # directors_totals(directors_database)[director_data[:name]]

end
