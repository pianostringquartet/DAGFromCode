---
title: dynamicTypeSize
description: The current Dynamic Type size.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/dynamictypesize
timestamp: 2025-10-29T00:13:21.254Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# dynamicTypeSize

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The current Dynamic Type size.

```swift
var dynamicTypeSize: DynamicTypeSize { get set }
```

## Discussion

This value changes as the user’s chosen Dynamic Type size changes. The default value is device-dependent.

When limiting the Dynamic Type size, consider if adding a large content view with [accessibilityShowsLargeContentViewer()](/documentation/swiftui/view/accessibilityshowslargecontentviewer()) would be appropriate.

On macOS, this value cannot be changed by users and does not affect the text size.

## Adjusting text size

- [textScale(_:isEnabled:)](/documentation/swiftui/view/textscale(_:isenabled:))
- [dynamicTypeSize(_:)](/documentation/swiftui/view/dynamictypesize(_:))
- [DynamicTypeSize](/documentation/swiftui/dynamictypesize)
- [ScaledMetric](/documentation/swiftui/scaledmetric)
- [TextVariantPreference](/documentation/swiftui/textvariantpreference)
- [FixedTextVariant](/documentation/swiftui/fixedtextvariant)
- [SizeDependentTextVariant](/documentation/swiftui/sizedependenttextvariant)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
