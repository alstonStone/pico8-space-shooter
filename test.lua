--test--

function test_init()
    player_init()
end


function test_update()
    player:update()
    update_rockets()
end


function test_draw()
    cls()
    player:draw()
    draw_rockets()
end


 