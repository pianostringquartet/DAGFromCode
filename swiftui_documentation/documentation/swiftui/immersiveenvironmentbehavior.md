---
title: ImmersiveEnvironmentBehavior
description: The behavior of the system-provided immersive environments when a scene is opened by your app.
source: https://developer.apple.com/documentation/swiftui/immersiveenvironmentbehavior
timestamp: 2025-10-29T00:15:05.679Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ImmersiveEnvironmentBehavior

**Available on:** visionOS 26.0+

> The behavior of the system-provided immersive environments when a scene is opened by your app.

```swift
struct ImmersiveEnvironmentBehavior
```

## Overview

Use one of these values with the [immersiveEnvironmentBehavior(_:)](/documentation/swiftui/scene/immersiveenvironmentbehavior(_:)) scene modifier to indicate how the immersive environment should behave when your app opens a scene.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [automatic](/documentation/swiftui/immersiveenvironmentbehavior/automatic) A behavior that matches the system default behavior.
- [coexist](/documentation/swiftui/immersiveenvironmentbehavior/coexist) A behavior that keeps the system’s immersive environment as is when opening a scene.
- [replace](/documentation/swiftui/immersiveenvironmentbehavior/replace) A behavior that replaces any currently opened immersive environment with the new scene.

## Creating an immersive space

- [ImmersiveSpace](/documentation/swiftui/immersivespace)
- [ImmersiveSpaceContentBuilder](/documentation/swiftui/immersivespacecontentbuilder)
- [immersionStyle(selection:in:)](/documentation/swiftui/scene/immersionstyle(selection:in:))
- [ImmersionStyle](/documentation/swiftui/immersionstyle)
- [immersiveSpaceDisplacement](/documentation/swiftui/environmentvalues/immersivespacedisplacement)
- [ProgressiveImmersionAspectRatio](/documentation/swiftui/progressiveimmersionaspectratio)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
