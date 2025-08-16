# @param {String} s
# @return {Boolean}
def is_valid(s) 
    hash_val = {"(" => ")" ,"[" => "]", "{" => "}"}
    stack_array = []
    val = false
    s.chars.each do |x|
        if hash_val.keys.include? x
            stack_array.push(x)
            val = false
        elsif hash_val.values.include? x
            c = stack_array.pop()
            if hash_val[c] != x
                val = false
                break
            else
                val = true
            end
        else
            val = false
        end
    end
    if !stack_array.empty?
        val = false
    end
    val
end