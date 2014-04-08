def nearest_larger(arr, idx)
  left = idx - 1
  right = idx + 1
  

   #"should return nil if no larger number is found"
  if arr[idx] == arr.max
    p arr[idx]
    p arr.max
     nil
  
  
    #"treats any two larger numbers like a tie" 
  elsif arr[left] > arr[idx] && arr[right] > arr[idx]
    left
  
  #"handles a case with an answer > 1 distance to the left/right"
  elsif arr[left] < arr[idx] && arr[right] < arr[idx]
     arr.index(arr.max)
 
  #"handles a simple case to the left"
  elsif arr[left] > arr[right]
    left
  
  #"handles a simple case to the right
  elsif arr[left] < arr[right]
    right
  
  #"treats any two larger numbers like a tie"  
  elsif arr[left] == arr[right]
    left
  
  end
end
