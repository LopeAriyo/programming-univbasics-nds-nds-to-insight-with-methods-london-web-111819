require 'directors_database'
require 'pp'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals()



end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director)


  total_gross = 0

  director.each do |key, value|
    #if key == :movies

      #then for each movie find the :worldwide_grosses and add that to the current total gross
      #key.each do |movie|

        #
        binding.pry


      #end
    #end
  end

total_gross
end
