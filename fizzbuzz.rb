def fizzBuzz(number)
  outputArray = []
  if number%3==0 then outputArray.push("Fizz") end
  if number%13==0 then outputArray.push("Fezz") end
  if number%5==0 then outputArray.push("Buzz") end
  if number%7==0 then outputArray.push("Bang") end
  if number%11==0 then
    outputArray.select! {|element| element == "Fezz"}
    outputArray.push ("Bong")
  end
  if number%17==0 then outputArray.reverse! end
  if outputArray.length == 0 then outputArray.push(number) end
  return outputArray.join("")
end

def fizzBuzzList(max)
  for number in 1..max
    puts(fizzBuzz(number))
  end
end

TestCase = Struct.new(:input, :output)
fizzBuzzTestCases =
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

def fizzBuzzTest(testCases)
  numPass = 0
  for test in testCases
    myOutput = fizzBuzz(test.input)
    result = (myOutput == test.output)
    puts("Input: "+test.input.to_s+", Expected Output: "+test.output+", Function Output: "+myOutput+" Result: "+result.to_s)
    if result == true then numPass+=1 end
  end
  puts("Passing "+numPass.to_s+" / "+testCases.length.to_s+""+(numPass==testCases.length ? " Success!":" ERROR"))
end

fizzBuzzList(100)
fizzBuzzTest(fizzBuzzTestCases)


