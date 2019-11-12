require 'directors_database'
require 'pp'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)

list_of_directors_totals = {}

  nds.each do |director|
    director.each do |key, name|
      if key == :name

          list_of_directors_totals[name] = gross_for_director(name)

          #binding.pry

      end
    end
  end

  return list_of_directors_totals
  
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director)

#search the information of the director give.
#then for each movie find the :worldwide_grosses and add that to the current total gross

  total_gross = 0

  director.each do |key, value|
    if key == :movies
      value.each do |movie|

       total_gross += movie[:worldwide_gross]

        #binding.pry

      end
    end
  end

total_gross

end
