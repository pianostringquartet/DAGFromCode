---
title: dynamicTypeSize(_:)
description: Sets the Dynamic Type size within the view to the given value.
source: https://developer.apple.com/documentation/swiftui/view/dynamictypesize(_:)
timestamp: 2025-10-29T00:15:11.124Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# dynamicTypeSize(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Sets the Dynamic Type size within the view to the given value.

```swift
nonisolated func dynamicTypeSize(_ size: DynamicTypeSize) -> some View
```

## Parameters

**size**

The size to set for this view.



## Return Value

A view that sets the Dynamic Type size to the specified `size`.

## Discussion

As an example, you can set a Dynamic Type size in `ContentView` to be [x Large](/documentation/swiftui/dynamictypesize/xlarge) (this can be useful in previews to see your content at a different size) like this:

```swift
ContentView()
    .dynamicTypeSize(.xLarge)
```

If a Dynamic Type size range is applied after setting a value, the value is limited by that range:

```swift
ContentView() // Dynamic Type size will be .large
    .dynamicTypeSize(...DynamicTypeSize.large)
    .dynamicTypeSize(.xLarge)
```

When limiting the Dynamic Type size, consider if adding a large content view with [accessibilityShowsLargeContentViewer()](/documentation/swiftui/view/accessibilityshowslargecontentviewer()) would be appropriate.

## Adjusting text size

- [textScale(_:isEnabled:)](/documentation/swiftui/view/textscale(_:isenabled:))
- [dynamicTypeSize](/documentation/swiftui/environmentvalues/dynamictypesize)
- [DynamicTypeSize](/documentation/swiftui/dynamictypesize)
- [ScaledMetric](/documentation/swiftui/scaledmetric)
- [TextVariantPreference](/documentation/swiftui/textvariantpreference)
- [FixedTextVariant](/documentation/swiftui/fixedtextvariant)
- [SizeDependentTextVariant](/documentation/swiftui/sizedependenttextvariant)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
