GarrisonLandingPageMinimapButton:HookScript('OnClick', function(self, button, down)
	if button == 'LeftButton' then
		if IsShiftKeyDown() then
			ShowGarrisonLandingPage(Enum.GarrisonType.Type_8_0);
			return
		end
		if IsControlKeyDown()then
			ShowGarrisonLandingPage(Enum.GarrisonType.Type_7_0);
			return
		end
		if IsAltKeyDown()then
			ShowGarrisonLandingPage(Enum.GarrisonType.Type_6_0);
			return
		end
		ShowGarrisonLandingPage(Enum.GarrisonType.Type_9_0);
	end
end);

GarrisonLandingPageMinimapButton:RegisterForClicks('LeftButtonUp');
