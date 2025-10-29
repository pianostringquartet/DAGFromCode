---
title: ScaledMetric
description: A dynamic property that scales a numeric value.
source: https://developer.apple.com/documentation/swiftui/scaledmetric
timestamp: 2025-10-29T00:13:25.933Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ScaledMetric

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A dynamic property that scales a numeric value.

```swift
@propertyWrapper struct ScaledMetric<Value> where Value : BinaryFloatingPoint
```

## Conforms To

- [DynamicProperty](/documentation/swiftui/dynamicproperty)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating the metric

- [init(wrappedValue:)](/documentation/swiftui/scaledmetric/init(wrappedvalue:)) Creates the scaled metric with an unscaled value using the default scaling.
- [init(wrappedValue:relativeTo:)](/documentation/swiftui/scaledmetric/init(wrappedvalue:relativeto:)) Creates the scaled metric with an unscaled value and a text style to scale relative to.

## Getting the metric

- [wrappedValue](/documentation/swiftui/scaledmetric/wrappedvalue) The value scaled based on the current environment.

## Adjusting text size

- [textScale(_:isEnabled:)](/documentation/swiftui/view/textscale(_:isenabled:))
- [dynamicTypeSize(_:)](/documentation/swiftui/view/dynamictypesize(_:))
- [dynamicTypeSize](/documentation/swiftui/environmentvalues/dynamictypesize)
- [DynamicTypeSize](/documentation/swiftui/dynamictypesize)
- [TextVariantPreference](/documentation/swiftui/textvariantpreference)
- [FixedTextVariant](/documentation/swiftui/fixedtextvariant)
- [SizeDependentTextVariant](/documentation/swiftui/sizedependenttextvariant)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
