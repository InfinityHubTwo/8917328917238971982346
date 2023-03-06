local UserInputService = game:GetService("UserInputService")

if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled and not UserInputService.MouseEnabled then
	print("Mobile device")
elseif not UserInputService.TouchEnabled and UserInputService.KeyboardEnabled and UserInputService.MouseEnabled then
	print("Computer device")
  loadstring(game:HttpGet"https://raw.githubusercontent.com/InfinityHubTwo/8917328917238971982346/main/Obfuscate/Stands%20Awakening/PC/AutoBoss.lua")()
end
