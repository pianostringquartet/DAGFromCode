---
title: none
description: No variant for a symbol.
source: https://developer.apple.com/documentation/swiftui/symbolvariants/none
timestamp: 2025-10-29T00:10:18.471Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [symbolvariants](/documentation/swiftui/symbolvariants)

**Type Property**

# none

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> No variant for a symbol.

```swift
static let none: SymbolVariants
```

## Discussion

Using this variant with the [symbolVariant(_:)](/documentation/swiftui/view/symbolvariant(_:)) modifier doesn’t have any effect. Instead, to show a symbol that ignores the current variant, directly set the [symbol Variants](/documentation/swiftui/environmentvalues/symbolvariants) environment value to `none` using the [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) modifer:

```swift
HStack {
    Image(systemName: "heart")
    Image(systemName: "heart")
        .environment(\.symbolVariants, .none)
}
.symbolVariant(.fill)
```



## Getting symbol variants

- [circle](/documentation/swiftui/symbolvariants/circle-swift.type.property)
- [square](/documentation/swiftui/symbolvariants/square-swift.type.property)
- [rectangle](/documentation/swiftui/symbolvariants/rectangle-swift.type.property)
- [fill](/documentation/swiftui/symbolvariants/fill-swift.type.property)
- [slash](/documentation/swiftui/symbolvariants/slash-swift.type.property)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
