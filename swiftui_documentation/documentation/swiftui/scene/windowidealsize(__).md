---
title: windowIdealSize(_:)
description: Specifies how windows derived form this scene should determine their size when zooming.
source: https://developer.apple.com/documentation/swiftui/scene/windowidealsize(_:)
timestamp: 2025-10-29T00:15:25.405Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# windowIdealSize(_:)

**Available on:** macOS 15.0+

> Specifies how windows derived form this scene should determine their size when zooming.

```swift
nonisolated func windowIdealSize(_ idealSize: WindowIdealSize) -> some Scene
```

## Parameters

**idealSize**

A value which determines how windows derived from this scene should size themselves when zooming.



## Discussion

The default behavior will size the window to its maximum size, or the bounds of the display, whichever is smaller. By overriding this behavior, you can provide a size that is appropriate for the contents of your window.

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

## Sizing a window

- [Positioning and sizing windows](/documentation/visionOS/positioning-and-sizing-windows)
- [defaultSize(_:)](/documentation/swiftui/scene/defaultsize(_:))
- [defaultSize(width:height:)](/documentation/swiftui/scene/defaultsize(width:height:))
- [defaultSize(width:height:depth:)](/documentation/swiftui/scene/defaultsize(width:height:depth:))
- [defaultSize(_:in:)](/documentation/swiftui/scene/defaultsize(_:in:))
- [defaultSize(width:height:depth:in:)](/documentation/swiftui/scene/defaultsize(width:height:depth:in:))
- [windowResizability(_:)](/documentation/swiftui/scene/windowresizability(_:))
- [WindowResizability](/documentation/swiftui/windowresizability)
- [WindowIdealSize](/documentation/swiftui/windowidealsize)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
