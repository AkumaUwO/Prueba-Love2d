-- Metodo para asignar y configurar los controles

controles = {}

function controles.movimiento()
  local isMoving = false
  if love.keyboard.isDown("w") then
    jugador.y = jugador.y - jugador.speed
    jugador.anim = jugador.animations.up
    isMoving = true
  end
  if love.keyboard.isDown("a") then
    jugador.x = jugador.x - jugador.speed
    jugador.anim = jugador.animations.left
    isMoving = true
  end
  if love.keyboard.isDown("s") then
    jugador.y = jugador.y + jugador.speed
    jugador.anim = jugador.animations.down
    isMoving = true
  end
  if love.keyboard.isDown("d") then
    jugador.x = jugador.x + jugador.speed
    jugador.anim = jugador.animations.right
    isMoving = true
  end

  if jugador.x > 800 then
    jugador.x  = 0
  end
  if jugador.y > 600 then
    jugador.y  = 0
  end
  if jugador.x < 0 then
    jugador.x  = 800
  end
  if jugador.y < 0 then
    jugador.y  = 600
  end

  if isMoving == false then
    jugador.anim:gotoFrame(2)
  end
end

return controles
