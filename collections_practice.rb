# your code goes here

require 'pry'


def begins_with_r(tools_array)
  #final_array = []
  result = true

  tools_array.each do |tool|
    #binding.pry
    if tool[0] != "r"
      result = false
    end
  end

  # final_array.map do |letter|
  #   if letter == "r"
  #     return true
  #   else
  #     return false
  #   end
  # end
  result
end


def contain_a(array)
  final_array = []

  array.each do |element|
    if element.include?("a")
      final_array << element
    end
  end

  final_array
end


def first_wa(array)
  array.find do |element|
    element.to_s.start_with?("wa")
  end
end


def remove_non_strings(array)
  final_array = []
  array.each do |element|
    if element.is_a?(String)
      final_array << element
    end
  end

  final_array
end


def count_elements(array)

  array.each do |top_hash|
    top_hash[:count] = 0
    name = top_hash[:name]
    #binding.pry
    array.each do |element|
      if element[:name] == name
        top_hash[:count] += 1
      end
    end

  #  binding.pry
  end.uniq

end


# def merge_data(persons, attributes)
#   persons.each_with_object([]) do |person, return_array|
#     attributes.each do |attribute|
#       names = attribute.keys
#       names.each do |name|
#         if name == person[:first_name]
#           person = attribute
#         end
#       end
#       #binding.pry
#     end
#     #binding.pry
#   end
#
#
# end

# [
#     {
#          :first_name => "blake",
#         :awesomeness => 10,
#              :height => "74",
#           :last_name => "johnson",
#               :motto => "Have a koala-ty day!"
#
#     },
#     {
#          :first_name => "ashley",
#         :awesomeness => 9,
#              :height => 60,
#           :last_name => "dubs",
#               :motto => "I dub thee, 'Lady Brett Ashley'."
#
#     }
# ]

def find_cool(array)
  final_array = []

  array.each do |element|
    final_array << element if element[:temperature] == "cool"
  end
  final_array
end


def organize_schools(schools)
  schools.each_with_object({}) do |(key, value), return_hash|
    #binding.pry
    if !return_hash[value[:location]]
      return_hash[value[:location]] = []
      return_hash[value[:location]] << key
    else
      return_hash[value[:location]] << key
    end

    # return_hash
    # binding.pry

  end

end

# {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
#  "SF"=>["dev boot camp", "Hack Reactor"],
#  "Chicago"=>["dev boot camp chicago"]}
