---
title: NSHostingSizingOptions
description: Options for how hosting views and controllers reflect their content’s size into Auto Layout constraints.
source: https://developer.apple.com/documentation/swiftui/nshostingsizingoptions
timestamp: 2025-10-29T00:11:09.497Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# NSHostingSizingOptions

**Available on:** macOS 13.0+

> Options for how hosting views and controllers reflect their content’s size into Auto Layout constraints.

```swift
struct NSHostingSizingOptions
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByArrayLiteral](/documentation/Swift/ExpressibleByArrayLiteral)
- [OptionSet](/documentation/Swift/OptionSet)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [SetAlgebra](/documentation/Swift/SetAlgebra)

## Geting sizing options

- [intrinsicContentSize](/documentation/swiftui/nshostingsizingoptions/intrinsiccontentsize) The hosting view creates and updates constraints that represent its content’s ideal size. These constraints in turn influence the hosting view’s .
- [maxSize](/documentation/swiftui/nshostingsizingoptions/maxsize) The hosting view creates and updates constraints that represent its content’s maximum size.
- [minSize](/documentation/swiftui/nshostingsizingoptions/minsize) The hosting view creates and updates constraints that represent its content’s minimum size.
- [preferredContentSize](/documentation/swiftui/nshostingsizingoptions/preferredcontentsize) The hosting controller creates and updates constraints that represent its content’s ideal size. These constraints in turn influence the hosting controller’s .
- [standardBounds](/documentation/swiftui/nshostingsizingoptions/standardbounds) The hosting view creates constraints for its minimum, ideal, and maximum sizes.

## Creating a sizing option

- [init(rawValue:)](/documentation/swiftui/nshostingsizingoptions/init(rawvalue:)) Creates a new options from a raw value.
- [rawValue](/documentation/swiftui/nshostingsizingoptions/rawvalue) The raw value.

## Displaying SwiftUI views in AppKit

- [Unifying your app’s animations](/documentation/swiftui/unifying-your-app-s-animations)
- [NSHostingController](/documentation/swiftui/nshostingcontroller)
- [NSHostingView](/documentation/swiftui/nshostingview)
- [NSHostingMenu](/documentation/swiftui/nshostingmenu)
- [NSHostingSceneRepresentation](/documentation/swiftui/nshostingscenerepresentation)
- [NSHostingSceneBridgingOptions](/documentation/swiftui/nshostingscenebridgingoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
