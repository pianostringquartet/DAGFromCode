---
title: square
description: A version of the variant that’s encapsulated in a square.
source: https://developer.apple.com/documentation/swiftui/symbolvariants/square-swift.property
timestamp: 2025-10-29T00:12:11.392Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [symbolvariants](/documentation/swiftui/symbolvariants)

**Instance Property**

# square

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A version of the variant that’s encapsulated in a square.

```swift
var square: SymbolVariants { get }
```

## Discussion

Use this property to modify a variant like [fill-swift.property](/documentation/swiftui/symbolvariants/fill-swift.property) so that it’s also contained in a square:

```swift
Label("Fill Square", systemImage: "star")
    .symbolVariant(.fill.square)
```



## Modifying a variant

- [circle](/documentation/swiftui/symbolvariants/circle-swift.property)
- [rectangle](/documentation/swiftui/symbolvariants/rectangle-swift.property)
- [fill](/documentation/swiftui/symbolvariants/fill-swift.property)
- [slash](/documentation/swiftui/symbolvariants/slash-swift.property)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
