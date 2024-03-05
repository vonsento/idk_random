love.window.setTitle( "Stop the illegal immigrants!~" )

-- giving permision to use the other files here
local polices = require ("polices");
local shooting_shit = require ("shooting_shit");
local terrorists = require ("terrorists");

-- unsure if its supposed to be called the same was as terrorists,policies,etc but making it table as safe choice for now
local sprites = {};

local police = {}
-- adding the police guy photo which wil be controlled by the character
sprites.police =  love.graphics.newImagine('sprites/police.jpg');
-- soon will add more sprites when i find appropriate images

-- data type: table
-- creating a mouse table and will used to control the player, who will follow the mouse
local mouse = {}

-- data type: int 
-- score will be 10 points for small kill 20 for large
local score = 0;

function love.load()
    police.x = 100
    police.y = 100
end

function love.update(dt)
    mouse.x, mouse.y = love.mouse.getPosition()
end

function love.draw()
    -- printing the coordinates to test if mouse is being tracked, because soon i want to move the police follow the mouse
    love.graphics.print("Mouse Coordinates: " .. mouse.x .. ", " .. mouse.y)

    -- creating table for mouse positio
    local cursor_position = {};
    cursor_position.x = love.mouse.getX();
    cursor_position.y = love.mouse.getY();

    local police_position = poli();
    
    local police_angle_cursor = utility.get_angle(police_position, cursor_position); 

    local police_width = sprites.police:getWidth();
    local police_height = sprites.police:getHeight();

    love.graphics.draw(sprites.police, police_position.x, police_position.y, police_angle_cursor, nil, nil, police_width * 0.5, police_height * 0.5);
    
    love.graphics.circle("fill", police.x, police.y, 50)
end