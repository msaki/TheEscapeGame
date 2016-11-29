local composer = require( "composer" )
local scene = composer.newScene()
local x = display.contentWidth/2    -- Center x point
local y = display.contentHeight/2   -- Center y point
 
---------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE
-- unless "composer.removeScene()" is called.
---------------------------------------------------------------------------------
 
-- local forward references should go here

local function showFloor()

   local options = {
      effect = "fade",
      time = 300
   }
   composer.removeScene("MainBase");
   composer.gotoScene("MainFloor", options);

end

local function showCeiling()

   local options = {
      effect = "fade",
      time = 300
   }
   composer.removeScene("MainBase");
   composer.gotoScene("MainCeiling", options);

end

local function showLeft()

   local options = {
      effect = "fade",
      time = 300
   }
   composer.removeScene("MainBase");
   composer.gotoScene("LeftBase", options);

end

local function showRight()

   local options = {
      effect = "fade",
      time = 300
   }
   composer.removeScene("MainBase");
   composer.gotoScene("RightBase", options);

end
 
---------------------------------------------------------------------------------
 
-- Title Scene/Main Screen

-- "scene:create()"
function scene:create( event )
 
   local sceneGroup = self.view
   local bg = display.newImage("MainBase.jpg");
   bg.x = display.contentWidth / 2;          -- Centers bg
   bg.y = display.contentHeight / 2;
   sceneGroup:insert(bg);                    -- Adds bg to sceneGroup
   -- Initialize the scene here.
   -- Example: add display objects to "sceneGroup", add touch listeners, etc.
end
 
-- "scene:show()"
function scene:show( event )
 
   local sceneGroup = self.view
   local phase = event.phase
 
   if ( phase == "will" ) then
      -- Called when the scene is still off screen (but is about to come on screen).
   		local right = display.newText("Right", x+260, y, native.systemFont, 16)
    	right:setFillColor (0, 0, 1)
    	right:addEventListener("tap", showRight);
      local left = display.newText("Left", x-260, y, native.systemFont, 16)
      left:setFillColor (0, 0, 1)
      left:addEventListener("tap", showLeft);
      local floor = display.newText("Floor", x, y+190, native.systemFont, 16)
      floor:setFillColor (0, 0, 1)
      floor:addEventListener("tap", showFloor);
      local ceiling = display.newText("Ceiling", x, y-190, native.systemFont, 16)
      ceiling:setFillColor (0, 0, 1)
      ceiling:addEventListener("tap", showCeiling);
    	sceneGroup:insert(right);
      sceneGroup:insert(left);
      sceneGroup:insert(floor);
      sceneGroup:insert(ceiling);
   elseif ( phase == "did" ) then
      -- Called when the scene is now on screen.
      -- Insert code here to make the scene come alive.
      -- Example: start timers, begin animation, play audio, etc.
   end
end
 
-- "scene:hide()"
function scene:hide( event )
 
   local sceneGroup = self.view
   local phase = event.phase
 
   if ( phase == "will" ) then
      -- Called when the scene is on screen (but is about to go off screen).
      -- Insert code here to "pause" the scene.
      -- Example: stop timers, stop animation, stop audio, etc.
   elseif ( phase == "did" ) then
      -- Called immediately after scene goes off screen.
   end
end
 
-- "scene:destroy()"
function scene:destroy( event )
 
   local sceneGroup = self.view
 
   -- Called prior to the removal of scene's view ("sceneGroup").
   -- Insert code here to clean up the scene.
   -- Example: remove display objects, save state, etc.
end
 
---------------------------------------------------------------------------------
 
-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
 
---------------------------------------------------------------------------------
 
return scene