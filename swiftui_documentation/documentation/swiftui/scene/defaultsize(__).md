---
title: defaultSize(_:)
description: Sets a default size for a window.
source: https://developer.apple.com/documentation/swiftui/scene/defaultsize(_:)
timestamp: 2025-10-29T00:09:48.444Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# defaultSize(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 13.0+, visionOS 1.0+

> Sets a default size for a window.

```swift
nonisolated func defaultSize(_ size: CGSize) -> some Scene
```

## Parameters

**size**

The default size for new windows created from a scene.



## Return Value

A scene that uses a default size for new windows.

## Discussion

Use this scene modifier to indicate a default initial size for a new window that the system creates from a [Scene](/documentation/swiftui/scene) declaration. For example, you can request that new windows that a [Window Group](/documentation/swiftui/windowgroup) generates occupy 600 points in the x-dimension and 400 points in the y-dimension:

```swift
@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .defaultSize(CGSize(width: 600, height: 400))
    }
}
```

The size that you specify acts only as a default for when the window first appears. People can later resize the window using interface controls that the system provides. Also, during state restoration, the system restores windows to their most recent size rather than the default size.

If you specify a default size that’s outside the range of the window’s inherent resizability in one or both dimensions, the system clamps the affected dimension to keep it in range. You can configure the resizability of a scene using the [windowResizability(_:)](/documentation/swiftui/scene/windowresizability(_:)) modifier.

The default size modifier affects any scene type that creates windows in macOS, namely:

- [Window Group](/documentation/swiftui/windowgroup)
- [Window](/documentation/swiftui/window)
- [Document Group](/documentation/swiftui/documentgroup)
- [Settings](/documentation/swiftui/settings)

If you want to specify the input directly in terms of width and height, use [defaultSize(width:height:)](/documentation/swiftui/scene/defaultsize(width:height:)) instead.

## Sizing a window

- [Positioning and sizing windows](/documentation/visionOS/positioning-and-sizing-windows)
- [defaultSize(width:height:)](/documentation/swiftui/scene/defaultsize(width:height:))
- [defaultSize(width:height:depth:)](/documentation/swiftui/scene/defaultsize(width:height:depth:))
- [defaultSize(_:in:)](/documentation/swiftui/scene/defaultsize(_:in:))
- [defaultSize(width:height:depth:in:)](/documentation/swiftui/scene/defaultsize(width:height:depth:in:))
- [windowResizability(_:)](/documentation/swiftui/scene/windowresizability(_:))
- [WindowResizability](/documentation/swiftui/windowresizability)
- [windowIdealSize(_:)](/documentation/swiftui/scene/windowidealsize(_:))
- [WindowIdealSize](/documentation/swiftui/windowidealsize)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
