---
title: fill
description: A variant that fills the symbol.
source: https://developer.apple.com/documentation/swiftui/symbolvariants/fill-swift.type.property
timestamp: 2025-10-29T00:11:47.379Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [symbolvariants](/documentation/swiftui/symbolvariants)

**Type Property**

# fill

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A variant that fills the symbol.

```swift
static let fill: SymbolVariants
```

## Discussion

Use this variant with a call to the [symbolVariant(_:)](/documentation/swiftui/view/symbolvariant(_:)) modifier to draw filled symbols, for those symbols that have a filled variant:

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
    .symbolVariant(.fill)
}
```



## Getting symbol variants

- [none](/documentation/swiftui/symbolvariants/none)
- [circle](/documentation/swiftui/symbolvariants/circle-swift.type.property)
- [square](/documentation/swiftui/symbolvariants/square-swift.type.property)
- [rectangle](/documentation/swiftui/symbolvariants/rectangle-swift.type.property)
- [slash](/documentation/swiftui/symbolvariants/slash-swift.type.property)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
