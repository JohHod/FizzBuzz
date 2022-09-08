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
  if output_array.length == 0 then output_array.push(number) end
  return output_array.join("")
end

def fizz_buzz_list(max)
  for number in 1..max
    puts(fizz_buzz(number))
  end
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
  for test in test_cases
    my_output = fizz_buzz(test.input)
    result = (my_output == test.output)
    puts("Input: "+test.input.to_s+", Expected Output: "+test.output+", Function Output: "+my_output+" Result: "+result.to_s)
    if result == true then num_pass+=1 end
  end
  puts("Passing "+num_pass.to_s+" / "+test_cases.length.to_s+""+(num_pass==test_cases.length ? " Success!":" ERROR"))
  puts("FizzBuzz Output:")
end

puts "Enter max fizzbuzz number to print:"
user_input_max = gets.chomp.to_i
fizz_buzz_test(fizz_buzz_test_cases)
fizz_buzz_list(user_input_max)




