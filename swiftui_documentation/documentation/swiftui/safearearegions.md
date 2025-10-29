---
title: SafeAreaRegions
description: A set of symbolic safe area regions.
source: https://developer.apple.com/documentation/swiftui/safearearegions
timestamp: 2025-10-29T00:13:02.414Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SafeAreaRegions

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A set of symbolic safe area regions.

```swift
@frozen struct SafeAreaRegions
```

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByArrayLiteral](/documentation/Swift/ExpressibleByArrayLiteral)
- [OptionSet](/documentation/Swift/OptionSet)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [SetAlgebra](/documentation/Swift/SetAlgebra)

## Getting safe area regions

- [all](/documentation/swiftui/safearearegions/all) All safe area regions.
- [container](/documentation/swiftui/safearearegions/container) The safe area defined by the device and containers within the user interface, including elements such as top and bottom bars.
- [keyboard](/documentation/swiftui/safearearegions/keyboard) The safe area matching the current extent of any software keyboard displayed over the view content.

## Staying in the safe areas

- [ignoresSafeArea(_:edges:)](/documentation/swiftui/view/ignoressafearea(_:edges:))
- [safeAreaInset(edge:alignment:spacing:content:)](/documentation/swiftui/view/safeareainset(edge:alignment:spacing:content:))
- [safeAreaPadding(_:)](/documentation/swiftui/view/safeareapadding(_:))
- [safeAreaPadding(_:_:)](/documentation/swiftui/view/safeareapadding(_:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
