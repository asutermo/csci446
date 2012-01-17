class Player
  def play_turn(warrior)
	if warrior.feel.captive?
		warrior.rescue!
	elsif warrior.feel.empty?
		if warrior.health < 20
			if @health > warrior.health
				warrior.walk!
			else
				warrior.rest!
			end
		else
			warrior.walk!
		end
	else
		warrior.attack!
	end
	@health = warrior.health
  end
end
