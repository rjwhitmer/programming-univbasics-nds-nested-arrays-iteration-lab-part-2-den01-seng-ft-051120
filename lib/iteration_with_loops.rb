require 'pry'

def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  count_index = 0 
  min_value = 0 
  find_min = []
    
  while count_index < src.count do 
    count_element = 0 
    #min_value = 0 
    max_value = -1

    
    while count_element < src[count_index].count do
      if src[count_index][count_element] > max_value 
        max_value = src[count_index][count_element]
      end
   
      if max_value > src[count_index][count_element]
        min_value = src[count_index][count_element]
      end
    
      count_element += 1 
      
      #max_value = -1
      
      binding.pry
      
    end
    
    find_min << min_value
    
    max_value = -1
    
    #count_element = 0 
    
    count_index += 1 
    
    
  end
  #binding.pry 
  find_min

end