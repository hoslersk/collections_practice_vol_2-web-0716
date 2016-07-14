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
  count_arr = []
  count_hash = {}
  counter = 0
  array.each do |key, value|
    
  end
end
