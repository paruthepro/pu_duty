Duty = false
local function PaymentOffDuty(HasJob, Duty)
    local Player = Ox.GetPlayer(source)
    local Groups = Player.getGroups()
    for group, grade in pairs(Groups) do
        table.sort(Groups)

     end
end

local function Payment(HasJob, Duty)
    local Player = Ox.GetPlayer(source)
    local Groups = Player.getGroups()
    for group, grade in pairs(Groups) do
        table.sort(Groups)

     end
end

RegisterNetEvent('pu_duty:server:toggle', function()
    Duty = true
end)

RegisterNetEvent('pu_duty:server:paychecks', function(source, stateId)
    local Player = Ox.GetPlayer(source)
end)

