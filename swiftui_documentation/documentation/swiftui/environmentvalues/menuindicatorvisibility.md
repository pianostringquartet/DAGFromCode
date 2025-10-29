---
title: menuIndicatorVisibility
description: The menu indicator visibility to apply to controls within a view.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/menuindicatorvisibility
timestamp: 2025-10-29T00:10:05.591Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# menuIndicatorVisibility

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 17.0+, visionOS 1.0+

> The menu indicator visibility to apply to controls within a view.

```swift
var menuIndicatorVisibility: Visibility { get set }
```

## Discussion

> [!NOTE]
> On tvOS, the standard button styles do not include a menu indicator, so this modifier will have no effect when using a built-in button style. You can implement an indicator in your own [Button Style](/documentation/swiftui/buttonstyle) implementation by checking the value of this environment value.

## Showing a menu indicator

- [menuIndicator(_:)](/documentation/swiftui/view/menuindicator(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
