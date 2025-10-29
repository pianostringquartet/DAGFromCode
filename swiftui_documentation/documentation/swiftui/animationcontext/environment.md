---
title: environment
description: The current environment of the view that created the custom animation.
source: https://developer.apple.com/documentation/swiftui/animationcontext/environment
timestamp: 2025-10-29T00:12:45.822Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animationcontext](/documentation/swiftui/animationcontext)

**Instance Property**

# environment

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The current environment of the view that created the custom animation.

```swift
var environment: EnvironmentValues { get }
```

## Discussion

An instance of [Custom Animation](/documentation/swiftui/customanimation) uses this property to read environment values from the view that created the animation. To learn more about environment values including how to define custom environment values, see [Environment Values](/documentation/swiftui/environmentvalues).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
