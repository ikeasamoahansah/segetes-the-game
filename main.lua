function love.load()
    require('src/startup/gameStart')
    gameStart()
end

function love.update(dt)
    updateAll(dt)
end

function love.draw()
    cam:attach()
    gameMap:drawLayer(gameMap.layers["Ground"])
    gameMap:drawLayer(gameMap.layers["Divisions"])
    drawPlayer()
    -- drawEnemy()
    cam:detach()
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
    
    if key == "z" then
        sounds.dungeon:stop()
    end
end
