---
title: defaultSize(width:height:depth:)
description: Sets a default size for a volumetric window.
source: https://developer.apple.com/documentation/swiftui/scene/defaultsize(width:height:depth:)
timestamp: 2025-10-29T00:13:53.529Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# defaultSize(width:height:depth:)

**Available on:** visionOS 1.0+

> Sets a default size for a volumetric window.

```swift
nonisolated func defaultSize(width: CGFloat, height: CGFloat, depth: CGFloat) -> some Scene
```

## Parameters

**width**

The default width for the created window.



**height**

The default height for the created window.



**depth**

The default depth for the created volumetric window.



## Return Value

A scene that uses a default size for new windows.

## Discussion

Use this modifier to indicate the default initial size for a new 3D window created from a [Scene](/documentation/swiftui/scene) using [Volumetric Window Style](/documentation/swiftui/volumetricwindowstyle):

```swift
WindowGroup {
    ContentView()
}
.windowStyle(.volumetric)
.defaultSize(width: 600, height: 400, depth: 600)
```

Each parameter is specified in points. The size of a volumetric scene is immutable after creation.

This modifier affects only windows that have the volumetric style in visionOS.

## Sizing a window

- [Positioning and sizing windows](/documentation/visionOS/positioning-and-sizing-windows)
- [defaultSize(_:)](/documentation/swiftui/scene/defaultsize(_:))
- [defaultSize(width:height:)](/documentation/swiftui/scene/defaultsize(width:height:))
- [defaultSize(_:in:)](/documentation/swiftui/scene/defaultsize(_:in:))
- [defaultSize(width:height:depth:in:)](/documentation/swiftui/scene/defaultsize(width:height:depth:in:))
- [windowResizability(_:)](/documentation/swiftui/scene/windowresizability(_:))
- [WindowResizability](/documentation/swiftui/windowresizability)
- [windowIdealSize(_:)](/documentation/swiftui/scene/windowidealsize(_:))
- [WindowIdealSize](/documentation/swiftui/windowidealsize)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
