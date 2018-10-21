require 'pry'

# your code goes here
def begins_with_r(array)
  answer = nil
  array.each do |element|
    if element.start_with?('r')
      answer = true
    else
      answer = false
    end
  end
  answer
end

def contain_a(array)
  new_array = []
  array.each {|element| new_array << element if element.include?('a')}
  new_array
end

def first_wa(array)
  new_array = []
  array.each do |element|
    element = element.to_s
    if element.start_with?('wa')
      new_array << element
    end
  end
  new_array[0]
end

def remove_non_strings(array)
  new_array = []
  array.each do |element|
    if element.class == String
      new_array << element
    end
  end
  new_array
end

def count_elements(array)
  count = {}
  binding.pry
end

def merge_data(key, value)
  merged_data = key
  merged_data.each do |hash|
    value.each do |more_info|
      more_info.each do |k, v|
        v.each do |v_key, v_value|
          if hash[:first_name] == k
            hash[v_key] = v_value
          end
        end
      end
    end
  end
  merged_data
end

def find_cool(array)
  cool_array = []
  array.each do |hash|
    if hash[:temperature] == "cool"
      cool_array << hash
    end
  end
  cool_array
end

def organize_schools(hash)
  organized_hash = {}
  organized_hash["NYC"] = []
  organized_hash["SF"] = []
  organized_hash["Chicago"] = []
  hash.each do |school, location|
    location.each do |k, v|
      if v == "NYC"
        organized_hash["NYC"] << school
      elsif v == "SF"
        organized_hash["SF"] << school
      else
        organized_hash["Chicago"] << school
      end
    end
  end
  organized_hash
end