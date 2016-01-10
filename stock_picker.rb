def stock_picker(array)
	min = array[0]								#set min to first number 
	profit = 0
	max = 0
	
	for i in 0...(array.length-1) do			#loop from first to second to last number 
		for j in (i+1)...(array.length) do	
			if array[j] - array[i] > profit		#checks if price difference is greater than profit
				profit = array[j] - array[i]	#if so, set profit to the new difference
				min = i							
				max = j							
			end
		end
	end
	p [min, max]								#print the buy and sell days 
end

stock_prices = [17,3,6,9,15,8,6,1,10]

stock_picker(stock_prices)