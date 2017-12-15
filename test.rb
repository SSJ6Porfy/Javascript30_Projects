
def hour_glass_sum(arr)

    max_sum = nil
    row = 0

    while (row + 2) < arr.length
        col = 0
        while (col + 2) < arr[0].length
           p top = arr[row][col..(col + 2)]
           p mid = arr[row + 1][col + 1]
           p last = arr[(row + 2)][col..(col + 2)]
           p "break"
            curr = (top + [mid] + last).inject(0,:+)
            max_sum = curr if curr > max_sum || max_sum == nil
            col += 1
        end
        row += 1
    end

    max_sum
end

def find_median_sorted_arrays(nums1, nums2)
        
    len1 = nums1.length
    if len1 == 0
        mid1 = 0
    else
        mid1 = len1 / 2
    end
    
    if len1.odd?
        mid1 = nums1[mid1]
    elsif len1 == 0
        mid1 = 0
    else
        mid1 = ((nums1[mid1] + nums1[mid1 - 1]) / 2.0)
    end
    
    len2 = nums2.length
    
    if len2 == 0
        mid2 = 0
    else
        mid2 = len2 / 2
    end
    mid2 = len2 / 2
    if len2.odd?
        mid2 = nums2[mid2]
    elsif len2 == 0
        mid2 = 0
    else
        mid2 = ((nums2[mid2] + nums2[mid2 - 1]) / 2.0)
    end

    p mid1
    p mid2
 
    return (mid1 + mid2) / 2
end

arr1 = [1, 1]
arr2 = [1, 2]

# p find_median_sorted_arrays(arr1, arr2)

arr = [1, 2, 3, 4]
def productify(arr)
    products = Array.new(arr.length, 1)
    
    lower_prod = 1
    0.upto(arr.size - 1) do |i|
        products[i] = products[i] * lower_prod
        lower_prod = lower_prod * arr[i]
    end
    
    upper_prod = 1
    (arr.size - 1).downto(0) do |i|
        products[i] = products[i] * upper_prod
        upper_prod = upper_prod * arr[i]
    end
    
    products
end

def binary(num)
    result = ''

    while num > 0
        result = (num % 2).to_s + result
        num /= 2
    end

    result
end

# p binary(30)



 arr = [30,
1,
4,
9,
16,
25,
36,
49,
64,
81,
100,
121,
144,
169,
196,
225,
256,
289,
324,
361,
400,
441,
484,
529,
576,
625,
676,
729,
784,
841,
907 ]


def prime?(n)
    
    (2..Math.sqrt(n)).each do |num|
        return false if n % num == 0
    end
    
    true
end

arr.each do |num|
    if num == 1
        puts 'Not prime'
    elsif prime?(num)
        puts 'Prime'
    else
        puts 'Not prime'
    end
end

