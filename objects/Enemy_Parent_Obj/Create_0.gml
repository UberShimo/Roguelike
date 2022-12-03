image_speed = 0;
mask_index = Monster_Hurtbox; // Fix a hurtbox

// Stats
HP = 100; // Health Points
maxHP = HP;
DMG = 10; // Attack Damage
AS = 1; // Attack speed
MS = 1; // Movement Speed
originalMS = MS; // So MS can reset

rotation = 0; // Used to twist the character
action = noone; // What are you doing?
stunned = false;
transparency = 1;
pushDirection = 0;
pushSpeed = 0;
shake = 0;

hitboxList = ds_list_create();
