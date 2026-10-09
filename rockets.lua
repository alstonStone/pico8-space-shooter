--rockets--

rockets={}

function spawn_rocket(x,y,direction,sprite)
	add(rockets, {
		x=x,
		y=y,
		dx=0,
		dy=0,
		speed=1,
		max_speed=10,
		direction=direction,-- 1 or -1, represents the pixel values of y movement. 
		sprite=sprite,




		update =function(self)
			-- self.apply_rocket_movement_physics()
			if abs(self.dy) < self.max_speed then
				self.dy+=self.speed*self.direction
			end
			self.y+=self.dy
			
		end,

		draw = function(self)
			spr(self.sprite, self.x, self.y)
		end,


		apply_rocket_movement_physics = function(self)
			if abs(self.dy) < self.max_speed then
				self.dy+=self.speed*self.direction
			end
			
		end,

		move_rocket = function(self)
			self.y+=self.dy
		end
	})
end



function update_rockets()
	for r in all(rockets) do
		r:update()
	end
end


function draw_rockets()
	for r in all(rockets) do
		r:draw()
	end

end