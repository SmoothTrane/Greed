 class Grid
  def move(dir)
    dir = direction.downcase
    if dir == "n" || dir == "north"
      @array.each_index do |i|
        j = @array[i].index '@';
        if j
          @val = i
          @secondVal = j      
        end 
      end
      num = @array[@val - 1][@secondVal]
      num.times do |i|
        @array[@val].delete_at(@secondVal)
        @val -= 1
        if i == num - 1
          @array[@val][@secondVal] = "@"
        end
        if i == @array.length -1 
          puts 'done'
          break;
        end
      end
      
    elseif dir == "e" || dir == "east"
      @array.each_index do |i|
        j = @array[i].index '@';
        if j
          @val = i
          @secondVal = j      
        end 
      end
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
    elseif dir == "s" || dir == "south"
      @array.each_index do |i|
        j = @array[i].index '@';
        if j
          @val = i
          @secondVal = j      
        end 
      end
      num = @array[@val + 1][@secondVal]
      num.times do |i|
        @array[@val].delete_at(@secondVal)
        @val += 1
        if i == num - 1
          @array[@val][@secondVal] = "@"
        end
        if i == @array.length + 1
          puts 'done'
          break
        end
      end
    elseif dir == "w" || dir == "west"
      @array.each_index do |i|
        j = @array[i].index '@';
        if j
          @val = i
          @secondVal = j      
        end 
      end
      num = @array[@val][@secondVal - 1]
      num.times do |i|
        @secondVal -= 1
        @array[@val].delete_at(@secondVal)
        if @secondVal == 0 
          puts 'done'
          break
        end
      end
    else 
      puts 'Please enter North South East or West'
    end
  end
end