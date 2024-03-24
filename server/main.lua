Duty = false

local function PaymentOffDuty(HasJob, Duty)
    for i in Config.OffDutyPay do
        for v in #HasJob do
            HasJob = HasJob[v]
        Payment = #Config.OffDutyPay[i]
            while HasJob and not Duty do
                exports.pefcl:addBankBalance(source, { amount = Payment, message = HasJob.name })
                Wait(Config.PayoutPeriod * 10000)
            end
        end
    end
end

local function Payment(HasJob, Duty)
    local Player = Ox.GetPlayer(source)
    local Groups = Player.getGroups()
    for group, grade in pairs(Groups) do
        table.sort(Groups)
        Work = {
            group = group,
            grade = grade
        }
        local payment = Config.OffDutyPay
        while HasJob and Duty do
            exports.pefcl:addBankBalance(source, { amount = payment, message = group.." "..grade })
            Wait(Config.PayoutPeriod * 10000)
        end
    end
end

RegisterNetEvent('pu_duty:server:toggle', function()
    Duty = true
end)

RegisterNetEvent('pu_duty:server:paychecks', function(source, stateId)
    local player = Ox.GetPlayer(source)
end)

