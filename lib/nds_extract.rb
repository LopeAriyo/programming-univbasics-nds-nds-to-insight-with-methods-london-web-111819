require 'directors_database'
require 'pp'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(database)

list_of_directors_totals = {}

  database.each do |director|
    director.each do |key, value|
      if key == :name
         #if value == gross_for_director(nds)[:name]

          list_of_directors_totals[value] = gross_for_director(database)

          #binding.pry
        #end

      end
    end
  end

  return list_of_directors_totals

end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(database)

#search the information of the director give.
#then for each movie find the :worldwide_grosses and add that to the current total gross

  total_gross = 0
  i = 0

  until i == database[:movies].length do
    total_gross += database[:movies][i][:worldwide_gross]
    i += 1
  end

  total_gross

end
