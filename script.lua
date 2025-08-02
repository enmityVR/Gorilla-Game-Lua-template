-- This is a comment. The game engine ignores these lines.
-- This script creates a red cube named 'MyFirstCube'
-- This is just a base script, feel free to remove all the code here to make your own!
CreatePrimitive(
    "MyFirstCube",                      -- A unique name for the object
    "cube",                             -- The primitive type
    Vector3(0, 1, 2),                   -- Position (x, y, z)
    Vector3(0, 45, 0),                  -- Rotation in degrees (x, y, z)
    Vector3(0.5, 0.5, 0.5),             -- Scale (x, y, z)
    Color(1, 0, 0)                      -- Color (r, g, b)
)
-- Print a message to the in-game computer console
log("Cube created successfully.")
