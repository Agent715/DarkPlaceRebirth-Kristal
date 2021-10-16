local Banana, super = Class(Event)

function Banana:init(data)
    super:init(self, data.center_x, data.center_y, data.width, data.height)

    self:setOrigin(0.5, 0.5)
    self:setSprite("banana", 0.25)
end

function Banana:onCollide(player)
    local src = love.audio.newSource("assets/sounds/snd_item.wav", "static")
    src:play()

    self:remove()
end

return Banana