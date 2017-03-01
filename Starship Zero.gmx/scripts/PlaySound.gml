/*Script that plays a sound, if the user has not muted anything*/

soundId = argument0; //File name of the sound being played
isMusic = argument1; //If the file is music

if(!global.musicMuted && isMusic)
    audio_play_sound(soundId,1,true);
else if(!global.soundEffectMuted && !isMusic)
    audio_play_sound(soundId,1,false);
