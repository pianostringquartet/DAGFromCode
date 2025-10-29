---
title: symbolVariants
description: The symbol variant to use in this environment.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/symbolvariants
timestamp: 2025-10-29T00:10:14.450Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# symbolVariants

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The symbol variant to use in this environment.

```swift
var symbolVariants: SymbolVariants { get set }
```

## Discussion

You set this environment value indirectly by using the [symbolVariant(_:)](/documentation/swiftui/view/symbolvariant(_:)) view modifier. However, you access the environment variable directly using the [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) modifier. Do this when you want to use the [none](/documentation/swiftui/symbolvariants/none) variant to ignore the value that’s already in the environment:

```swift
HStack {
    Image(systemName: "heart")
    Image(systemName: "heart")
        .environment(\.symbolVariants, .none)
}
.symbolVariant(.fill)
```



## Setting a symbol variant

- [symbolVariant(_:)](/documentation/swiftui/view/symbolvariant(_:))
- [SymbolVariants](/documentation/swiftui/symbolvariants)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
