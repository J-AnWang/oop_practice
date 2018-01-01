require_relative "Hero"

class HolyKnight < Hero
  def attack(enemy)
    damage = rand(@ap..2 * @ap)
    enemy.hp = enemy.hp - damage

    puts "#{@name} 使用聖光攻擊對 #{enemy.name} 造成 #{damage} 的傷害"
    puts "#{enemy.name} 剩下 #{enemy.hp} 的血量"
    puts ""

    if enemy.hp < 1
      enemy.die?
    end
  end
end
