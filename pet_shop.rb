def pet_shop_name(petshop)
  return petshop[:name]
end

def total_cash(shop)
 return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop,amount)
  shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop,amount)
  return shop[:admin][:pets_sold] += amount
end

def stock_count(shop)
    return shop[:pets].length()
end

# here I return the total number of the same breed of, but I deleted the .count method on the test
def pets_by_breed(shop,breed)
  total_num = 0
  shop[:pets].each{|x| total_num += 1 if x[:breed] == breed}
  return total_num
end
