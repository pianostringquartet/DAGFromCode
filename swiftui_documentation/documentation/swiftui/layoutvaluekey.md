---
title: LayoutValueKey
description: A key for accessing a layout value of a layout container’s subviews.
source: https://developer.apple.com/documentation/swiftui/layoutvaluekey
timestamp: 2025-10-29T00:09:38.294Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# LayoutValueKey

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A key for accessing a layout value of a layout container’s subviews.

```swift
protocol LayoutValueKey
```

## Overview

If you create a custom layout by defining a type that conforms to the [Layout](/documentation/swiftui/layout) protocol, you can also create custom layout values that you set on individual views, and that your container view can access to guide its layout behavior. Your custom values resemble the built-in layout values that you set with view modifiers like [layoutPriority(_:)](/documentation/swiftui/view/layoutpriority(_:)) and [zIndex(_:)](/documentation/swiftui/view/zindex(_:)), but have a purpose that you define.

To create a custom layout value, define a type that conforms to the `LayoutValueKey` protocol and implement the one required property that returns the default value of the property. For example, you can create a property that defines an amount of flexibility for a view, defined as an optional floating point number with a default value of `nil`:

```swift
private struct Flexibility: LayoutValueKey {
    static let defaultValue: CGFloat? = nil
}
```

The Swift compiler infers this particular key’s associated type as an optional [CGFloat-swift.struct](/documentation/CoreFoundation/CGFloat-swift.struct) from this definition.

### Set a value on a view

Set the value on a view by adding the [layoutValue(key:value:)](/documentation/swiftui/view/layoutvalue(key:value:)) view modifier to the view. To make your custom value easier to work with, you can do this in a convenience modifier in an extension of the [View](/documentation/swiftui/view) protocol:

```swift
extension View {
    func layoutFlexibility(_ value: CGFloat?) -> some View {
        layoutValue(key: Flexibility.self, value: value)
    }
}
```

Use your modifier to set the value on any views that need a nondefault value:

```swift
BasicVStack {
    Text("One View")
    Text("Another View")
        .layoutFlexibility(3)
}
```

Any view that you don’t explicitly set a value for uses the default value, as with the first [Text](/documentation/swiftui/text) view, above.

### Retrieve a value during layout

Access a custom layout value using the key as an index on subview’s proxy (an instance of [Layout Subview](/documentation/swiftui/layoutsubview)) and use the value to make decisions about sizing, placement, or other layout operations. For example, you might read the flexibility value in your layout view’s [sizeThatFits(_:)](/documentation/swiftui/layoutsubview/sizethatfits(_:)) method, and adjust your size calculations accordingly:

```swift
extension BasicVStack {
    func sizeThatFits(
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout Void
    ) -> CGSize {

        // Map the flexibility property of each subview into an array.
        let flexibilities = subviews.map { subview in
            subview[Flexibility.self]
        }

        // Calculate and return the size of the layout container.
        // ...
    }
}
```

## Providing a default value

- [defaultValue](/documentation/swiftui/layoutvaluekey/defaultvalue) The default value of the key.
- [Value](/documentation/swiftui/layoutvaluekey/value) The type of the key’s value.

## Associating values with views in a custom layout

- [layoutValue(key:value:)](/documentation/swiftui/view/layoutvalue(key:value:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
