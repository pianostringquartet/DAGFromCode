---
title: init()
description: Creates a default set of properties.
source: https://developer.apple.com/documentation/swiftui/layoutproperties/init()
timestamp: 2025-10-29T00:09:49.640Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layoutproperties](/documentation/swiftui/layoutproperties)

**Initializer**

# init()

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a default set of properties.

```swift
init()
```

## Discussion

Use a layout properties instance to provide information about a type that conforms to the [Layout](/documentation/swiftui/layout) protocol. For example, you can create a layout properties instance in your layout’s implementation of the [layout Properties](/documentation/swiftui/layout/layoutproperties) method, and use it to indicate that the layout has a [vertical](/documentation/swiftui/axis/vertical) orientation:

```swift
extension BasicVStack {
    static var layoutProperties: LayoutProperties {
        var properties = LayoutProperties()
        properties.stackOrientation = .vertical
        return properties
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
