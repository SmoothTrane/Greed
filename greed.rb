class greed

  def take_input
    puts 'Where do you want to go in the grid? Please enter N for North E for East S for South W for West'
    direction = gets.chomp
  end







  def generate_grid
    $grid = Array[ [6,7,8,1,9] , [3,5,6,9,2] ]
    $randIndexOne = 1;
    $randIndexTwo = 2;
    $grid[$randIndexOne][$randIndexTwo] = "@"
    $grid.inspect
    take_input
  end


def remove_key
  $grid.each_index do |i|
    j = $grid[i].index '@';
    if j
      $randIndexOne = i
      $randIndexTwo = j
      $grid[i].delete("@")
      
    end
  
  end
end


  def move(direction)
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
        if i == @array.length - 1
          puts 'done'
          break;
        end
      end
    end



      

    elseif direction == "E"
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
    elseif direction == "S"

 @array.each_index do |i|
        j = @array[i].index '@';
        if j
          @val = i
          @secondVal = j      
        end 
      end
      num = @array[@val + 1 ][@secondVal]
      num.times do |i|
        @array[@val].delete_at(@secondVal)
        @val += 1
        if i == num - 1
          @array[@val][@secondVal] = "@"
        end
        if i == @array.length + 1 
          puts 'done'
          break;
        end
    end
      
      
    elseif direction == "W"
      @array.each_index do |i|
      j = @array[i].index '@';
      if j
       @val = i
        @secondVal = j
        
      end
    
    end


  num = @array[@val][@secondVal - 1]
  num.times do |i|
    puts @secondVal
    @secondVal -= 1
    
    @array[@val].delete_at(@secondVal)
    
  if @secondVal == 0
    puts 't';
    break;
  end
  ## if the index of secondVal  is the last index of the array, break loop


  end



     ## then get the index that is in [$randIndexOne ][$randIndexTwo - 1]
     ##if his is null call game over, else delete tha index
    ## keep deleting the index num times, if any index is null, game over
    ## if the loop ends, replace the current n with @


      
    else
      puts 'Please enter a North East South or West'
    end



  end


  def stop_game

  end




  generate_grid
end