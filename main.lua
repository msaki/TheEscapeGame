display.setStatusBar( display.HiddenStatusBar )

local widget = require('widget')
local composer = require('composer')

local function startScreen() -- Brings up the main menu.

   local options = {
      effect = "fade",
      time = 300
   }
   composer.gotoScene("startScreen", options)

end

startScreen();






