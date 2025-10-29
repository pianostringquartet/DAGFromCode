---
title: slash
description: A slashed version of the variant.
source: https://developer.apple.com/documentation/swiftui/symbolvariants/slash-swift.property
timestamp: 2025-10-29T00:10:38.842Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [symbolvariants](/documentation/swiftui/symbolvariants)

**Instance Property**

# slash

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A slashed version of the variant.

```swift
var slash: SymbolVariants { get }
```

## Discussion

Use this property to modify a shape variant like [circle-swift.type.property](/documentation/swiftui/symbolvariants/circle-swift.type.property) so that it’s also covered by a slash:

```swift
Label("Circle Slash", systemImage: "flag")
    .symbolVariant(.circle.slash)
```



## Modifying a variant

- [circle](/documentation/swiftui/symbolvariants/circle-swift.property)
- [square](/documentation/swiftui/symbolvariants/square-swift.property)
- [rectangle](/documentation/swiftui/symbolvariants/rectangle-swift.property)
- [fill](/documentation/swiftui/symbolvariants/fill-swift.property)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
