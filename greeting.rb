require 'pry'

# def do_three_times()
#   puts "i'm inside do_three_times"
#   # puts "There was a block" if block_given?
#   yield if block_given?
#   yield if block_given?
#   yield if block_given?
#   puts "Now I'm back in the method"
# end

# do_three_times() {puts "I'm in the block"}
# # do_three_times() do
# #   puts "im in the block"
# # end

# def square_array(array)
# squares = [] # we set up state, create a local variable to remember our return values
# array.each do |i| # start a loop
#   squares << i  # do something (which in this is counting)
# end
# squares
# end 

# def counts_letters_in_words(array)
#   letters_in_words = [] # we set up state, create a local variable to remember our return values
#   array.each do |word| # start a loop
#     letters_in_words << word.length # do something (which in this is counting)
#   end
# letters_in_words #return state / called the 'teardown'
# end

# # square_array(1,2,3,4) #=> 1,4,9,16
# count_letters_in_words(["one", "two", "three"]) #=> [3,3,5]

def return_modified(array)
  return_array = []
  array.each do |e|
    return_array << yield(e)  
  end
 return_array
end 



return_modified([1,2,3,4]) do |x| # x=>1
 x * x
end #=> 1,4,9,16
return_modified(["one", "two", "three"]){|x| x.length}