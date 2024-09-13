local eye = exports.ox_target
-- Targeting Stuff
for i=1, #Config.DutyLocations do
    eye:addBoxZone({
        coords = Config.DutyLocations[i].coords,
        size = vec3(1, 1, 1),
        rotation = Config.DutyLocations[i].rotation,
        options = {
            {
                icon = 'far fa-clipboard',
                label = 'Clock On/Off',
                groups = Config.DutyLocations[i].jobs,
                onSelect = function()
                    local state = LocalPlayer.state
                    local duty = GetResourceKvpString('onduty')
                    if not duty or duty == nil then
                        state:set('onduty', true, true)
                    elseif duty then
                        state:set('onduty', false, true)
                    end
                end
            }
        },
    })
end
