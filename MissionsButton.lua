GarrisonLandingPageMinimapButton:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" then
		ShowGarrisonLandingPage(LE_GARRISON_TYPE_8_0);
	elseif button == "RightButton" then
		ShowGarrisonLandingPage(LE_GARRISON_TYPE_7_0);
	elseif button == "MiddleButton" then
		ShowGarrisonLandingPage(LE_GARRISON_TYPE_6_0);
	end
end);
GarrisonLandingPageMinimapButton:RegisterForClicks("LeftButtonUp", "RightButtonUp", "MiddleButtonUp")