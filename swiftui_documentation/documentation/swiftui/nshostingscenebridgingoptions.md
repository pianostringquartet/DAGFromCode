---
title: NSHostingSceneBridgingOptions
description: Options for how hosting views and controllers manage aspects of the associated window.
source: https://developer.apple.com/documentation/swiftui/nshostingscenebridgingoptions
timestamp: 2025-10-29T00:13:55.213Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# NSHostingSceneBridgingOptions

**Available on:** macOS 14.0+

> Options for how hosting views and controllers manage aspects of the associated window.

```swift
struct NSHostingSceneBridgingOptions
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByArrayLiteral](/documentation/Swift/ExpressibleByArrayLiteral)
- [OptionSet](/documentation/Swift/OptionSet)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [SetAlgebra](/documentation/Swift/SetAlgebra)

## Geting bridging options

- [all](/documentation/swiftui/nshostingscenebridgingoptions/all) The hosting view’s associated window will have both its title bars and toolbars populated with values from their respective modifiers.
- [title](/documentation/swiftui/nshostingscenebridgingoptions/title) The hosting view’s associated window will have its title and subtitle populated with the values provided to the  and  modifiers, respectively.
- [toolbars](/documentation/swiftui/nshostingscenebridgingoptions/toolbars) The hosting view’s associated window will have its toolbar populated with any items provided to the  modifier.

## Creating a bridging options

- [init(rawValue:)](/documentation/swiftui/nshostingscenebridgingoptions/init(rawvalue:)) Creates a new set from a raw value.
- [rawValue](/documentation/swiftui/nshostingscenebridgingoptions/rawvalue) The raw value.

## Displaying SwiftUI views in AppKit

- [Unifying your app’s animations](/documentation/swiftui/unifying-your-app-s-animations)
- [NSHostingController](/documentation/swiftui/nshostingcontroller)
- [NSHostingView](/documentation/swiftui/nshostingview)
- [NSHostingMenu](/documentation/swiftui/nshostingmenu)
- [NSHostingSizingOptions](/documentation/swiftui/nshostingsizingoptions)
- [NSHostingSceneRepresentation](/documentation/swiftui/nshostingscenerepresentation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
