---
title: stackOrientation
description: The orientation of the containing stack-like container.
source: https://developer.apple.com/documentation/swiftui/layoutproperties/stackorientation
timestamp: 2025-10-29T00:09:18.817Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layoutproperties](/documentation/swiftui/layoutproperties)

**Instance Property**

# stackOrientation

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The orientation of the containing stack-like container.

```swift
var stackOrientation: Axis?
```

## Discussion

Certain views alter their behavior based on the stack orientation of the container that they appear in. For example, [Spacer](/documentation/swiftui/spacer) and [Divider](/documentation/swiftui/divider) align their major axis to match that of their container.

Set the orientation for your custom layout container by returning a configured [Layout Properties](/documentation/swiftui/layoutproperties) instance from your [Layout](/documentation/swiftui/layout) type’s implementation of the [layout Properties](/documentation/swiftui/layout/layoutproperties) method. For example, you can indicate that your layout has a [vertical](/documentation/swiftui/axis/vertical) major axis:

```swift
extension BasicVStack {
    static var layoutProperties: LayoutProperties {
        var properties = LayoutProperties()
        properties.stackOrientation = .vertical
        return properties
    }
}
```

A value of `nil`, which is the default when you don’t specify a value, indicates an unknown orientation, or that a layout isn’t one-dimensional.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
