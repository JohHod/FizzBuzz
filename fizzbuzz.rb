def fizz_buzz(number)
  output_array = []
  if number%3==0 then output_array.push("Fizz") end
  if number%13==0 then output_array.push("Fezz") end
  if number%5==0 then output_array.push("Buzz") end
  if number%7==0 then output_array.push("Bang") end
  if number%11==0 then
    output_array.select! {|element| element == "Fezz"}
    output_array.push ("Bong")
  end
  if number%17==0 then output_array.reverse! end
  output_array.length == 0 ? output_array.push(number) : output_array.join("")
  return output_array
end

def fizz_buzz_list(max)
  (1..max).each { |number|
    puts(fizz_buzz(number))
  }
end

TestCase = Struct.new(:input, :output)
fizz_buzz_test_cases =
  [
    TestCase.new(15, "FizzBuzz"),
    TestCase.new(21, "FizzBang"),
    TestCase.new(105, "FizzBuzzBang"),
    TestCase.new(33, "Bong"),
    TestCase.new(65, "FezzBuzz"),
    TestCase.new(195, "FizzFezzBuzz"),
    TestCase.new(143, "FezzBong"),
    TestCase.new(255, "BuzzFizz")
  ]

def fizz_buzz_test(test_cases)
  num_pass = 0
  test_cases.each { |test|
    my_output = fizz_buzz(test.input)
    result = (my_output == test.output)
    puts("Input: #{test.input}, Expected Output: #{test.output}, Function Output: #{my_output} Result: #{result})")
    if result == true then num_pass += 1 end
  }
  puts("Passing #{num_pass} / #{test_cases.length} #{(num_pass==test_cases.length ? " Success!":" ERROR")}")
  puts("FizzBuzz Output:")
end
#
# argument_rules = [];
# rules_definition = {
#   '3' => 'Fizz',
#   '5' => 'Buzz',
#   '7' => 'Bang',
#   '11' => 'Bong',
#   '13' => 'Fezz',
#   '17' => 'Reverse'
#
# }
# ARGV.each do|a|
#   puts "Argument: #{a}"
# end
puts "Enter max fizzbuzz number to print:"
user_input_max = $stdin.gets.chomp.to_i
fizz_buzz_test(fizz_buzz_test_cases)
fizz_buzz_list(user_input_max)




