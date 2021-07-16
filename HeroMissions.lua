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

SLASH_HERO_MISSIONS_6_01 = '/heromissions60'
SLASH_HERO_MISSIONS_7_01 = '/heromissions70'
SLASH_HERO_MISSIONS_8_01 = '/heromissions80'
SLASH_HERO_MISSIONS_9_01 = '/heromissions90'

SlashCmdList['HERO_MISSIONS_6_0'] = function()
	ShowGarrisonLandingPage(Enum.GarrisonType.Type_6_0);
end

SlashCmdList['HERO_MISSIONS_7_0'] = function()
	ShowGarrisonLandingPage(Enum.GarrisonType.Type_7_0);
end

SlashCmdList['HERO_MISSIONS_8_0'] = function()
	ShowGarrisonLandingPage(Enum.GarrisonType.Type_8_0);
end

SlashCmdList['HERO_MISSIONS_9_0'] = function()
	ShowGarrisonLandingPage(Enum.GarrisonType.Type_9_0);
end
