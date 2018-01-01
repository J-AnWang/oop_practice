require_relative "Hero"

class Mage < Hero
  def initialize(name, hp, ap, mp)
    super(name, hp, ap)

    @mp = mp
  end

  def attack(enemy)
    @mp = @mp + 1
    if @mp > 3
      damage = fireball
      enemy.hp = enemy.hp - damage

      puts "#{@name} 使用火球術對 #{enemy.name} 造成 #{damage} 的傷害"
      puts "#{@name} 剩下 #{@mp} 的魔法量"
      puts "#{enemy.name} 剩下 #{enemy.hp} 的血量"
      puts ""

      if enemy.hp < 1
        enemy.die?
      end
    else
      super(enemy)
    end
  end

  private

  def fireball
    @mp = @mp - 3
    return rand(@ap/2..@ap) + 50
  end
end
