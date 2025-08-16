# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    merge_array = nums1 + nums2
    merge_array.sort!
    size = merge_array.size
    counter = size/2
    if size.even?
        return (merge_array[counter] + merge_array[counter - 1]).to_f / 2
    else
        return merge_array[counter]
    end

    
end
