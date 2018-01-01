class Hero

  @@heroes = []

  attr_accessor :name, :hp, :ap

def initialize(name, hp, ap)
  @name = name
  @hp = hp
  @ap = ap
  @alive = true

  puts "你的英雄 #{@name} 已經誕生了！"
  puts "生命力(HP): #{@hp}"
  puts "攻擊力(AP): #{@ap}"
  puts ""

  @@heroes << self
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

  def self.count
    return @@heroes.length
  end

  def self.all
    return @@heroes
  end

  private

  def die
    @alive = false
    puts "#{@name} 被打倒了！"
  end
end
