require_relative "Monster"
require_relative "Hero"
require_relative "HolyKnight"
require_relative "Mage"

hero = Hero.new("Robinhood", 85, 30)
monster = Monster.new("Captain Hook", 200, 30)
holyknight = HolyKnight.new("Caesar", 180, 20)
mage = Mage.new("Merlin", 100, 15, 5)

team = Hero.all

puts ""
puts "You have #{Hero.count} heros in your team:"

team.each do |hero|
  puts "#{hero.name} - #{hero.class}, HP : #{hero.hp}, Ap : #{hero.ap}"
end


while mage.is_alive? && monster.is_alive?
  mage.attack(monster)
  if !monster.is_alive?
    break
  end

  monster.attack(mage)
  if !mage.is_alive?
    break
  end
end
