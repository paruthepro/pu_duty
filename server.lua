AddStateBagChangeHandler('onduty', source, function(bagName, key, value)
    local ply = GetPlayerFromStateBagName(bagName)
    PlyState = Player(ply).state
    if ply == 0 then return end
    if not PlyState.onduty then
        TriggerClientEvent('ox_lib:notify', source, {description = 'You are now off duty', type = 'info'})
        SetResourceKvp('onduty', PlyState.onduty)
    elseif PlyState.onduty then
        TriggerClientEvent('ox_lib:notify', source, {description = 'You are now on duty', type = 'info'})
        SetResourceKvp('onduty', PlyState.onduty)
    end
end)

lib.addCommand('duty', {
    help = 'Clocks in the current player',
 }, function(source)
    local PlyState = Player(source).state
    if not PlyState.onduty then
        PlyState:set('onduty', true, true)
    elseif PlyState.onduty then
        PlyState:set('onduty', false, true)
    end
end)
