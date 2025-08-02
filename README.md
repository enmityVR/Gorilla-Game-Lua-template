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

    Vector3(x, y, z): Represents a point, direction, or scale in 3D space.
[cite: 6]```

Color(r, g, b, a): Represents an RGBA color. All values are floats from 0.0 to 1.0.

 The alpha component (a) is optional and defaults to 1.0 (opaque).

```

Utility Functions

    log(message): Prints a string message to the in-game computer console for debugging.
[cite: 9]```

### Object Manipulation

These functions are for creating and interacting with game objects[cite: 10].

CreatePrimitive(name, type, position, rotation, scale, color): Creates a basic primitive shape.

```

        name (string): A unique identifier for the object.
[cite: 12]```

    type (string): The shape type.

 Valid options are: "cube", "sphere", "capsule", "cylinder", "plane", "quad".

```

        position (Vector3): The world-space position.
[cite: 15]```

    rotation (Vector3, optional): The rotation in Euler angles.

```

        scale (Vector3, optional): The local scale.
[cite: 17]```

    color (Color, optional): The material color.

```

    MoveObject(name, targetPosition, targetRotation, duration): Smoothly interpolates an object's position and rotation.
[cite: 19]```

    name (string): The name of the object to move.

```

        targetPosition (Vector3): The destination position.
[cite: 21]```

    targetRotation (Vector3, optional): The destination rotation.

```

        duration (number): The time in seconds for the move to complete.
[cite: 23] A duration of 0 will teleport the object instantly.
[cite: 23]```

DestroyObject(name): Destroys an object previously created by a script.

 This cannot be used on non-script-created objects.

```

    SetObjectActive(name, isActive): Sets the active state of an object, effectively showing (true) or hiding (false) it.
[cite: 25]```

GetObjectPosition(name): Returns the world-space position of an object as a Vector3. Returns nil if not found.

```

    GetObjectRotation(name): Returns the world-space rotation of an object as a Vector3 in Euler angles.
[cite: 27] Returns nil if not found.
[cite: 27]```

### Physics

GetObjectVelocity(name): Returns the world-space velocity of an object's Rigidbody as a Vector3. Returns nil if not found.


SetObjectKinematic(name, isKinematic): Sets the kinematic state of an object's Rigidbody.


SetObjectGravity(name, useGravity): Enables or disables gravity for an object's Rigidbody.


AddForceToObject(name, force, forceMode): Adds a force to an object's Rigidbody.


    name (string): The name of the object.


    force (Vector3): The force vector to apply.


    forceMode (string, optional): The type of force to apply. Valid options: "force", "acceleration", "impulse", "velocitychange". Defaults to "force".


### Controller Input

Input functions should be called within an update() function, which is executed by the game on every frame.
 For all input functions, the hand parameter must be either "left" or "right".

```

    GetGripButtonDown(hand): Returns true for the single frame the grip button is pressed.
[cite: 30]```

GetTriggerButtonDown(hand): Returns true for the single frame the trigger button is pressed.

```

    GetPrimaryButtonDown(hand): Returns true for the single frame the Primary (A/X) button is pressed.
[cite: 32]```

GetSecondaryButtonDown(hand): Returns true for the single frame the Secondary (B/Y) button is pressed.

```

    GetThumbStickButtonDown(hand): Returns true for the single frame the thumbstick is clicked down.
[cite: 34]```

GetMenuButtonDown(hand): Returns true for the single frame the menu button is pressed.

```

    GetTriggerButtonTouched(hand): Returns true if the user's finger is resting on the trigger.
[cite: 36]```

GetPrimaryButtonTouched(hand): Returns true if the user's finger is resting on the Primary button.

```

    GetSecondaryButtonTouched(hand): Returns true if the user's finger is resting on the Secondary button.
[cite: 38]```

GetThumbStickButtonTouched(hand): Returns true if the user's finger is resting on the thumbstick.

```

    GetGripButtonFloat(hand): Returns the grip pressure as a float from 0.0 to 1.0.
[cite: 40]```

GetTriggerButtonFloat(hand): Returns the trigger pressure as a float from 0.0 to 1.0.

```

    GetThumbStick2DAxis(hand): Returns a Vector2 representing the joystick's current position.
[cite: 42] The x and y values range from -1.0 to 1.0.
[cite: 43]```

### Player and Controller Information

GetControllerPosition(hand): Returns the Vector3 world position of the specified controller.

```

    GetControllerRotation(hand): Returns the Vector3 world rotation of the specified controller in Euler angles.
[cite: 45]```

GetControllerVelocity(hand): Returns the Vector3 velocity of the specified controller.

```

    GetControllerDirection(hand, direction): Returns a normalized Vector3 direction vector relative to the controller.
[cite: 47] The direction parameter can be "forward", "up", or "right".
[cite: 47]```

SetPlayerVelocity(velocity): Sets the player's Rigidbody velocity directly.

```

    VibrateController(hand, amplitude, duration): Triggers a haptic feedback event.
[cite: 49]```

    amplitude (number): The vibration intensity, from 0.0 to 1.0.

```

        duration (number): The vibration time in seconds.
```
