--player--

function player_init()
	player={
		x=63,
		y=110,
		dx=0,
		dy=0,
		width=15,--in pixels
		height=16,--in pixels
		speed=1,
		sprite=0,
		max_speed=3,
		animation_tick=0,




		update = function(self)
			player:get_input()
			player:apply_player_movement_physics()
			player:move_player()
		end,


		draw = function(self)
			spr(player.sprite,player.x, player.y, player.width/8, player.height/8)
			player:draw_hitbox()
		end,


		draw_hitbox = function(self)
			rect(player.x, player.y+8, player.x+player.width, player.y+player.height,10)
		end,


		get_input = function(self)
			if (btn(⬅️)) then
				player.dx-=player.speed
			elseif (btn(➡️)) then
				player.dx+=player.speed
			else
				player.dx=0
			end
			if (btnp(❎)) then
				spawn_rocket(player.x+(player.width /2),player.y+(player.height/2),-1,2)
				--spawn_rocket(63,63,-1,2)
			end
		end,


		apply_player_movement_physics = function(self)
			--X movement-------------------------------------
			if abs(player.dx) >= player.max_speed then
				local pos_neg=1
				if (player.dx < 0) pos_neg=pos_neg*-1
				player.dx=player.max_speed*pos_neg
			end
		end,


		move_player = function(self)
			player.x+=player.dx
			if (player.x<=0) player.x=0 player.dx=0
			if (player.x>=112) player.x=112 player.dx=0
		end


	}
end






