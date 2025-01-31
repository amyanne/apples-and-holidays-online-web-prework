require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  supply = String.new
  holiday_hash.each do |season, data|
    data.each do |attribute, value|
      if holiday_hash[:summer][:fourth_of_july]
       supply = holiday_hash[:summer][:fourth_of_july][1]
    end 
  end
  end
  supply
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash.each do |season, data|
    data.each do |attribute, value|
      if holiday_hash[:winter]
        holiday_hash[:winter][:christmas].push(supply)
        holiday_hash[:winter][:new_years].push(supply)
        end
    end 
  end 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash.each do |season, data|
    data.each do |attribute, value|
      if holiday_hash[:spring][:memorial_day]
        holiday_hash[:spring][:memorial_day].push(supply)
        
      end
    end 
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
 
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  
  
  holiday_hash.each do |season, data|
    puts clean_word(season) + ":"
    data.each do |attribute, array_of_values|
      puts "  #{clean_word(attribute)}: #{array_of_values.join(", ")}"
    end
  end
end

def clean_word(string)
  string = string.to_s
  string = string.gsub("_", " ")
  array = string.split(" ")
  array.each_with_index do |word, index|
  array[index] = word.capitalize 
end
 string = array.join(" ")
  string = string.gsub("_", " ")
  string
  
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_array = Array.new
  holiday_hash.each do |season, data|
    data.each do |attribute, value|
      if holiday_hash[season][attribute].include?("BBQ")
        holiday_array.push(attribute)
      end
     end
end
holiday_array
end







