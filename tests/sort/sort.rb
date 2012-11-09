class Sort
			
	def is_array?(some_array)
		@array = some_array
		@array.kind_of?(Array)
	end
	
	def bubble_sort!(some_array)
		@array = some_array
		
		if @array.kind_of?(Array)
			sort_me_again = false
			sorted = false
			until (sorted == true)
				for i in 0...(@array.length - 1)
					if (@array[i] > @array[i+1])
						@array[i], @array[i+1] = @array[i+1], @array[i]
						sort_me_again = true
					end
									
				end
				if (sort_me_again == true)
					sort_me_again = false				
				else
					sorted = true
				end
				
			end
					
			return @array
		else
			return "Your data is not an array, idiot!"
		end
	end

	def qsort(some_array)
		@array = some_array	
		
		if @array.kind_of?(Array)
		
			for j in 0...@array.length-1	#j as the last posision in array area that haven't been sorted yet
				for i in 0...@array.length-j-1 do
					if (@array[i]>@array[@array.length-j-1]) #finding the biggest value of array data in unsorted area and pushing it to the last position of this area
						@array[i],@array[@array.length-j-1] = @array[@array.length-j-1], @array[i]
						
					end
					
				end	
			end	
			
			return @array
		else
			return "Your data is not an array, idiot!"
		end
	end
	
end

