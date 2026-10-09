--Game Manager--

-- 1. define the states table
states = {}
state=""

-------------------Title State---------------------------------------------------
states.title = {
  update = function()
    title_update()
  end,
  draw = function()
    title_draw()
  end
}

-------------------transition State---------------------------------------------------
states.transition = {
  update = function()
    transition_update()
  end,
  draw = function()
    transition_draw()
  end
}

-------------------Game State---------------------------------------------------
states.display = {
  update = function()
    game_update()
  end,
  draw = function()
    game_draw()
  end
}

-------------------Test State---------------------------------------------------
states.test = {
  update = function()
    test_update()
  end,
  draw = function()
    test_draw()
  end
}

-- state manager functions
function change_state(new_state)
  state=new_state
  current_state = states[new_state]
end