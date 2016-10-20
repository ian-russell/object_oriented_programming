# Cat Excercise

class Cat # class of cats

  def initialize(name, preferred_food, meal_time)
    @name           = name
    @preferred_food = preferred_food
    @meal_time      = meal_time
  end

  def eats_at # determining when the cats has meal time, AM or PM
    if @meal_time > 12
      puts "#{@meal_time - 12} PM"
    else
      puts "#{@meal_time} AM"
  end
end

  def meow
    return "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end
end


cat1 = Cat.new('Oliver', 'Fancy Feast', 3)
cat2 = Cat.new('Bob', 'Purina', 18)
