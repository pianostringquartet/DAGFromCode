---
title: layoutProperties
description: Properties of a layout container.
source: https://developer.apple.com/documentation/swiftui/layout/layoutproperties
timestamp: 2025-10-29T00:10:34.383Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layout](/documentation/swiftui/layout)

**Type Property**

# layoutProperties

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Properties of a layout container.

```swift
static var layoutProperties: LayoutProperties { get }
```

## Discussion

Implement this property in a type that conforms to the [Layout](/documentation/swiftui/layout) protocol to characterize your custom layout container. For example, you can indicate that your layout has a vertical [stack Orientation](/documentation/swiftui/layoutproperties/stackorientation):

```swift
extension BasicVStack {
    static var layoutProperties: LayoutProperties {
        var properties = LayoutProperties()
        properties.stackOrientation = .vertical
        return properties
    }
}
```

If you don’t implement this property in your custom layout, the protocol provides a default implementation, namely [layout Properties](/documentation/swiftui/layout/layoutproperties-6h7w0), that returns a [Layout Properties](/documentation/swiftui/layoutproperties) instance with default values.

## Reporting layout container characteristics

- [explicitAlignment(of:in:proposal:subviews:cache:)](/documentation/swiftui/layout/explicitalignment(of:in:proposal:subviews:cache:))
- [spacing(subviews:cache:)](/documentation/swiftui/layout/spacing(subviews:cache:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
