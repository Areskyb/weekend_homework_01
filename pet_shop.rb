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


def pets_by_breed(shop,breed)
  total_num = []
  shop[:pets].each{|x| total_num.push(x[:breed]) if x[:breed] == breed}
  return total_num
end

def find_pet_by_name(shop,name)
  for pet in shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name (shop,name)
  shop[:pets].each{|x| x == nil if x[:name] == name}
end
