local Thread = {}
local Threads = {}

---Registers a new thread loop
---@param name string The name of the newly created thread
---@param time integer The amount of time it takes to update the loop
function Thread.Register(name, time)
    if Threads[name] then return end

    Threads[name] = {}

    CreateThread(function()
        for _, callback in pairs(Threads[name]) do
            callback()
        end

        Wait(time)
    end)
end

---Connects a callback to the thread
---@param thread_name string The name of the thread
---@param callback function The function to run inside the thread loop
---@param priority integer The priority of the function
function Thread.Connect(thread_name, callback, priority)
    local thread = Threads[thread_name]
    if not thread then return end

    -- i made it like this so empty spaces get filled, also im not sure if table.insert is optimized anyway nor do i know if it fills empty space
    if priority then
        if thread[priority] ~= nil then
            for i = #thread + 1, priority + 1, -1 do
                thread[i] = thread[i - 1]
            end
        end

        thread[priority] = callback
    else
        local inserted = false

        for i = 1, #thread do
            if thread[i] == nil then
                thread[i] = callback
                inserted = true
                break
            end
        end

        if not inserted then
            thread[#thread + 1] = callback
        end
    end
end

ExtendedM.Thread = Thread