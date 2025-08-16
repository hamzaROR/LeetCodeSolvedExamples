# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    val = []
    max = 0
    arr = s.chars
    max_count = 0

    arr.each do |v|
        if val.include? v
            val = val[val.index(v) + 1..-1]
            val << v
            max = val.size
            if max > max_count
                max_count = max
            end
        else
            val << v
            max = max + 1
            if max > max_count
                max_count = max
            end
        end        
    end
    max_count
end