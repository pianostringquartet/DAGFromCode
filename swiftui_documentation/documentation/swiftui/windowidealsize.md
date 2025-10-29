---
title: WindowIdealSize
description: A type which defines the size a window should use when zooming.
source: https://developer.apple.com/documentation/swiftui/windowidealsize
timestamp: 2025-10-29T00:12:46.145Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# WindowIdealSize

**Available on:** macOS 15.0+

> A type which defines the size a window should use when zooming.

```swift
struct WindowIdealSize
```

## Overview

Use this type in conjunction with the `Scene.windowIdealSize(_:)` modifier to override the default behavior for how windows behave when performing a zoom.

For example, you can define a window group where the window has an ideal width of 800 points and an ideal height of 600 points:

```swift
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(idealWidth: 800, idealHeight: 600)
        }
        .windowIdealSize(.fitToContent)
    }
}
```

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [automatic](/documentation/swiftui/windowidealsize/automatic) The automatic window ideal size. Windows will use the system behavior when determining the size to use when zooming.
- [fitToContent](/documentation/swiftui/windowidealsize/fittocontent) A window ideal size which uses the ideal size of the window’s contents.
- [maximum](/documentation/swiftui/windowidealsize/maximum) A window ideal size which uses the maximum size of the window’s contents.

## Sizing a window

- [Positioning and sizing windows](/documentation/visionOS/positioning-and-sizing-windows)
- [defaultSize(_:)](/documentation/swiftui/scene/defaultsize(_:))
- [defaultSize(width:height:)](/documentation/swiftui/scene/defaultsize(width:height:))
- [defaultSize(width:height:depth:)](/documentation/swiftui/scene/defaultsize(width:height:depth:))
- [defaultSize(_:in:)](/documentation/swiftui/scene/defaultsize(_:in:))
- [defaultSize(width:height:depth:in:)](/documentation/swiftui/scene/defaultsize(width:height:depth:in:))
- [windowResizability(_:)](/documentation/swiftui/scene/windowresizability(_:))
- [WindowResizability](/documentation/swiftui/windowresizability)
- [windowIdealSize(_:)](/documentation/swiftui/scene/windowidealsize(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
