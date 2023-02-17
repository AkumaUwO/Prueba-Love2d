function love.load()
  local mapa = require ("libs/maps.maps")
  local jugador = require ("libs/player.player")
  teclaPulsada = "ninguna"
  local controles = require ("libs/controls.controls")
end

function love.update(dt)
    controles.movimiento()
    jugador.anim:update(dt)
end

function love.draw()
  love.graphics.setDefaultFilter("nearest", "nearest")
  love.graphics.print( "".. teclaPulsada)
  love.graphics.draw(mapa.background, 0, 0)
  jugador.anim:draw(jugador.spriteSheet, jugador.x, jugador.y, nil, 5 )

end

function love.keypressed(key, scancode, isrepeat)
    teclaPulsada = key
end
