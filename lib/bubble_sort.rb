require 'pry'
arr = [2,0,1,3,4,5]

# if arr[0] > arr[1]

new_arr = [2,0,1,3,4,5]
i = 1

# for (i = 1; i <= arr.length: i++)
# arr[0] > arr[i ] ? new_arr[i] = arr[0] : new_arr[0] = arr[0]



# arr.each {|x| arr[x] > arr[i] ? new_arr[i]  = arr[x] : new_arr[x] = arr[x]; i += 1  }

while i <= arr.length
  binding.pry
 arr[0] > arr[i] ? new_arr[i]  = arr[0] : new_arr[0] = arr[0]
 i += 1
end
new_arr
