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
stunned = false; // Only effects movement
dazzled = false; // Actually more like a stun
transparency = 1;
pushDirection = 0;
xPush = 0;
yPush = 0;
frictionAmount = 0.5;
shake = 0;

hitboxList = ds_list_create();
