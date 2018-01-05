
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

# arr.each do |num|
#     if num == 1
#         puts 'Not prime'
#     elsif prime?(num)
#         puts 'Prime'
#     else
#         puts 'Not prime'
#     end
# end

def sudoku2(grid)
    
    i = 0
    
    while i < grid.length
        hash = Hash.new(0)
        j = 0

        while j < grid[0].length
            hash[grid[i][j]] += 1
            return false if hash[grid[i][j]] > 1 && grid[i][j] != '.'
            j += 1
        end
        i += 1
    end

    i = 0

    while i < grid[0].length
        hash = Hash.new(0)
        j = 0

        while j < grid.length
            hash[grid[j][i]] += 1
            return false if hash[grid[j][i]] > 1 && grid[j][i] != '.'
            j += 1
        end
        i += 1
    end

    true && grid_builder(grid)
end

def grid_builder(grid)
    grid1 = Hash.new(0)
    grid2 = Hash.new(0)
    grid3 = Hash.new(0)
    grid4 = Hash.new(0)
    grid5 = Hash.new(0)
    grid6 = Hash.new(0)
    grid7 = Hash.new(0)
    grid8 = Hash.new(0)
    grid9 = Hash.new(0)
    
    i = 0

    while i < grid.length

        j = 0

        while j < grid[0].length
            grid1[grid[i][j]] += 1 if i.between?(0,2) && j.between?(0,2)
            grid2[grid[i][j]] += 1 if i.between?(0,2) && j.between?(3,5)
            grid3[grid[i][j]] += 1 if i.between?(0,2) && j.between?(6,8)
            grid4[grid[i][j]] += 1 if i.between?(3,5) && j.between?(0,2)
            grid5[grid[i][j]] += 1 if i.between?(3,5) && j.between?(3,5)
            grid6[grid[i][j]] += 1 if i.between?(3,5) && j.between?(6,8)
            grid7[grid[i][j]] += 1 if i.between?(6,8) && j.between?(0,2)
            grid8[grid[i][j]] += 1 if i.between?(6,8) && j.between?(3,5)
            grid9[grid[i][j]] += 1 if i.between?(6,8) && j.between?(6,8)
            
            return false if grid1[grid[i][j]] > 1 && grid[j][i] != '.' 
            return false if grid2[grid[i][j]] > 1 && grid[j][i] != '.'
            return false if grid3[grid[i][j]] > 1 && grid[j][i] != '.'
            return false if grid4[grid[i][j]] > 1 && grid[j][i] != '.'
            return false if grid5[grid[i][j]] > 1 && grid[j][i] != '.'
            return false if grid6[grid[i][j]] > 1 && grid[j][i] != '.'
            return false if grid7[grid[i][j]] > 1 && grid[j][i] != '.'
            return false if grid8[grid[i][j]] > 1 && grid[j][i] != '.'
            return false if grid9[grid[i][j]] > 1 && grid[j][i] != '.'
            
            j += 1
        end
        i += 1
    end
    
    true
end

    grid = [[".",".",".","1","4",".",".","2","."], 
    [".",".","6",".",".",".",".",".","."], 
    [".",".",".",".",".",".",".",".","."], 
    [".",".","1",".",".",".",".",".","."], 
    [".","6","7",".",".",".",".",".","9"], 
    [".",".",".",".",".",".","8","1","."], 
    [".","3",".",".",".",".",".",".","6"], 
    [".",".",".",".",".","7",".",".","."], 
    [".",".",".","5",".",".",".","7","."]]

    # sudoku2(grid)


    crypt = ["SEND", 
    "MORE", 
    "MONEY"]
   solution = [["O","0"], 
    ["M","1"], 
    ["Y","2"], 
    ["E","5"], 
    ["N","6"], 
    ["D","7"], 
    ["R","8"], 
    ["S","9"]]

    def isCryptSolution(crypt, solution)
        
            hash = {}
            
            solution.each { |key_pair| hash[key_pair[0]] = key_pair[1] }
            
            result = crypt.map { |str| str.chars.map{ |chr| hash[chr] }.join('') }
            
            result.each { |num| return false if num[0] == '0' }
            
            result = result.map(&:to_i)
            
            result[0] + result [1] == result[2]
    end

    # p isCryptSolution(crypt, solution)

stock_prices_yesterday = [10, 7, 5, 8, 11, 9]

def max_profit(arr)
    profit = nil

    0.upto(arr.length - 2).each do |i|
        (i + 1).upto(arr.length - 1).each do |j|
            curr = arr[j] - arr[i]
            profit = curr if profit.nil? || curr > profit
        end    
    end
    
    profit
end

# p max_profit(stock_prices_yesterday)
def almostIncreasingSequence(sequence)
    
    idx = 0
    while idx < sequence.length
        arr = []
        j = 0
        while j < sequence.length
            if j == idx
                j += 1
                next
            end
            break if arr.last && arr.last >= sequence[j]
            arr << sequence[j]
            return true if arr.length == sequence.length - 1
            j += 1
        end
        idx += 1
    end
    
    false
end



arr = [3, 5, 67, 98, 3]

p almostIncreasingSequence(arr)
