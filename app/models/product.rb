class Product < ApplicationRecord
def is_discounted
  if price < 10
    return true
  else
    return false
  end

end

def tax 
  taxed = price * 0.09
  return taxed
end
end
