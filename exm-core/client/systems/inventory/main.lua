local Inventory = {}

ExtendedM.DataSyncer:On('inventory', function(inv)
    print("[INVENTORY] Client received inventory update")
end)

ExtendedM.Inventory = Inventory