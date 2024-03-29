QBCore = exports['qb-core']:GetCoreObject()

Config = Config or {}

Config.NotifyType = "ox" -- ["qb"] or ["Okok"] or ["ox"] or ["mythic"]
Config.Inventory = "ox" -- ["qb"] or ["lj"] or ["ox"]

Config.PhoneName = "phone" -- Put the item name of your phone default item name is ("phone")
Config.RadioName = "radio" -- Put the item name of your radio default item name is ("radio")

Config.BrokenPhoneName = "brokenphone"
Config.BrokenRadioName = "brokenradio"

-- you can only have 1 true at the time
Config.BrokenItems = false -- If set true you will be given broken items for when you enter water
Config.Giveback = true -- If set true when you come out of the water you get your phone and radio back 

Config.Lang = {
    ['broken_in_water_phone'] = "Your phone is now damaged and you need to repair before you can use it again",
    ['broken_in_water_radio'] = "Your radio is now damaged and you need to repair before you can use it again",
    ['take_in_water_phone'] = "You have just lost your phone in the water",
    ['take_in_water_radio'] = "You have just lost your radio in the water",
    ['give_phone_back'] = "You have found your phone and it's still in good condition",
    ['give_radio_back'] = "You have found your radio and it's still in good condition",
    ['notie'] = "Notification"
}

function Notificationsv(src, titletext, msgtext, type)
    if Config.NotifyType == "qb" then
        if type == 'inform' then
           local info = 'primary'
        TriggerClientEvent('QBCore:Notify', src, msgtext, info)
        end
    elseif Config.NotifyType == "ox" then
        TriggerClientEvent('ox_lib:notify', src, { title = titletext, description = msgtext, type = type })
    elseif Config.NotifyType == "okok" then
        if type == 'inform' then
            local info = 'info'
        TriggerClientEvent('okokNotify:Alert', src, titletext, msgtext, 5000, info)
        end
    elseif Config.NotifyType == "mythic" then
        TriggerClientEvent('mythic_notify:client:SendAlert', src, { type = type, text = msgtext, style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
    elseif Config.NotifyType == "custom" then
  end
end