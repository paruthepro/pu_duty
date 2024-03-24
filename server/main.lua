Player = Ox.GetPlayer(source)
HasJob = {}
HasJob = Player.getGroup(Config.Jobs)
Duty = false

function PaymentOffDuty(HasJob, Duty)
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

function Payment(HasJob, Duty)
    for i in Config.JobPay do
        for v in #HasJob do
            HasJob = HasJob[v]
        Payment = #Config.OffDutyPay[i]
            while HasJob and Duty do
                exports.pefcl:addBankBalance(source, { amount = Payment, message = HasJob.name })
                Wait(Config.PayoutPeriod * 10000)
            end
        end
    end
end

RegisterNetEvent('pu_duty:server:toggle', function(job)
    if HasJob then
    Duty = true
    Payment(HasJob, Duty)
    end
end)

RegisterNetEvent('pu_duty:server:paychecks', function()
    local player = Ox.GetPlayer(source)
    exports.oxmysql:fetch('SELECT stateId FROM paychecks WHERE stateId = @stateId', {
        ['stateId'] = player.stateId,
        ['duty'] = Duty
    }, function(result)
        if result[1] then

        else
            TriggerClientEvent('ox_lib:notify', source, Config.Locales.ErrorOwner)
        end
    end)
end)

