class Grid

  def initialize
    @array = [ [1,2,2,1,1], [1,1,2,2,2,1], [1,1,1,1,1,1] ]
    rand = Random.new
    firstIndex = rand.rand(0..@array.length - 1)
    secondIndex = rand.rand(0..@array[firstIndex].length - 1)
    @array[firstIndex][secondIndex] = "@"
    display_grid
    # for the first val, 0 to @array.length
    # second val is 0 to @array[val].length


  end 

  def display_grid
    p "Here is your grid, you must move the @ symbol across the map in order to make it the last element"
    p @array
  end


  def move(dir)
    dir = dir.downcase
    
    
    if dir == "n" || dir == "north"
      @array.each_index do |i|
        j = @array[i].index '@';
        if j
          @val = i
          @secondVal = j      
        end 
      end
      if @val >= 0
        num = @array[@val - 1][@secondVal]
        num.times do |i|
          p @val
          @array[@val].delete_at(@secondVal)
          @val -= 1
          if i == num - 1
            @array[@val][@secondVal] = "@"
          end
         
        end
        p @array
      end
      
    elsif dir == "e" || dir == "east"
      @array.each_index do |i|
        j = @array[i].index '@';
        if j
          @val = i
          @secondVal = j      
        end 
      end
      if @secondVal < @array[@val].length - 1
        num = @array[@val][@secondVal + 1]
        num.times do |i|
         @array[@val].delete_at(@secondVal)
          if i == num - 1
            @array[@val][@secondVal] = "@"
          end
          if @secondVal == @array[@val].length
            puts 't'
            break;
          end
        end
        p @array
      end
      
      
    elsif dir == "s" || dir == "south"
      @array.each_index do |i|
        j = @array[i].index '@';
        if j
          @val = i
          @secondVal = j      
        end 
      end
      num = @array[@val + 1][@secondVal]
      num.times do |i|
        p @val
        
        @array[@val].delete_at(@secondVal)
        @val += 1
        if i == num - 1
          @array[@val][@secondVal] = "@"
        end
        if i == @array.length + 1
          puts 'done'
          break
        end
        p @array
      end
      
      
    elsif dir == "w" || dir == "west"
      @array.each_index do |i|
        j = @array[i].index '@';
        if j
          @val = i
          @secondVal = j      
        end 
      end
      if @secondVal < 0
        num = @array[@val][@secondVal - 1]
        num.times do |i|
          @secondVal -= 1
          p @secondVal
          @array[@val].delete_at(@secondVal)
          if i == num - 1
            @array[@val][@secondVal] = "@"
          end
        end
        p @array
      end
    else 
      puts 'Please enter North South East or West'
    end
  end




end