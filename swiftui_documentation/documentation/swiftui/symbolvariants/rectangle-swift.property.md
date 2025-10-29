---
title: rectangle
description: A version of the variant that’s encapsulated in a rectangle.
source: https://developer.apple.com/documentation/swiftui/symbolvariants/rectangle-swift.property
timestamp: 2025-10-29T00:13:20.961Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [symbolvariants](/documentation/swiftui/symbolvariants)

**Instance Property**

# rectangle

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A version of the variant that’s encapsulated in a rectangle.

```swift
var rectangle: SymbolVariants { get }
```

## Discussion

Use this property to modify a variant like [fill-swift.property](/documentation/swiftui/symbolvariants/fill-swift.property) so that it’s also contained in a rectangle:

```swift
Label("Fill Rectangle", systemImage: "plus")
    .symbolVariant(.fill.rectangle)
```



## Modifying a variant

- [circle](/documentation/swiftui/symbolvariants/circle-swift.property)
- [square](/documentation/swiftui/symbolvariants/square-swift.property)
- [fill](/documentation/swiftui/symbolvariants/fill-swift.property)
- [slash](/documentation/swiftui/symbolvariants/slash-swift.property)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
