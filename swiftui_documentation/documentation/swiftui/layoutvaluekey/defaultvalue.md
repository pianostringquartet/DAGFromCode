---
title: defaultValue
description: The default value of the key.
source: https://developer.apple.com/documentation/swiftui/layoutvaluekey/defaultvalue
timestamp: 2025-10-29T00:12:46.842Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layoutvaluekey](/documentation/swiftui/layoutvaluekey)

**Type Property**

# defaultValue

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The default value of the key.

```swift
static var defaultValue: Self.Value { get }
```

## Discussion

Implement the `defaultValue` property for a type that conforms to the [Layout Value Key](/documentation/swiftui/layoutvaluekey) protocol. For example, you can create a `Flexibility` layout value that defaults to `nil`:

```swift
private struct Flexibility: LayoutValueKey {
    static let defaultValue: CGFloat? = nil
}
```

The type that you declare for the `defaultValue` sets the layout key’s [Value](/documentation/swiftui/layoutvaluekey/value) associated type. The Swift compiler infers the key’s associated type in the above example as an optional [CGFloat-swift.struct](/documentation/CoreFoundation/CGFloat-swift.struct).

Any view that you don’t explicitly set a value for uses the default value. Override the default value for a view using the [layoutValue(key:value:)](/documentation/swiftui/view/layoutvalue(key:value:)) modifier.

## Providing a default value

- [Value](/documentation/swiftui/layoutvaluekey/value)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
