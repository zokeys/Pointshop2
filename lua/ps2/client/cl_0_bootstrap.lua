--[[
    # Include all item bases
    This includes all item bases in kinv/items, applying base classes
    and mixins and makes them available in KInventory.Items.
]]--
KInventory.loadAllItems( )
hook.Add( "OnReloaded", "PS2_ReloadItems", KInventory.loadAllItems )

--[[
    # Load Modules
    This includes all of the ps2 modules files in "lua/ps2/modules" after InitPostEntity.
]]--
LibK.InitPostEntityPromise:Then( Pointshop2.LoadModules )
hook.Add( "OnReloaded", "PS2_ReloadModules", function()
    Pointshop2.LoadModules()
end )