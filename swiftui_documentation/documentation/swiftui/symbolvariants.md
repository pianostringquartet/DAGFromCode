---
title: SymbolVariants
description: A variant of a symbol.
source: https://developer.apple.com/documentation/swiftui/symbolvariants
timestamp: 2025-10-29T00:11:52.223Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SymbolVariants

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A variant of a symbol.

```swift
struct SymbolVariants
```

## Overview

Many of the [sf](/design/Human-Interface-Guidelines/sf-symbols) that you can add to your app using an [Image](/documentation/swiftui/image) or a [Label](/documentation/swiftui/label) instance have common variants, like a filled version or a version that’s contained within a circle. The symbol’s name indicates the variant:

```swift
VStack(alignment: .leading) {
    Label("Default", systemImage: "heart")
    Label("Fill", systemImage: "heart.fill")
    Label("Circle", systemImage: "heart.circle")
    Label("Circle Fill", systemImage: "heart.circle.fill")
}
```



You can configure a part of your view hierarchy to use a particular variant for all symbols in that view and its child views using `SymbolVariants`. Add the [symbolVariant(_:)](/documentation/swiftui/view/symbolvariant(_:)) modifier to a view to set a variant for that view’s environment. For example, you can use the modifier to create the same set of labels as in the example above, using only the base name of the symbol in the label declarations:

```swift
VStack(alignment: .leading) {
    Label("Default", systemImage: "heart")
    Label("Fill", systemImage: "heart")
        .symbolVariant(.fill)
    Label("Circle", systemImage: "heart")
        .symbolVariant(.circle)
    Label("Circle Fill", systemImage: "heart")
        .symbolVariant(.circle.fill)
}
```

Alternatively, you can set the variant in the environment directly by passing the [symbol Variants](/documentation/swiftui/environmentvalues/symbolvariants) environment value to the [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) modifier:

```swift
Label("Fill", systemImage: "heart")
    .environment(\.symbolVariants, .fill)
```

SwiftUI sets a variant for you in some environments. For example, SwiftUI automatically applies the [fill-swift.type.property](/documentation/swiftui/symbolvariants/fill-swift.type.property) symbol variant for items that appear in the `content` closure of the [swipeActions(edge:allowsFullSwipe:content:)](/documentation/swiftui/view/swipeactions(edge:allowsfullswipe:content:)) method, or as the tab bar items of a [Tab View](/documentation/swiftui/tabview).

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting symbol variants

- [none](/documentation/swiftui/symbolvariants/none) No variant for a symbol.
- [circle](/documentation/swiftui/symbolvariants/circle-swift.type.property) A variant that encapsulates the symbol in a circle.
- [square](/documentation/swiftui/symbolvariants/square-swift.type.property) A variant that encapsulates the symbol in a square.
- [rectangle](/documentation/swiftui/symbolvariants/rectangle-swift.type.property) A variant that encapsulates the symbol in a rectangle.
- [fill](/documentation/swiftui/symbolvariants/fill-swift.type.property) A variant that fills the symbol.
- [slash](/documentation/swiftui/symbolvariants/slash-swift.type.property) A variant that draws a slash through the symbol.

## Modifying a variant

- [circle](/documentation/swiftui/symbolvariants/circle-swift.property) A version of the variant that’s encapsulated in a circle.
- [square](/documentation/swiftui/symbolvariants/square-swift.property) A version of the variant that’s encapsulated in a square.
- [rectangle](/documentation/swiftui/symbolvariants/rectangle-swift.property) A version of the variant that’s encapsulated in a rectangle.
- [fill](/documentation/swiftui/symbolvariants/fill-swift.property) A filled version of the variant.
- [slash](/documentation/swiftui/symbolvariants/slash-swift.property) A slashed version of the variant.

## Comparing variants

- [contains(_:)](/documentation/swiftui/symbolvariants/contains(_:)) Returns a Boolean value that indicates whether the current variant contains the specified variant.

## Setting a symbol variant

- [symbolVariant(_:)](/documentation/swiftui/view/symbolvariant(_:))
- [symbolVariants](/documentation/swiftui/environmentvalues/symbolvariants)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
