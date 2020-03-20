def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  index = 0
  new_array = []
  src.count.times do |index|
    new_array << "I love #{src[index].first} and #{src[index].last} on my pizza"
    index += 1
  end
  new_array
end

def find_greater_pair(src)
  index = 0
  new_array = []
  while index < src.count do
    new_array << src[index].sort.last
    index += 1
  end
  new_array
end

def total_even_pairs(src)
  index = 0
  result = 0
  while index < src.count do
    if ((src[index].first % 2 == 0) && (src[index].last % 2 == 0)) 
      result += src[index].first
      result += src[index].last
    end
    index += 1
  end
  result
end
