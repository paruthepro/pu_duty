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

AddEventHandler('ox:playerLoaded', function(source, userid, charid)
    Duty = false
end)

AddEventHandler('ox:playerLogout', function(source, userid, charid)
    Duty = false
end)
AddEventHandler('ox:characterDeleted', function(source, userid, charid)
    Duty = false
end)

RegisterNetEvent('pu_duty:server:toggle', function(job)
    if HasJob then
    Duty = true
    Payment(HasJob, Duty)
    end
end)