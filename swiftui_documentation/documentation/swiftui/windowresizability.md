---
title: WindowResizability
description: The resizability of a window.
source: https://developer.apple.com/documentation/swiftui/windowresizability
timestamp: 2025-10-29T00:09:47.949Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# WindowResizability

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 13.0+, visionOS 1.0+

> The resizability of a window.

```swift
struct WindowResizability
```

## Overview

Use the [windowResizability(_:)](/documentation/swiftui/scene/windowresizability(_:)) scene modifier to apply a value of this type to a [Scene](/documentation/swiftui/scene) that you define in your [App](/documentation/swiftui/app) declaration. The value that you specify indicates the strategy the system uses to place minimum and maximum size restrictions on windows that it creates from that scene.

For example, you can create a window group that people can resize to between 100 and 400 points in both dimensions by applying both a frame with those constraints to the scene’s content, and the [content Size](/documentation/swiftui/windowresizability/contentsize) resizability to the scene:

```swift
@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(
                    minWidth: 100, maxWidth: 400,
                    minHeight: 100, maxHeight: 400)
        }
        .windowResizability(.contentSize)
    }
}
```

The default value for all scenes if you don’t apply the modifier is [automatic](/documentation/swiftui/windowresizability/automatic). With that strategy, [Settings](/documentation/swiftui/settings) windows use the [content Size](/documentation/swiftui/windowresizability/contentsize) strategy, while all others use [content Min Size](/documentation/swiftui/windowresizability/contentminsize). Windows on visionOS with a window style of [volumetric](/documentation/swiftui/windowstyle/volumetric) also use the [content Size](/documentation/swiftui/windowresizability/contentsize) strategy.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting the resizability

- [automatic](/documentation/swiftui/windowresizability/automatic) The automatic window resizability.
- [contentMinSize](/documentation/swiftui/windowresizability/contentminsize) A window resizability that’s partially derived from the window’s content.
- [contentSize](/documentation/swiftui/windowresizability/contentsize) A window resizability that’s derived from the window’s content.

## Sizing a window

- [Positioning and sizing windows](/documentation/visionOS/positioning-and-sizing-windows)
- [defaultSize(_:)](/documentation/swiftui/scene/defaultsize(_:))
- [defaultSize(width:height:)](/documentation/swiftui/scene/defaultsize(width:height:))
- [defaultSize(width:height:depth:)](/documentation/swiftui/scene/defaultsize(width:height:depth:))
- [defaultSize(_:in:)](/documentation/swiftui/scene/defaultsize(_:in:))
- [defaultSize(width:height:depth:in:)](/documentation/swiftui/scene/defaultsize(width:height:depth:in:))
- [windowResizability(_:)](/documentation/swiftui/scene/windowresizability(_:))
- [windowIdealSize(_:)](/documentation/swiftui/scene/windowidealsize(_:))
- [WindowIdealSize](/documentation/swiftui/windowidealsize)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
