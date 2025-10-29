---
title: description
description: A textual representation of the color.
source: https://developer.apple.com/documentation/swiftui/color/description
timestamp: 2025-10-29T00:14:27.867Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color)

**Instance Property**

# description

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A textual representation of the color.

```swift
var description: String { get }
```

## Discussion

Use this method to get a string that represents the color. The [print(_:separator:terminator:)](/documentation/Swift/print(_:separator:terminator:)) function uses this property to get a string representing an instance:

```swift
print(Color.red)
// Prints "red"
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
