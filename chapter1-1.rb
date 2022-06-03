# class User
#   def name=(name)
#     @name=name
#   end

#   def name
#     @name
#   end
# end

class User
  attr_accessor :name ,:address ,:email

  def initialize(name,address,email)
    @name=name
    @address=address
    @email=email
  end

  def profile
    "#{name}(#{address})"
  end

  def name_call(full: true,with_email: true)
    n = if full
        "#{name}"
        else
          profile
        end
    n << "(#{email})" if with_email
  end
end

