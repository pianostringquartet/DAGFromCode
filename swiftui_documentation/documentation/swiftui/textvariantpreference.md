---
title: TextVariantPreference
description: A protocol for controlling the size variant of text views.
source: https://developer.apple.com/documentation/swiftui/textvariantpreference
timestamp: 2025-10-29T00:13:15.074Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# TextVariantPreference

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A protocol for controlling the size variant of text views.

```swift
protocol TextVariantPreference
```

## Conforming Types

- [FixedTextVariant](/documentation/swiftui/fixedtextvariant)
- [SizeDependentTextVariant](/documentation/swiftui/sizedependenttextvariant)

## Type Properties

- [fixed](/documentation/swiftui/textvariantpreference/fixed) The default text variant preference. It always chooses the largest available variant.
- [sizeDependent](/documentation/swiftui/textvariantpreference/sizedependent) The size dependent preference allows the text to take the available space into account when choosing the size variant to display.

## Adjusting text size

- [textScale(_:isEnabled:)](/documentation/swiftui/view/textscale(_:isenabled:))
- [dynamicTypeSize(_:)](/documentation/swiftui/view/dynamictypesize(_:))
- [dynamicTypeSize](/documentation/swiftui/environmentvalues/dynamictypesize)
- [DynamicTypeSize](/documentation/swiftui/dynamictypesize)
- [ScaledMetric](/documentation/swiftui/scaledmetric)
- [FixedTextVariant](/documentation/swiftui/fixedtextvariant)
- [SizeDependentTextVariant](/documentation/swiftui/sizedependenttextvariant)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
