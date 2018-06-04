///scr_add_item(DsGrid, Name, Amount, Description, Sprite, Script);

var grid_to_add = argument0;
var new_item_name = argument1;
var new_item_amount = argument2;
var new_item_desc = argument3;
var new_item_sprite = argument4;
var new_item_script = argument5;

// Case 1 - Item is already in the inventory
for(var i = 0; i < ds_grid_height(grid_to_add); ++i)
{
    if(ds_grid_get(grid_to_add, I_NAME, i) == new_item_name)
    {
        ds_grid_set(grid_to_add, I_AMOUNT, i, (ds_grid_get(grid_to_add, I_AMOUNT, i) + new_item_amount));
        return true;
    }
}
    
// Case 2 - It's not in the inventory
if(ds_grid_get(grid_to_add, 0, 0) != 0)
{
    ds_grid_resize(grid_to_add, ds_grid_width(grid_to_add), ds_grid_height(grid_to_add) + 1);
}

new_item_spot = ds_grid_height(grid_to_add) - 1;
ds_grid_set(grid_to_add, I_NAME, new_item_spot, new_item_name);
ds_grid_set(grid_to_add, I_AMOUNT, new_item_spot, new_item_amount);
ds_grid_set(grid_to_add, I_DESC, new_item_spot, new_item_desc);
ds_grid_set(grid_to_add, I_SPRITE, new_item_spot, new_item_sprite);
ds_grid_set(grid_to_add, I_SCRIPT, new_item_spot, new_item_script);

return true;
