-- Metodo para cargar el jugador y sus propiedades

jugador = {}
local anim8 = require ("libs/anim8.anim8")  -- LLamondo la libreria para las animaciones
jugador.x = 350 -- posicion del jugador en el eje x
jugador.y = 250 -- posicion del jugador en el eje y
jugador.speed = 2 -- velocidad del jugador
jugador.spriteSheet = love.graphics.newImage("assets/sprites/player-sheet.png")-- hoja de sprites del jugador
jugador.grid = anim8.newGrid(12, 18, jugador.spriteSheet:getWidth(), jugador.spriteSheet:getHeight())
jugador.animations = {}
jugador.animations.down = anim8.newAnimation(jugador.grid('1-4', 1), 0.2)
jugador.animations.left = anim8.newAnimation(jugador.grid('1-4', 2), 0.2)
jugador.animations.right = anim8.newAnimation(jugador.grid('1-4', 3), 0.2)
jugador.animations.up = anim8.newAnimation(jugador.grid('1-4', 4), 0.2)
jugador.anim = jugador.animations.up
return jugador
