class Monster
  attr_accessor :name, :hp

  def initialize(name, hp, ap)
    @name = name
    @ap = ap
    @hp = hp
    @alive = true

    puts "遇到鬼獸 #{@name} 了！"
    puts "生命力(HP): #{@hp}"
    puts "攻擊力(AP): #{@ap}"
    puts ""
  end

  def attack(enemy)
    damage = rand(@ap/2..@ap)
    enemy.hp = enemy.hp - damage

    puts "#{@name} 對 #{enemy.name} 造成 #{damage} 的傷害"
    puts "#{enemy.name} 剩下 #{enemy.hp} 的血量"
    puts ""

    if enemy.hp < 1
      enemy.die?
    end
  end

  def is_alive?
    return @alive
  end

  def die?
    die
  end

  private

  def die
    @alive = false
    puts "#{@name} 被打倒了！"
  end
end
