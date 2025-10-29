---
title: layoutProperties
description: The default property values for a layout.
source: https://developer.apple.com/documentation/swiftui/layout/layoutproperties-6h7w0
timestamp: 2025-10-29T00:15:31.677Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layout](/documentation/swiftui/layout)

**Type Property**

# layoutProperties

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The default property values for a layout.

```swift
static var layoutProperties: LayoutProperties { get }
```

## Discussion

If you don’t implement the [layout Properties](/documentation/swiftui/layout/layoutproperties) method in your custom layout, the protocol uses this default implementation instead, which returns a [Layout Properties](/documentation/swiftui/layoutproperties) instance with default values. The properties instance contains information about the layout container, like a [stack Orientation](/documentation/swiftui/layoutproperties/stackorientation) property that indicates the container’s major axis.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
