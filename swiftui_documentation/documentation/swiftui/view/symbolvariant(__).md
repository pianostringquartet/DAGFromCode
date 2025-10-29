---
title: symbolVariant(_:)
description: Makes symbols within the view show a particular variant.
source: https://developer.apple.com/documentation/swiftui/view/symbolvariant(_:)
timestamp: 2025-10-29T00:09:33.547Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# symbolVariant(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Makes symbols within the view show a particular variant.

```swift
nonisolated func symbolVariant(_ variant: SymbolVariants) -> some View
```

## Parameters

**variant**

The variant to use for symbols. Use the values in [Symbol Variants](/documentation/swiftui/symbolvariants).



## Return Value

A view that applies the specified symbol variant or variants to itself and its child views.

## Discussion

When you want all the [sf](/design/Human-Interface-Guidelines/sf-symbols) in a part of your app’s user interface to use the same variant, use the `symbolVariant(_:)` modifier with a [Symbol Variants](/documentation/swiftui/symbolvariants) value, like [fill-swift.type.property](/documentation/swiftui/symbolvariants/fill-swift.type.property):

```swift
VStack(spacing: 20) {
    HStack(spacing: 20) {
        Image(systemName: "person")
        Image(systemName: "folder")
        Image(systemName: "gearshape")
        Image(systemName: "list.bullet")
    }

    HStack(spacing: 20) {
        Image(systemName: "person")
        Image(systemName: "folder")
        Image(systemName: "gearshape")
        Image(systemName: "list.bullet")
    }
    .symbolVariant(.fill) // Shows filled variants, when available.
}
```

A symbol that doesn’t have the specified variant remains unaffected. In the example above, the `list.bullet` symbol doesn’t have a filled variant, so the `symbolVariant(_:)` modifer has no effect.



If you apply the modifier more than once, its effects accumulate. Alternatively, you can apply multiple variants in one call:

```swift
Label("Airplane", systemImage: "airplane.circle.fill")

Label("Airplane", systemImage: "airplane")
    .symbolVariant(.circle)
    .symbolVariant(.fill)

Label("Airplane", systemImage: "airplane")
    .symbolVariant(.circle.fill)
```

All of the labels in the code above produce the same output:



You can apply all these variants in any order, but if you apply more than one shape variant, the one closest to the symbol takes precedence. For example, the following image uses the [square-swift.type.property](/documentation/swiftui/symbolvariants/square-swift.type.property) shape:

```swift
Image(systemName: "arrow.left")
    .symbolVariant(.square) // This shape takes precedence.
    .symbolVariant(.circle)
    .symbolVariant(.fill)
```



To cause a symbol to ignore the variants currently in the environment, directly set the [symbol Variants](/documentation/swiftui/environmentvalues/symbolvariants) environment value to [none](/documentation/swiftui/symbolvariants/none) using the [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) modifer.

## Setting a symbol variant

- [symbolVariants](/documentation/swiftui/environmentvalues/symbolvariants)
- [SymbolVariants](/documentation/swiftui/symbolvariants)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
