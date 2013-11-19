# Warn
# Monkey patching spotted
class Array
  def backward
    return self if length < 2

    left  = self[0..((length/2) - 1)].backward
    right = self[(length/2)..length].backward

    return right + left
  end
end