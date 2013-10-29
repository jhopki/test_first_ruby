class Changer

  def self.make_change(money)
    change_array = []
    quarters = money / 25
    quarters.times {|i| change_array << 25}
    dimes = (money % 25) / 10
    dimes.times {|i| change_array << 10}
    nickels = ((money % 25) % 10) / 5
    nickels.times {|i| change_array << 5}
    pennies = ((money % 25) % 10) % 5
    pennies.times{|x| change_array << 1}
    change_array
  end


end