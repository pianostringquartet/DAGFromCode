---
title: UIHostingControllerSizingOptions
description: Options for how a hosting controller tracks its content’s size.
source: https://developer.apple.com/documentation/swiftui/uihostingcontrollersizingoptions
timestamp: 2025-10-29T00:14:02.337Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# UIHostingControllerSizingOptions

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, tvOS 16.0+, visionOS 1.0+

> Options for how a hosting controller tracks its content’s size.

```swift
struct UIHostingControllerSizingOptions
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByArrayLiteral](/documentation/Swift/ExpressibleByArrayLiteral)
- [OptionSet](/documentation/Swift/OptionSet)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [SetAlgebra](/documentation/Swift/SetAlgebra)

## Getting sizing options

- [intrinsicContentSize](/documentation/swiftui/uihostingcontrollersizingoptions/intrinsiccontentsize) The hosting controller’s view automatically invalidate its intrinsic content size when its ideal size changes.
- [preferredContentSize](/documentation/swiftui/uihostingcontrollersizingoptions/preferredcontentsize) The hosting controller tracks its content’s ideal size in its preferred content size.

## Creating a sizing option

- [init(rawValue:)](/documentation/swiftui/uihostingcontrollersizingoptions/init(rawvalue:)) Creates a new option set from a raw value.
- [rawValue](/documentation/swiftui/uihostingcontrollersizingoptions/rawvalue) The raw value.

## Displaying SwiftUI views in UIKit

- [Using SwiftUI with UIKit](/documentation/UIKit/using-swiftui-with-uikit)
- [Unifying your app’s animations](/documentation/swiftui/unifying-your-app-s-animations)
- [UIHostingController](/documentation/swiftui/uihostingcontroller)
- [UIHostingConfiguration](/documentation/swiftui/uihostingconfiguration)
- [UIHostingSceneDelegate](/documentation/swiftui/uihostingscenedelegate)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
