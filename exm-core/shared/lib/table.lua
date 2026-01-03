local TableLib = {}

---Prints out every key and value next to eachother in a table
---@param t table The table to print from
function TableLib.Print(t)
    for key, value in pairs(t) do
        if type(value) == "table" then
            TableLib.Print(value)
        else
            print(key, value)
        end
    end
end

ExtendedM.Table = TableLib