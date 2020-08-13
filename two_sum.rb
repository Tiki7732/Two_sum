def bad_two_sum?(array, target_sum)
    array.each_with_index do |num1, ind|
        array[ind+1..-1].each do |num2|
            return true if num1 + num2 == target_sum
        end
    end
    false
end
# O(n^2) because you are running through the array twice

arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) 
p bad_two_sum?(arr, 10)