---
title: square
description: A variant that encapsulates the symbol in a square.
source: https://developer.apple.com/documentation/swiftui/symbolvariants/square-swift.type.property
timestamp: 2025-10-29T00:13:23.721Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [symbolvariants](/documentation/swiftui/symbolvariants)

**Type Property**

# square

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A variant that encapsulates the symbol in a square.

```swift
static let square: SymbolVariants
```

## Discussion

Use this variant with a call to the [symbolVariant(_:)](/documentation/swiftui/view/symbolvariant(_:)) modifier to draw symbols in a square, for those symbols that have a square variant:

```swift
VStack(spacing: 20) {
    HStack(spacing: 20) {
        Image(systemName: "flag")
        Image(systemName: "heart")
        Image(systemName: "bolt")
        Image(systemName: "star")
    }
    HStack(spacing: 20) {
        Image(systemName: "flag")
        Image(systemName: "heart")
        Image(systemName: "bolt")
        Image(systemName: "star")
    }
    .symbolVariant(.square)
}
```



## Getting symbol variants

- [none](/documentation/swiftui/symbolvariants/none)
- [circle](/documentation/swiftui/symbolvariants/circle-swift.type.property)
- [rectangle](/documentation/swiftui/symbolvariants/rectangle-swift.type.property)
- [fill](/documentation/swiftui/symbolvariants/fill-swift.type.property)
- [slash](/documentation/swiftui/symbolvariants/slash-swift.type.property)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
