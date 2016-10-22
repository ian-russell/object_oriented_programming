#Class of paperboy calculating earning and quota
class Paperboy
  attr_reader   :earnings
  def initialize(name)
    @name       = name
    @earnings   = 0
    @experience = 0
    @quota      = 50
  end

  def quota
    @quota + (@experience / 2)
  end

  def deliver(start_address, end_address)
    houses = end_address - start_address + 1
    if houses < quota
      pay = 0.25 * houses - 2
    else
      pay = (0.25 * houses) + ((houses - quota) * 0.50)
    end
    @experience += houses
    @earnings   += pay
  end

  def report
    puts "Hi there! I am the local paperboy, #{@name}."
    puts "I am the best in the biz with #{@experience} deliveries."
    puts "I have made $#{@earnings}."
  end
end

ian = Paperboy.new('Ian')
ian.deliver(101, 160)
ian.report
