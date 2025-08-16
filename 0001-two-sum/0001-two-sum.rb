
def two_sum(nums, target)
    value = {}

    nums.each_with_index do |num, index|
        subtracted_value = target - num
        if value.has_key? subtracted_value
            return [value[subtracted_value],index]
        else
            value[num] = index
        end
    end
    return false   
end