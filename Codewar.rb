# Task1: Given an array of strings and an integer k, you need to return the longest possible string consisting of k consecutive strings from the array concatenated together.
def longest_consec(strarr, k)
    return "" if strarr.length == 0 || k > strarr.length || k <= 0
    
      string_length = ""
      strarr.each_index do |i|
        str = strarr[i...i+k].join
        string_length = str if str.length > string_length.length
      end
      string_length
end

puts longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2)

# Task2 
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. Additionally, if the number is negative, return 0 (for languages that do have them).

def solution(num)
    sum=0
    for x in 1...num
      sum+=x if(x%3==0 || x%5==0)
    end
    return sum
  end

#  Đã làm 1 số bài nhưng quên push lên git nên không có trong này