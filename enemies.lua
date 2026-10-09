--enemies--

enemies={}

function spawn_enemy(x,y,direction,sprite)
	add(enemies, {
		x=x,
		y=y,
		dx=0,
		dy=0,
		speed=1,
		max_speed=10,
		direction=direction,-- 1 or -1, represents the pixel values of y movement. 
		sprite=sprite,




		update =function(self)
			self.apply_enemy_movement_physics(self)
			self.move_enemy(self)
		end,

		draw = function(self)
			spr(self.sprite, self.x, self.y)
		end,


		apply_enemy_movement_physics = function(self)
			if abs(self.dy) < self.max_speed then
				self.dy+=self.speed*self.direction
			end
			
		end,

		move_enemy = function(self)
			self.y+=self.dy
		end
	})
end



function update_enemies()
	for r in all(enemies) do
		r:update()
	end
end


function draw_enemies()
	for r in all(enemies) do
		r:draw()
	end

end