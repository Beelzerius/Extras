/// eft_health(qtd);

var qtd = argument0;

if(instance_exists(obj_player_stats))
{
    obj_player_stats.hp = min(obj_player_stats.hp+qtd, obj_player_stats.maxhp);
}
