---
title: circle
description: A version of the variant that’s encapsulated in a circle.
source: https://developer.apple.com/documentation/swiftui/symbolvariants/circle-swift.property
timestamp: 2025-10-29T00:12:46.798Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [symbolvariants](/documentation/swiftui/symbolvariants)

**Instance Property**

# circle

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A version of the variant that’s encapsulated in a circle.

```swift
var circle: SymbolVariants { get }
```

## Discussion

Use this property to modify a variant like [fill-swift.property](/documentation/swiftui/symbolvariants/fill-swift.property) so that it’s also contained in a circle:

```swift
Label("Fill Circle", systemImage: "bolt")
    .symbolVariant(.fill.circle)
```



## Modifying a variant

- [square](/documentation/swiftui/symbolvariants/square-swift.property)
- [rectangle](/documentation/swiftui/symbolvariants/rectangle-swift.property)
- [fill](/documentation/swiftui/symbolvariants/fill-swift.property)
- [slash](/documentation/swiftui/symbolvariants/slash-swift.property)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
