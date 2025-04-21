fx_version 'bodacious'
game 'gta5'

name 'TWA Loading Screen'
description 'Avanceret loading screen med konfigurerbare baggrunde og logo med sange'
author 'TWA-Coding.dk'
version '1.0.0'

-- Load screen skal køre før alt andet
loadscreen 'ui/index.html'
loadscreen_manual_shutdown 'yes'

files {
    'ui/index.html',
    'ui/style.css',
    'ui/script.js',
    'ui/assets/images/*.png',
    'ui/assets/images/*.jpg',
    'ui/assets/music/*.mp3',
}

-- Tilføj client script til version check
client_script 'version_check.lua'