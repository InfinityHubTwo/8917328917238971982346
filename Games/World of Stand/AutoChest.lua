local Player 			= 		game.Players.LocalPlayer
local TweenService 		= 		game:GetService('TweenService')
local Player 			= 		game.Players.LocalPlayer
local Char 				= 		Player.Character or Player.CharacterAdded:wait()




--// Chests
local Position1 	= 	  Vector3.new(-159.042, 8.8926, 130.706)
local Position2 	= 	  Vector3.new(100.425, 8.8926, 102.608)
local Position3 	= 	  Vector3.new(49.8857, 86.5794, 159.153)
local Position4 	= 	  Vector3.new(-206.724, 8.8926, 59.0808)
local Position5 	= 	  Vector3.new(77.6799, 86.5794, 316.243)
local Position6 	= 	  Vector3.new(457.343, 9.71783, 127.417)
local Position7 	= 	  Vector3.new(-522.487, 27.9987, 137.826)
local Position8 	= 	  Vector3.new(-501.736, 13.3114, 251.148)
local Position9 	= 	  Vector3.new(-674.608, 10.7662, 67.1022)
local Position10 	= 	  Vector3.new(-590.462, 69.9932, -86.9395)
local Position11 	= 	  Vector3.new(-977.115, -5.0177, -267.874)
local Position12 	= 	  Vector3.new(-1089.56, -5.0177, -217.519)
local Position14 	= 	  Vector3.new(-730.987, -10.19, 428.386)
local Position15 	= 	  Vector3.new(-907.462, 9.20375, 596.722)
local Position16 	=  	  Vector3.new(545.886, 11.2056, 692.959)




--// Speed
task.spawn(function ()
	repeat task.wait()
		Player.Character.Humanoid.WalkSpeed = 0
	until 1+1==2
end)




--// Local Tween
local t1 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(4), {CFrame = CFrame.new(Position1)}  )
local t2 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(4), {CFrame = CFrame.new(Position2)}  )
local t3 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(4), {CFrame = CFrame.new(Position3)}  )
local t4 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(4), {CFrame = CFrame.new(Position4)}  )
local t5 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(4), {CFrame = CFrame.new(Position5)}  )
local t6 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(4), {CFrame = CFrame.new(Position6)}  )
local t7 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(9), {CFrame = CFrame.new(Position7)}  )
local t8 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(4), {CFrame = CFrame.new(Position8)}  )
local t9 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(4), {CFrame = CFrame.new(Position9)}  )
local t10 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(7), {CFrame = CFrame.new(Position10)}  )
local t11 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(9), {CFrame = CFrame.new(Position11)}  )
local t12 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(6), {CFrame = CFrame.new(Position12)}  )
local t14 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(9), {CFrame = CFrame.new(Position14)}  )
local t15 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(4), {CFrame = CFrame.new(Position15)}  )
local t16 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(16), {CFrame = CFrame.new(Position16)}  )




--// Move To
t1:Play() -- C1
wait(6)
local KeyPress = function(v)
   return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end
KeyPress("E")
wait(5)
--<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>--
t2:Play() -- C2
wait(6)
local KeyPress = function(v)
   return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end
KeyPress("E")
wait(5)
--<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>--
t3:Play() -- C3
wait(6)
local KeyPress = function(v)
   return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end
KeyPress("E")
wait(5)
--<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>--
t4:Play() -- C4
wait(6)
local KeyPress = function(v)
   return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end
KeyPress("E")
wait(5)
--<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>--
t5:Play() -- C5
wait(6)
local KeyPress = function(v)
   return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end
KeyPress("E")
wait(5)
--<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>--
t6:Play() -- C6
wait(6)
local KeyPress = function(v)
   return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end
KeyPress("E")
wait(5)
--<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>--
t7:Play() -- C7
wait(12)
local KeyPress = function(v)
   return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end
KeyPress("E")
wait(5)
--<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>--
t8:Play() -- C8
wait(6)
local KeyPress = function(v)
   return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end
KeyPress("E")
wait(5)
--<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>--
t9:Play() -- C9
wait(6)
local KeyPress = function(v)
   return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end
KeyPress("E")
wait(5)
--<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>--
t10:Play() -- C10
wait(9.5)
local KeyPress = function(v)
   return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end
KeyPress("E")
wait(5)
--<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>--
t11:Play() -- C11
wait(12)
local KeyPress = function(v)
   return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end
KeyPress("E")
wait(5)
--<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>--
t12:Play() -- C12
wait(6)
local KeyPress = function(v)
   return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end
KeyPress("E")
wait(5)
--<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>--
t14:Play() -- C14
wait(12)
local KeyPress = function(v)
   return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end
KeyPress("E")
wait(5)
--<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>--
t15:Play() -- C15
wait(6)
local KeyPress = function(v)
   return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end
KeyPress("E")
wait(5)
--<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>--
t16:Play() -- C16
wait(18.5)
local KeyPress = function(v)
   return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end
KeyPress("E")
wait(5)
--<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>----<>--<>--




wait(4)
Player.Character.Humanoid.WalkSpeed = 16
