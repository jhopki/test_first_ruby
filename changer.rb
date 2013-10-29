class Changer

  def self.make_change(money)
    change_array = []
    quarters(money).times {|i| change_array << 25}
    dimes(money % 25).times {|i| change_array << 10}
    nickels((money % 25) % 10).times {|i| change_array << 5}
    pennies = ((money % 25) % 10) % 5
    pennies.times{|x| change_array << 1}
    change_array
  end

  def self.quarters(total_change)
    total_change/25
  end

  def self.dimes(change_left)
    change_left / 10
  end

  def self.nickels(after_dimes)
    after_dimes / 5
  end
end