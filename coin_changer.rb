# Write a ruby method that will take an amount less than 100
# and return the amount of coins needed to make up that amount.
# The method should always return the smallest amount of coins needed.

# Examples
# changer(99) #=> [25, 25, 25, 10, 10, 1, 1, 1, 1]
# changer(75) #=> [25, 25, 25] changer(14) #=> [10, 1, 1, 1, 1]
# changer(5) #=> [5]

#coins: 25 10 5 1

def changer(amount)

  coins = []

  [25, 10, 5, 1].each do |denomination|
    coins = amount / denomination
    returned_coins += [denomination] * coins
    amount -= coins * denomination
  end
  returned_coins
end

def changer(amount)

    coins = []

    (amount / 25).times do
      coins << 25
      amount -= 25
    end

    (amount / 10).times do
      coins << 10
      amount -= 10
    end

    (amount / 5).times do
      coins << 5
      amount -= 5
    end

    amount.times do
      coins << 1
    end

    coins
end

