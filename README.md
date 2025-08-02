Getting Started: Your First Script

The following is a simple example that demonstrates how to create a primitive object. All mod scripts should be in a file named script.lua.

```
-- This is a comment. The game engine ignores these lines.
-- Create a red cube named 'MyFirstCube'
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
```

API Reference

The following sections detail all available functions and types for use in your scripts.
Core Types

```
    Vector3(x, y, z): Represents a point, direction, or scale in 3D space.
```

```
    Color(r, g, b, a): Represents an RGBA color. All values are floats from 0.0 to 1.0. The alpha component (a) is optional and defaults to 1.0 (opaque).
```

Utility Functions

```
    log(message): Prints a string message to the in-game computer console for debugging.
```

Object Manipulation

These functions are for creating and interacting with game objects.

```
    CreatePrimitive(name, type, position, rotation, scale, color): Creates a basic primitive shape.
```

```
        name (string): A unique identifier for the object.
```

```
        type (string): The shape type. Valid options are: "cube", "sphere", "capsule", "cylinder", "plane", "quad".
```

```
        position (Vector3): The world-space position.
```

```
        rotation (Vector3, optional): The rotation in Euler angles.
```

```
        scale (Vector3, optional): The local scale.
```

```
        color (Color, optional): The material color.
```

```
    MoveObject(name, targetPosition, targetRotation, duration): Smoothly interpolates an object's position and rotation.
```

```
        name (string): The name of the object to move.
```

```
        targetPosition (Vector3): The destination position.
```

```
        targetRotation (Vector3, optional): The destination rotation.
```

```
        duration (number): The time in seconds for the move to complete. A duration of 0 will teleport the object instantly.
```

```
    DestroyObject(name): Destroys an object previously created by a script. This cannot be used on non-script-created objects.
```

```
    SetObjectActive(name, isActive): Sets the active state of an object, effectively showing (true) or hiding (false) it.
```

```
    GetObjectPosition(name): Returns the world-space position of an object as a Vector3. Returns nil if not found.
```

```
    GetObjectRotation(name): Returns the world-space rotation of an object as a Vector3 in Euler angles. Returns nil if not found.
```

Controller Input

```
Input functions should be called within an update() function, which is executed by the game on every frame. For all input functions, the hand parameter must be either "left" or "right".
```

```
    GetGripButtonDown(hand): Returns true for the single frame the grip button is pressed.
```

```
    GetTriggerButtonDown(hand): Returns true for the single frame the trigger button is pressed.
```

```
    GetPrimaryButtonDown(hand): Returns true for the single frame the Primary (A/X) button is pressed.
```

```
    GetSecondaryButtonDown(hand): Returns true for the single frame the Secondary (B/Y) button is pressed.
```

```
    GetThumbStickButtonDown(hand): Returns true for the single frame the thumbstick is clicked down.
```

```
    GetMenuButtonDown(hand): Returns true for the single frame the menu button is pressed.
```

```
    GetTriggerButtonTouched(hand): Returns true if the user's finger is resting on the trigger.
```

```
    GetPrimaryButtonTouched(hand): Returns true if the user's finger is resting on the Primary button.
```

```
    GetSecondaryButtonTouched(hand): Returns true if the user's finger is resting on the Secondary button.
```

```
    GetThumbStickButtonTouched(hand): Returns true if the user's finger is resting on the thumbstick.
```

```
    GetGripButtonFloat(hand): Returns the grip pressure as a float from 0.0 to 1.0.
```

```
    GetTriggerButtonFloat(hand): Returns the trigger pressure as a float from 0.0 to 1.0.
```

```
    GetThumbStick2DAxis(hand): Returns a Vector2 representing the joystick's current position. The x and y values range from -1.0 to 1.0.
```

Player and Controller Information

```
    GetControllerPosition(hand): Returns the Vector3 world position of the specified controller.
```

```
    GetControllerRotation(hand): Returns the Vector3 world rotation of the specified controller in Euler angles.
```

```
    GetControllerVelocity(hand): Returns the Vector3 velocity of the specified controller.
```

```
    GetControllerDirection(hand, direction): Returns a normalized Vector3 direction vector relative to the controller. The direction parameter can be "forward", "up", or "right".
```

```
    SetPlayerVelocity(velocity): Sets the player's Rigidbody velocity directly.
```

```
    VibrateController(hand, amplitude, duration): Triggers a haptic feedback event.
```

```
        amplitude (number): The vibration intensity, from 0.0 to 1.0.
```

```
        duration (number): The vibration time in seconds.
```
