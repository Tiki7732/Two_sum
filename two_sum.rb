def bad_two_sum?(array, target_sum)
    array.each_with_index do |num1, ind|
        array[ind+1..-1].each do |num2|
            return true if num1 + num2 == target_sum
        end
    end
    false
end
# O(n^2) because you are running through the array twice
# O(1) space
 
def okay_two_sum(array, target_sum)
    array.sort
    i = 0
    j = array.length - 1
    while i < j
        case (array[i] + array[j]) <=> target_sum
        when -1
            i += 1
        when 0
            return true
        when 1
            j -= 1
        end
    end
    false
end
# O(nlogn) time
# O(n) space


arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) 
p bad_two_sum?(arr, 10)

p okay_two_sum(arr, 6)
p okay_two_sum(arr, 10)