class City
  def initialize
    @restaurants = []
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def restaurants
    @restaurants
  end

  def add_restaurant(restaurant)
    @restaurants << restaurant
  end

  def get_binding
    binding
  end
end