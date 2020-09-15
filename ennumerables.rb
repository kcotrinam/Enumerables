module Enumerable
  def my_each
    if self.class == Array
      for i in (0..self.length - 1)
        yield(self[i])
      end
    else
      keys = self.keys
      values = self.values
      key_value_arr = []
      for i in (0..self.length - 1) 
        temp_arr = []
        temp_arr[0] = keys[i]
        temp_arr[1] = values[i]
        key_value_arr << temp_arr
      end
      for i in (0..key_value_arr.length - 1)
        yield(key_value_arr[i])
      end
    end
  end
end
