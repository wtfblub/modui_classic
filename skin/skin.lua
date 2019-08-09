

    local _, ns = ...

    local f = CreateFrame'Frame'
    local build = tonumber(string.sub(GetBuildInfo() , 1, 2))

    ns.colour = {MODUI_VAR['UI'].r, MODUI_VAR['UI'].g, MODUI_VAR['UI'].b}
    ns.skin = {
        MinimapBorder,
        MiniMapTrackingBorder,
        MiniMapMailBorder,
        MiniMapBattlefieldBorder,

        PlayerFrameTexture,
        TargetFrameTextureFrameTexture,
        PetFrameTexture,
        PartyMemberFrame1Texture,
        PartyMemberFrame2Texture,
        PartyMemberFrame3Texture,
        PartyMemberFrame4Texture,
        PartyMemberFrame1PetFrameTexture,
        PartyMemberFrame2PetFrameTexture,
        PartyMemberFrame3PetFrameTexture,
        PartyMemberFrame4PetFrameTexture,

        CastingBarFrame.Border,

        _G['TargetFrameToTTextureFrameTexture'],
    }

    -- 8.0?
    if  build > 1 then
        for _, v in pairs(
            {
                MainMenuBarArtFrameBackground.BackgroundLarge,
                MainMenuBarArtFrameBackground.BackgroundSmall,
                MainMenuBarArtFrame.LeftEndCap,
                MainMenuBarArtFrame.RightEndCap,
                MicroButtonAndBagsBar.MicroBagBar,
            }
        ) do
            tinsert(ns.skin, v)
        end
    else
        for _, v in pairs(
            {
                MainMenuBarTexture0,
                MainMenuBarTexture1,
                MainMenuBarTexture2,
                MainMenuBarTexture3,
                MainMenuMaxLevelBar0,
                MainMenuMaxLevelBar1,
                MainMenuMaxLevelBar2,
                MainMenuMaxLevelBar3,
                MainMenuXPBarTextureLeftCap,
                MainMenuXPBarTextureRightCap,
                MainMenuXPBarTextureMid,
                BonusActionBarTexture0,
                BonusActionBarTexture1,
                MainMenuBarLeftEndCap,
                MainMenuBarRightEndCap,
            }
        ) do
            tinsert(ns.skin, v)
        end
    end

    -- BAGS
    for i = 1, 12 do
        local bagName = 'ContainerFrame'..i
        local _, a, b, _, c, _, d = _G[bagName]:GetRegions()
        for _, v in pairs({a, b, c, d}) do tinsert(ns.skin, v) end
    end

    -- BANK
    local _, a = BankFrame:GetRegions()
    tinsert(ns.skin, a)

    local _, a, b, c, d = ItemTextFrame:GetRegions()
    for _, v in pairs({a, b, c, d}) do
        tinsert(ns.skin, v)
    end

    local a, b, c, d, e, f, g = HelpFrame:GetRegions()
    for _, v in pairs({a, b, c, d, e, f, g}) do
        tinsert(ns.skin, v)
    end

    if HonorFrame then
        local a, b, c, d = HonorFrame:GetRegions()
        for _, v in pairs({a, b, c, d}) do
            tinsert(ns.skin, v)
        end
    end

    local _, a = LootFrame:GetRegions()
    tinsert(ns.skin, a)

    if  LFGParentFrame then
        local _, a = LFGParentFrame:GetRegions()
        for _, v in pairs({a}) do tinsert(ns.skin, v) end
    end

    local _, a, b, c, d, _, _, _, e, f, g, h, j, k = MerchantFrame:GetRegions()
    for _, v in pairs({a, b, c ,d, e, f, g, h, j, k}) do
        tinsert(ns.skin, v)
    end

    tinsert(ns.skin, MerchantBuyBackItemNameFrame)

    local _, a, b, c, d = OpenMailFrame:GetRegions()
   for _, v in pairs({a, b, c, d}) do
       tinsert(ns.skin, v)
   end

   local _, a, b, c, d = MailFrame:GetRegions()
   for _, v in pairs({a, b, c, d}) do
       tinsert(ns.skin, v)
   end

   for i = 1, MIRRORTIMER_NUMTIMERS do
        local m = _G['MirrorTimer'..i]
        local _, _, a = m:GetRegions()
        tinsert(ns.skin, a)
    end


        -- PAPERDOLL
    local a, b, c, d, _, e = PaperDollFrame:GetRegions()
    for _, v in pairs({a, b, c, d, e}) do
        tinsert(ns.skin, v)
    end

    local a, b, c, d = ReputationFrame:GetRegions()
    for _, v in pairs({a, b, c, d}) do
        tinsert(ns.skin, v)
    end

    local a, b, c, d = SkillFrame:GetRegions()
    for _, v in pairs({a, b, c ,d}) do
        tinsert(ns.skin, v)
    end
    for _, v in pairs({ReputationDetailCorner, ReputationDetailDivider}) do
        tinsert(ns.skin, v)
    end

    local _, _, a, b, c, d = QuestLogFrame:GetRegions()
    for _, v in pairs({a, b, c, d}) do
        tinsert(ns.skin, v)
    end

    QuestLogFrame.Material = QuestLogFrame:CreateTexture(nil, 'OVERLAY', nil, 7)
    QuestLogFrame.Material:SetTexture[[Interface\AddOns\modui_classic\art\quest\QuestBG.tga]]
    QuestLogFrame.Material:SetSize(510, 398)
    QuestLogFrame.Material:SetPoint('TOPLEFT', QuestLogDetailScrollFrame)
    QuestLogFrame.Material:SetVertexColor(.9, .9, .9)

    local _, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, _, q = FriendsFrame:GetRegions()
    for _, v in pairs({a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q}) do
        tinsert(ns.skin, v)
    end

    local _, a, b, c, d = SpellBookFrame:GetRegions()
    for _, v in pairs({a, b, c, d}) do
        tinsert(ns.skin, v)
    end

    local _, a, b, c, d = TabardFrame:GetRegions()
    for _, v in pairs({a, b, c, d, e}) do
        tinsert(ns.skin, v)
    end

        -- TAXI
    local _, a, b, c, d = TaxiFrame:GetRegions()
    for _, v in pairs({a, b, c, d}) do
        tinsert(ns.skin, v)
    end

    local a, b, c, d, e, f, _, _, _, _, _, _, g = WorldStateScoreFrame:GetRegions()
    for _, v in pairs({a, b, c, d, e, f, g}) do
        tinsert(ns.skin, v)
    end

        -- TRADE
    local _, _, a, b, c, d = TradeFrame:GetRegions()
    for _, v in pairs({a, b, c, d, e}) do
        tinsert(ns.skin, v)
    end


        -- WARDROBE
    local _, a, b, c, d = DressUpFrame:GetRegions()
    for _, v in pairs({a, b, c, d, e}) do
        tinsert(ns.skin, v)
    end

        -- WORLDMAP
    local _, a, b, c, d, e, _, _, f, g, h, j, k = WorldMapFrame:GetRegions()
    for _, v in pairs({a, b, c, d, e, f, g, h, j, k}) do
        tinsert(ns.skin, v)
    end

    local OnEvent = function(self, event, addon)
        if  addon == 'Blizzard_TimeManager' then
            local a = TimeManagerClockButton:GetRegions()
            tinsert(ns.skin, a)
        end
    end

    local e = CreateFrame'Frame'
    e:RegisterEvent'ADDON_LOADED'
    e:SetScript('OnEvent', OnEvent)

    --todo: borders

    -- in classic?
    for _, v in pairs(
        {
            QuestFrameGreetingPanel,
            QuestFrameDetailPanel,
            QuestFrameProgressPanel,
            QuestFrameRewardPanel,
            GossipFrameGreetingPanel
        }
    ) do
        v.Material = v:CreateTexture(nil, 'OVERLAY', nil, 7)
        v.Material:SetTexture[[Interface\AddOns\modui_classic\art\quest\QuestBG.tga]]
        v.Material:SetSize(506, 506)
        v.Material:SetPoint('TOPLEFT', v, 24, -82)
        v.Material:SetVertexColor(.9, .9, .9)

        if  v == GossipFrameGreetingPanel or v == QuestFrameGreetingPanel then
            v.Corner = v:CreateTexture(nil, 'OVERLAY', nil, 7)
            v.Corner:SetTexture[[Interface\QuestFrame\UI-Quest-BotLeftPatch]]
            v.Corner:SetSize(132, 64)
            v.Corner:SetPoint('BOTTOMLEFT', v, 21, 68)
            tinsert(ns.skin, v.Corner)
        end

        local a, b, c, d = v:GetRegions()
        for _, j in pairs({a, b, c, d}) do
            tinsert(ns.skin, j)
        end
    end


    -- initialise
    for _,  v in pairs(ns.skin) do
        if  v and v:GetObjectType() == 'Texture' and v:GetVertexColor() then
            v:SetVertexColor(
                MODUI_VAR['UI'].r,
                MODUI_VAR['UI'].g,
                MODUI_VAR['UI'].b
            )
        end
    end

    -- colour picker
    local ColourPicker = function(r, g, b, a, callback)
        ColorPickerFrame:SetColorRGB(r, g, b)
        ColorPickerFrame.hasOpacity = false
        ColorPickerFrame.func = callback
        ColorPickerFrame:Hide()
        ColorPickerFrame.modui = true
        ColorPickerFrame:Show()
        ColorPickerFrame:SetPoint'CENTER'
    end

    ColorPickerFrame.reset = CreateFrame('Button', 'ColorPickerFrameReset', ColorPickerFrame, 'GameMenuButtonTemplate')
    ColorPickerFrame.reset:SetSize(144, 24)
    ColorPickerFrame.reset:SetText'Reset to Default'
    ColorPickerFrame.reset:SetPoint('BOTTOMLEFT', ColorPickerOkayButton, 0, 22)
    ColorPickerFrame.reset:Hide()

    ColorPickerFrame:SetScript('OnShow', function(self)
        if  self.hasOpacity then
            OpacitySliderFrame:Show()
            OpacitySliderFrame:SetValue(self.opacity)
            self:SetWidth(365)
        else
            OpacitySliderFrame:Hide()
            self:SetWidth(305)
            end
        if ColorPickerFrame.modui then
            self:SetHeight(220)
            ColorPickerFrame.reset:Show()
        end
    end)

    ColorPickerFrame:SetScript('OnHide', function()
        ColorPickerFrame.reset:Hide()
        ColorPickerFrame.modui = false
    end)

    ColorPickerFrame.reset:SetScript('OnClick', function()
        MODUI_VAR['UI'].r, MODUI_VAR['UI'].g, MODUI_VAR['UI'].b = 1, 1, 1
        ColorPickerFrame:SetColorRGB(
            MODUI_VAR['UI'].r,
            MODUI_VAR['UI'].g,
            MODUI_VAR['UI'].b
        )
        for _,  v in pairs(ns.skin) do
            if  v and v:GetObjectType() == 'Texture' and v:GetVertexColor() then
                v:SetVertexColor(
                MODUI_VAR['UI'].r,
                MODUI_VAR['UI'].g,
                MODUI_VAR['UI'].b
                )
            end
        end
    end)

    local list = {
        {
            text            = 'modui',
            isTitle         = true,
            notCheckable    = true,
            fontObject      = Game13Font,
        },
        {
            text = 'UI Colour',
            icon = 'Interface\\ICONS\\inv_misc_gem_variety_02',
            func = function()
                ColourPicker(
                    ns.colour[1],
                    ns.colour[2],
                    ns.colour[3],
                    1,
                    function(colour, cancel)
                       if  colour then
                           if  cancel then
                               ns.colour[1], ns.colour[2], ns.colour[3] = MODUI_VAR['UI'].r or 1, MODUI_VAR['UI'].g or 1, MODUI_VAR['UI'].b or 1 -- fallback
                           else
                               ns.colour[1], ns.colour[2], ns.colour[3] = colour[1], colour[2], colour[3]
                               MODUI_VAR['UI'].r, MODUI_VAR['UI'].g, MODUI_VAR['UI'].b = colour[1], colour[2], colour[3]
                           end
                       else
                           ns.colour[1], ns.colour[2], ns.colour[3] = ColorPickerFrame:GetColorRGB()
                           MODUI_VAR['UI'].r, MODUI_VAR['UI'].g, MODUI_VAR['UI'].b = ColorPickerFrame:GetColorRGB()
                       end
                       for _,  v in pairs(ns.skin) do
                           if  v and v:GetObjectType() == 'Texture' and v:GetVertexColor() then
                               v:SetVertexColor(
                                   ns.colour[1],
                                   ns.colour[2],
                                   ns.colour[3]
                               )
                           end
                       end
                   end
               )
           end,
           notCheckable = true,
           fontObject = Game13Font,
       },
       {
           text = 'Toggle Elements',
           icon = 'Interface\\PaperDollInfoFrame\\UI-EquipmentManager-Toggle',
           func = function()
           end,
           notCheckable = true,
           fontObject = Game13Font,
       }
    }

    local icon = CreateFrame('Button', 'modcolourmenu', MainMenuBarBackpackButton)
    icon:SetSize(16, 16)
    icon:ClearAllPoints()
    icon:SetPoint('BOTTOM', MainMenuBarBackpackButton, 'TOP', .5, 1)

    local t = icon:CreateFontString(nil, 'ARTWORK')
    t:SetFont(STANDARD_TEXT_FONT, 8, 'OUTLINE')
    t:SetPoint('TOP', icon, -2, -4)
    t:SetText'M'
    t:SetTextColor(1, 1, 1)

    local menu = CreateFrame('Frame', 'modoptions', UIParent, 'UIDropDownMenuTemplate')

    icon:SetScript('OnClick', function()
        if  DropDownList1:IsShown() then
            DropDownList1:Hide()
        else
            EasyMenu(list, menu, icon, 3, 111, 'MENU', 5)
        end
    end)

    local OnEvent = function()
        if  not MODUI_VAR['UI'] then
            MODUI_VAR['UI'] = {r = 1, g = 1, b = 1}
        end
        ns.colour = {MODUI_VAR['UI'].r, MODUI_VAR['UI'].g, MODUI_VAR['UI'].b} -- update this
        for _, v in pairs(ns.skin) do
            v:SetVertexColor(
                MODUI_VAR['UI'].r,
                MODUI_VAR['UI'].g,
                MODUI_VAR['UI'].b
            )
        end
    end

    local e = CreateFrame'Frame'
    e:RegisterEvent'VARIABLES_LOADED'
    e:RegisterEvent'ADDON_LOADED'
    e:SetScript('OnEvent', OnEvent)

    --
