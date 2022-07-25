hs.window.animationDuration = 0
mash = { 'ctrl', 'alt', 'cmd' }
units = {
  right50       = { x = 0.50, y = 0.00, w = 0.50, h = 1.00 },
  left50        = { x = 0.00, y = 0.00, w = 0.50, h = 1.00 },
  top50         = { x = 0.00, y = 0.00, w = 1.00, h = 0.50 },
  bot50         = { x = 0.00, y = 0.50, w = 1.00, h = 0.50 },
  maximum       = { x = 0.00, y = 0.00, w = 1.00, h = 1.00 },
  center        = { x = 0.25, y = 0.25, w = 0.6 ,h = 0.6 }
}


hs.hotkey.bind(mash, 'n', function()
  local win = hs.window.focusedWindow()
  -- get the screen where the focused window is displayed, a.k.a. current screen
  local screen = win:screen()
  -- compute the unitRect of the focused window relative to the current screen
  -- and move the window to the next screen setting the same unitRect
  win:move(win:frame():toUnitRect(screen:frame()), screen:next(), true, 0)
end)

hs.hotkey.bind(mash, 'right', function() hs.window.focusedWindow():move(units.right50, nil, true) end)
hs.hotkey.bind(mash, 'left', function() hs.window.focusedWindow():move(units.left50, nil, true) end)
hs.hotkey.bind(mash, 'up', function() hs.window.focusedWindow():move(units.top50, nil, true) end)
hs.hotkey.bind(mash, 'down', function() hs.window.focusedWindow():move(units.bot50, nil, true) end)
hs.hotkey.bind(mash, 'l', function() hs.window.focusedWindow():move(units.maximum, nil, true) end)
hs.hotkey.bind(mash, 'm', function() hs.window.focusedWindow():toggleFullScreen() end)
hs.hotkey.bind(mash, 'p', function() hs.window.focusedWindow():move(units.center, nil, true) end)
