class Shelter
  attr_reader :name, :capacity, :pets
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @pets = []
    @come_pets = []
  end

  def add_pet(pet_name)
    @pets << pet_name
  end

# come_pets = [] not sure why this didn't work, changed to attribute and it worked
  def call_pets
    @pets.each do |pet|
      @come_pets << (pet + '!')
    end
    return @come_pets
  end

  def over_capacity?
    if @pets.length > capacity
      return true
    else
      return false
    end
  end

  def adopt
    while @pets.length > @capacity
      @pets.shift
    end
  end
end

# require "pry"; binding.pry
