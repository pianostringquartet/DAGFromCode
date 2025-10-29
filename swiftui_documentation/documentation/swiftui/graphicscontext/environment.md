---
title: environment
description: The environment associated with the graphics context.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/environment
timestamp: 2025-10-29T00:12:30.285Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Property**

# environment

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The environment associated with the graphics context.

```swift
var environment: EnvironmentValues { get }
```

## Discussion

SwiftUI initially sets this to the environment of the context’s enclosing view. The context uses values like display resolution and the color scheme from the environment to resolve types like [Image](/documentation/swiftui/image) and [Color](/documentation/swiftui/color). You can also access values stored in the environment for your own purposes.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
