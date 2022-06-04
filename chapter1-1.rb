# class User
#   def name=(name)
#     @name=name
#   end

#   def name
#     @name
#   end
# end

# class User
#   attr_accessor :name ,:address ,:email

#   def initialize(name,address,email)
#     @name=name
#     @address=address
#     @email=email
#   end

#   def profile
#     "#{name}(#{address})"
#   end

#   def name_call(full: true,with_email: true)
#     n = if full
#         "#{name}"
#         else
#           profile
#         end
#     n << "(#{email})" if with_email
#   end
# end

class Tax
  def self.rate
    1.1
  end
end

class PricedObject
  def total_price
    price *Tax.rate
  end

  def price
    raise NotImplementedError
  end
end

class Product
  attr_accessor :price

  # def total_price
  #   price*Tax.rate
  # end
end

class OrderedItem
  attr_accessor :unit_price, :volume

  # 税抜価格*数量
  def price
    unit_price*volume
  end

  # def total_price
  #   price*Tax.rate
  # end
end

