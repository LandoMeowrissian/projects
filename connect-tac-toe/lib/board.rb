class Board
  
  attr_reader :max_height

 def self.build_stacks(num)
  return Array.new(num) {Array.new}
 end

 def initialize(num_stacks, max_height)
  raise 'rows and cols must be >= 4' if  max_height < 4 || num_stacks < 4
  @max_height = max_height
  @stacks = Board.build_stacks(num_stacks)
 end

 def add(token, stack_idx) #stack_idx = stacks[i] & i is a subarray!
  if @stacks[stack_idx].length < @max_height #max_height = max length of each "@stacks subarray"
    @stacks[stack_idx] << token
    return true
  else
    return false
  end
 end

 def vertical_winner?(token)
  @stacks.each do |stack|
    if stack.length == @max_height && stack.all? { |ele| ele == token }
      return true
    end
  end

  false
 end

 def horizontal_winner?(token)
  (0...@max_height).each do |i|
    if @stacks.all? { |stack| stack[i] == token }
      return true
   end
  end

  return false
end
 
 def winner?(token)
  horizontal_winner?(token) || vertical_winner?(token)
 end


  # This Board#print method is given for free and does not need to be modified.
  # It is used to make your game playable.
  def print
    @stacks.each { |stack| p stack }
  end
end