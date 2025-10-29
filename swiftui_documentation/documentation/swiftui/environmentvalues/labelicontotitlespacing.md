---
title: labelIconToTitleSpacing
description: The spacing between the icon and title of a label.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/labelicontotitlespacing
timestamp: 2025-10-29T00:15:25.098Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# labelIconToTitleSpacing

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> The spacing between the icon and title of a label.

```swift
var labelIconToTitleSpacing: CGFloat? { get }
```

## Discussion

The value that should be used for the icon-to-title spacing in labels. To set a different value for labels, use the `labelIconToTitleSpacing` modifier.

This environment value can be used in custom label styles to allow changing the icon-to-title spacing using the `labelIconToTitleSpacing` modifier. If the value is `nil`, a default value should be used instead.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
