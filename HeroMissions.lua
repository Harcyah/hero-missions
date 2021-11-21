
local function NoopToolTip()
	-- Disable button tooltip, as it cannot be rendered on < 60 characters
end

GarrisonLandingPageMinimapButton:SetScript('OnClick', function(self, button, down)
	HideUIPanel(GarrisonLandingPage);

	if (button == 'LeftButton' and (UnitLevel('player') >= 60)) then
		ShowGarrisonLandingPage(Enum.GarrisonType.Type_9_0);
		return
	end

	if (button == 'MiddleButton' and (UnitLevel('player') >= 50)) then
		ShowGarrisonLandingPage(Enum.GarrisonType.Type_8_0);
		return
	end

	if (button == 'RightButton' and (UnitLevel('player') >= 50) and not IsShiftKeyDown()) then
		ShowGarrisonLandingPage(Enum.GarrisonType.Type_7_0);
		return
	end

	if (button == 'RightButton' and (UnitLevel('player') >= 50) and IsShiftKeyDown()) then
		ShowGarrisonLandingPage(Enum.GarrisonType.Type_6_0);
		return
	end

end);

GarrisonLandingPageMinimapButton:RegisterForClicks('LeftButtonUp', 'MiddleButtonUp', 'RightButtonUp');

GarrisonLandingPageMinimapButton:SetScript('OnEnter', NoopToolTip);
GarrisonLandingPageMinimapButton:SetScript('OnLeave', NoopToolTip);

local frame = CreateFrame('Frame');
frame:RegisterEvent('PLAYER_STARTED_MOVING');
frame:RegisterEvent('ZONE_CHANGED_NEW_AREA');
frame:RegisterEvent('PLAYER_ENTERING_WORLD');
frame:SetScript('OnEvent', function(self, event, ...)

	if (event == 'PLAYER_STARTED_MOVING') then
		GarrisonLandingPageMinimapButton:Show();
		frame:UnregisterEvent('PLAYER_STARTED_MOVING');
	end

	if (event == 'ZONE_CHANGED_NEW_AREA') then
		GarrisonLandingPageMinimapButton:Show();
	end

	if (event == 'PLAYER_ENTERING_WORLD') then
		GarrisonLandingPageMinimapButton:Show();
	end

end)
