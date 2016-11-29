local composer = require( "composer" )
local scene = composer.newScene()
local x = display.contentWidth/2    -- Center x point
local y = display.contentHeight/2   -- Center y point
 
---------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE
-- unless "composer.removeScene()" is called.
---------------------------------------------------------------------------------
 
-- local forward references should go here
 
 local function showMain()

   local options = {
      effect = "fade",
      time = 300
   }
   composer.removeScene("startScreen");
   composer.gotoScene("MainBase", options);

end

---------------------------------------------------------------------------------
 
-- "scene:create()"
function scene:create( event )
 
   local sceneGroup = self.view
   local bg = display.newImage("startScreen.jpg");
   bg.x = display.contentWidth / 2;          -- Centers bg
   bg.y = display.contentHeight / 2;
   sceneGroup:insert(bg);                    -- Adds bg to sceneGroup

   local start = display.newText("Time to escape!", x, y+100, native.systemFont, 16);
   start:setFillColor (0, 50, 255);
   start:addEventListener ("tap", showMain);

   local title = display.newText("The Escape Game", x, y-190, native.systemFont, 18);
   local by = display.newText("By:", x, y-170, native.systemFont, 17);
   local myname = display.newText("Jared Hornbuckle", x, y-150, native.systemFont, 17);
   local Michaelname = display.newText("Michael Saki", x, y-130, native.systemFont, 17);
   local explanation1 = display.newText("The Escape Game is based on the fairly new but growing genre of games centered around", x, y-100, native.systemFont, 17);
   local explanation2 = display.newText("escaping a room or situation. The player will gather items from the room in a puzzle-like", x, y-80, native.systemFont, 17);
   local explanation3 = display.newText("manner. Once the items needed are gathered, the player can finally escape the room!", x, y-60, native.systemFont, 17);
   local explanation4 = display.newText("In this game, the player is trapped within a common college classroom. Items are scattered", x, y-40, native.systemFont, 17);
   local explanation5 = display.newText("amongst the room, including floors and ceilings. Find the items and escape the game!", x, y-20, native.systemFont, 17);
   local explanation6 = display.newText("When you are ready, tap the text saying 'Time to escape!'", x, y, native.systemFont, 17);
   myname:setFillColor (0, 50, 255);
   Michaelname:setFillColor (0, 50, 255);
   title:setFillColor (0, 50, 255);
   by:setFillColor (0, 50, 255);
   explanation1:setFillColor(0, 50, 255);
   explanation2:setFillColor(0, 50, 255);
   explanation3:setFillColor(0, 50, 255);
   explanation4:setFillColor(0, 50, 255);
   explanation5:setFillColor(0, 50, 255);
   explanation6:setFillColor(0, 50, 255);
   sceneGroup:insert(bg);
   sceneGroup:insert(title);
   sceneGroup:insert(by);
   sceneGroup:insert(myname);
   sceneGroup:insert(Michaelname);
   sceneGroup:insert(start);
   sceneGroup:insert(explanation1);
   sceneGroup:insert(explanation2);
   sceneGroup:insert(explanation3);
   sceneGroup:insert(explanation4);
   sceneGroup:insert(explanation5);
   sceneGroup:insert(explanation6);
   -- Initialize the scene here.
   -- Example: add display objects to "sceneGroup", add touch listeners, etc.
end
 
-- "scene:show()"
function scene:show( event )
 
   local sceneGroup = self.view
   local phase = event.phase
 
   if ( phase == "will" ) then
      -- Called when the scene is still off screen (but is about to come on screen).
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