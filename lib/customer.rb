class Customer
  attr_accessor :name, :age
  
  @@all = []
  
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
  
  def self.all
    return @@all
  end
  
  def new_meal(waiter, total, tip)
    return Meal.new(self, waiter, total, tip)
  end
end
