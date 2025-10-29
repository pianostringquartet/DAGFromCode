---
title: windowResizability(_:)
description: Sets the kind of resizability to use for a window.
source: https://developer.apple.com/documentation/swiftui/scene/windowresizability(_:)
timestamp: 2025-10-29T00:10:19.024Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# windowResizability(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 13.0+, visionOS 1.0+

> Sets the kind of resizability to use for a window.

```swift
nonisolated func windowResizability(_ resizability: WindowResizability) -> some Scene
```

## Parameters

**resizability**

The resizability to use for windows created by this scene.



## Return Value

A scene that uses the specified resizability strategy.

## Discussion

Use this scene modifier to apply a value of type [Window Resizability](/documentation/swiftui/windowresizability) to a [Scene](/documentation/swiftui/scene) that you define in your [App](/documentation/swiftui/app) declaration. The value that you specify indicates the strategy the system uses to place minimum and maximum size restrictions on windows that it creates from that scene.

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

The default value for all scenes if you don’t apply the modifier is [automatic](/documentation/swiftui/windowresizability/automatic). With that strategy, [Settings](/documentation/swiftui/settings) windows use the [content Size](/documentation/swiftui/windowresizability/contentsize) strategy, while all others use [content Min Size](/documentation/swiftui/windowresizability/contentminsize).

## Sizing a window

- [Positioning and sizing windows](/documentation/visionOS/positioning-and-sizing-windows)
- [defaultSize(_:)](/documentation/swiftui/scene/defaultsize(_:))
- [defaultSize(width:height:)](/documentation/swiftui/scene/defaultsize(width:height:))
- [defaultSize(width:height:depth:)](/documentation/swiftui/scene/defaultsize(width:height:depth:))
- [defaultSize(_:in:)](/documentation/swiftui/scene/defaultsize(_:in:))
- [defaultSize(width:height:depth:in:)](/documentation/swiftui/scene/defaultsize(width:height:depth:in:))
- [WindowResizability](/documentation/swiftui/windowresizability)
- [windowIdealSize(_:)](/documentation/swiftui/scene/windowidealsize(_:))
- [WindowIdealSize](/documentation/swiftui/windowidealsize)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
