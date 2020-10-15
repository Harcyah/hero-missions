GarrisonLandingPageMinimapButton:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" then
		ShowGarrisonLandingPage(Enum.GarrisonType.Type_8_0);
	elseif button == "RightButton" then
		ShowGarrisonLandingPage(Enum.GarrisonType.Type_7_0);
	elseif button == "MiddleButton" then
		ShowGarrisonLandingPage(Enum.GarrisonType.Type_6_0);
	end
end);
GarrisonLandingPageMinimapButton:RegisterForClicks("LeftButtonUp", "RightButtonUp", "MiddleButtonUp")
