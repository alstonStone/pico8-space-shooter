--test--

function test_init()
    player_init()
    spawn_enemy(63,-8,1,3)
end


function test_update()
    player:update()
    update_rockets()
    update_enemies()
end


function test_draw()
    cls()
    player:draw()
    draw_rockets()
    draw_enemies()
end


 