---
title: init(alignment:horizontalSpacing:verticalSpacing:)
description: Creates a grid with the specified spacing and alignment.
source: https://developer.apple.com/documentation/swiftui/gridlayout/init(alignment:horizontalspacing:verticalspacing:)
timestamp: 2025-10-29T00:09:51.923Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gridlayout](/documentation/swiftui/gridlayout)

**Initializer**

# init(alignment:horizontalSpacing:verticalSpacing:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a grid with the specified spacing and alignment.

```swift
init(alignment: Alignment = .center, horizontalSpacing: CGFloat? = nil, verticalSpacing: CGFloat? = nil)
```

## Parameters

**alignment**

The guide for aligning subviews within the space allocated for a given cell. The default is [center](/documentation/swiftui/alignment/center).



**horizontalSpacing**

The horizontal distance between each cell, given in points. The value is `nil` by default, which results in a default distance between cells that’s appropriate for the platform.



**verticalSpacing**

The vertical distance between each cell, given in points. The value is `nil` by default, which results in a default distance between cells that’s appropriate for the platform.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
