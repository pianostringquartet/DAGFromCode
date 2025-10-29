---
title: sidebarRowSize
description: The current size of sidebar rows.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/sidebarrowsize
timestamp: 2025-10-29T00:12:12.156Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# sidebarRowSize

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The current size of sidebar rows.

```swift
var sidebarRowSize: SidebarRowSize { get set }
```

## Discussion

On macOS, reflects the value of the “Sidebar icon size” in System Settings’ Appearance settings.

This can be used to update the content shown in the sidebar in response to this size. And it can be overridden to force a sidebar to a particularly size, regardless of the user preference.

On other platforms, the value is always `.medium` and setting a different value has no effect.

SwiftUI views like `Label` automatically adapt to the sidebar row size.

## Configuring the sidebar

- [SidebarRowSize](/documentation/swiftui/sidebarrowsize)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
