local isRagdoll = false -- Track if the player is in ragdoll mode

-- Function to toggle ragdoll on and off
local function toggleRagdoll()
    local ped = PlayerPedId() -- Get the player's ped (character)
    isRagdoll = not isRagdoll -- Toggle the ragdoll state

    if isRagdoll then
        -- Enable ragdoll mode
        SetPedToRagdoll(ped, 1000, 1000, 0, true, true, false)
    else
        -- Simply stop forcing ragdoll, allowing natural recovery
        SetPedToRagdoll(ped, 1, 1, 0, false, false, false)
    end
end

-- Main loop to listen for keypress and handle ragdoll state
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) -- Prevent blocking the thread

        -- Check if the ragdoll key is pressed to toggle on/off
        if IsControlJustPressed(1, Config.RagdollKey) then
            toggleRagdoll() -- Toggle ragdoll when the key is pressed
        end

        -- If in ragdoll mode, keep applying it
        if isRagdoll then
            local ped = PlayerPedId()
            SetPedToRagdoll(ped, 1000, 1000, 0, true, true, false)
        end
    end
end)

RegisterCommand("ragdoll", function()
    toggleRagdoll()
end, false)