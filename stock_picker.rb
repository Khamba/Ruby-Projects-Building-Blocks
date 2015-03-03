def stock_picker(arr)
	len = arr.length
	max_profit = 0
	pi, pj = nil, nil
	(len-1).times do |i|
		(len-1).times do |j|
			if arr[j+1] - arr[i] > max_profit && (j+1) > i
				max_profit = arr[j+1] - arr[i]
				pi = i
				pj = j+1
			end
		end
	end
	return [pi, pj]
end

p stock_picker([17,3,6,9,15,8,6,1,10])