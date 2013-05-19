class Photo 
  attr_reader :name, :url
  def initialize(name,url)
    @name = name
    @url  = url
  end
end 

photo = Photo.new("shadi", "httpLsad")
p photo.name
p photo.url

class User
  attr_reader :name, :email, :photo_name, :photo_url
  def initialize(args)
    @name       = args[:name]
    @email      = args[:email]
    @photo_name = args[:photo_name]
    @photo_url  = args[:photo_url]
  end
  
  def photo
    Photo.new(photo_name, photo_url)
  end
end

class Product
  attr_reader :name, :description, :price, :photo_name, :photo_url
  def initialize(args)
  @name        = args[:name]
  @description = args[:description]
  @price       = args[:price]
  @photo_name  = args[:photo_name]
  @photo_url   = args[:photo_url]
  end

  def photo
    # Photo.new(@photo_name, @photo_url)
    Photo.new(photo_name, photo_url) 
    # creates a new object with a new object_id every time. 
    #Should refactor to better represent the intentions of user.photo
  end
end
# Feel free to add more driver code here
 

## Create a user
user = User.new({ :name => "ed shadi", 
                  :email => "shadi@devbootcamp.com", 
                  :photo_name => "shadi", 
                  :photo_url => "http://awesome.com/shadi" })
 
## Create a Product
product = Product.new({ :name => "laptop", 
                        :description => "macbook pro", 
                        :price => 1500, 
                        :photo_name => "macbook", 
                        :photo_url => "http://sweet.com/macbook" })

# puts "____user____"
# puts
# p user.name       ==  "ed shadi"
# p user.email      ==  "shadi@devbootcamp.com"
# p user.photo     
# p user.photo.name ==  "shadi"
# p user.photo.url  ==  "http://awesome.com/shadi"
# puts
# puts "____product____" 
# puts
# ##Obtain information about a Product
# p product.name         ==  "laptop"
# p product.description  ==  "macbook pro"
# p product.price        ==  1500
# p product.photo       
# p product.photo.name   == "macbook"
# p product.photo.url    ==  "http://sweet.com/macbook"
 
## Obtain information about a User
user.name       # should return "ed shadi"
user.email      # should return "shadi@devbootcamp.com"
user.photo      # should return a photo
user.photo.name # should return "shadi"
user.photo.url  # should return "http://awesome.com/shadi"
 
## Obtain information about a Product
product.name         # should return "laptop"
product.description  # should return "macbook pro"
product.price        # should return 1500
product.photo        # should return a photo
product.photo.name   # should returne "macbook"
product.photo.url    # should return "http://sweet.com/macbook"