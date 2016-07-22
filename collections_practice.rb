require 'pry'

# your code goes here
def begins_with_r(array)
  if array.all? do |element|
    element.start_with?("r")
    end
    return true
  else
    return false
  end
end

def contain_a(array)
  array_a = []
  array.each do |element|
    if element.include?("a")
      array_a << element
    else
      false
    end
  end
  return array_a
end

def first_wa(array)
  array.any? do |element|
    if element.class == String
      if element.start_with?("wa") == true
        return element
      else
        false
      end
    else
      false
    end
  end
end

def remove_non_strings(array)
  array2 = []
  array.each do |element|
    if element.class == String
      array2 << element
    else
      false
    end
  end
  return array2
end


def count_elements(array)
  #count_arr = []
  #count_hash = Hash.new(0)
  #counter = 0
  array.each do |hash|
    hash[:count] = 0
    name = hash[:name]
    array.each do |count_hash|
      if count_hash[:name] == name
        hash[:count] += 1
      end
    end
    #hash.each do |key, value|
      #count_hash[key] = value
      #count_hash[:count] += 1
      #count_arr[counter] = count_hash
      #count_arr[counter] = (count_hash[key] = value)
      #count_arr[counter] = (count_hash[:count] += 1)
      #counter += 1
    #end
  end
  return array.uniq
end
#result --> [{:name=>"blake", :count=>2}, {:name=>"ashley", :count=>1}]

def merge_data(keys, data)
  #merge_arr = []...?
  keys.each do |person|
    data.each do |name|
      name.each do |details, detail|
        #merge_arr << person.merge(detail)...?
        merged_data = person.merge(detail)
      end
    end
  end
  return merged_data.uniq #merge_arr.uniq...?
end
#result --> [{:first_name=>"blake", :awesomeness=>10, :height=>"74",
# :last_name=>"johnson"}, {:first_name=>"ashley", :awesomeness=>9,
# :height=>60, :last_name=>"dubs"}]

def find_cool(cool)
  cool_arr = []
  cool_hash = {}
  cool.each do |list|
    list.each do |person, temp|
      if temp == "cool"
        cool_arr << list
        #cool_hash[person] = temp
      end
    end
  end
  return cool_arr #cool_hash
end
#result --> [{:name=>"blake", :temperature=>"cool"}]

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, schools|
    schools.each do |school, location|
      if organized_schools.include?(location)
        organized_schools[location] << name
      else
        organized_schools[location] = []
        organized_schools[location] << name
      end
    end
  end
  return organized_schools
end
#result --> {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
# "SF"=>["dev boot camp", "Hack Reactor"], "Chicago"=>["dev boot camp chicago"]}
