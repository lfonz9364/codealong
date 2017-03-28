def to_sentence(arr)
  if arr.length <= 2
    return arr.join(' and ').capitalize
  else
    new_arr = []
    last_word = arr.last
    arr.pop
    first_word = arr.join(', ')
    new_arr.push(first_word)
    new_arr.push(last_word)
    return  new_arr.join(' and ').capitalize
  end
end
