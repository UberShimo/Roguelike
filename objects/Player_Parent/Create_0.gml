image_speed = 0;
friction = 0.2;
sprite_index = Shadow_Spr;
depth = -y;
direction = -90; // Face downwards

// Stats
HP = 100; // Health Points
DEF = 1;
FO = 1; // Focus
maxFO = FO;
AS = 1; // Attack Speed
CD = 60; // Ability cooldown
MS = 1.5; // Movement Speed
originalMS = MS; // Save original Movement Speed

abilityReady = true; // Is your ability ready to fuck some ass?
canJump = true;
spin = 0; // Spins the character every frame
rotation = 0; // Used to twist the character
action = noone; // What are you doing?
height = 0;
heightSpeed = 0; // For jumping n stuff
stepCheck = 0; // For stepping effect
cameraShake = 0; // Shakes camera dramatically when taking damage
characterShake = 0; // Shakes character dramatically when doing dramatic things
controllable = false; // Can you move the character?

characterSprite = noone;
blendColor = c_white;
transparency = 1;