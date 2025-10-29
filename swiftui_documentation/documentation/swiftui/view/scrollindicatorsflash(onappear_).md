---
title: scrollIndicatorsFlash(onAppear:)
description: Flashes the scroll indicators of a scrollable view when it appears.
source: https://developer.apple.com/documentation/swiftui/view/scrollindicatorsflash(onappear:)
timestamp: 2025-10-29T00:14:03.343Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# scrollIndicatorsFlash(onAppear:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Flashes the scroll indicators of a scrollable view when it appears.

```swift
nonisolated func scrollIndicatorsFlash(onAppear: Bool) -> some View
```

## Parameters

**onAppear**

A Boolean value that indicates whether the scroll indicators flash when the scroll view appears.



## Return Value

A view that flashes any visible scroll indicators when it first appears.

## Discussion

Use this modifier to control whether the scroll indicators of a scroll view briefly flash when the view first appears. For example, you can make the indicators flash by setting the `onAppear` parameter to `true`:

```swift
ScrollView {
    // ...
}
.scrollIndicatorsFlash(onAppear: true)
```

Only scroll indicators that you configure to be visible flash. To flash scroll indicators when a value changes, use [scrollIndicatorsFlash(trigger:)](/documentation/swiftui/view/scrollindicatorsflash(trigger:)) instead.

## Showing scroll indicators

- [scrollIndicatorsFlash(trigger:)](/documentation/swiftui/view/scrollindicatorsflash(trigger:))
- [scrollIndicators(_:axes:)](/documentation/swiftui/view/scrollindicators(_:axes:))
- [horizontalScrollIndicatorVisibility](/documentation/swiftui/environmentvalues/horizontalscrollindicatorvisibility)
- [verticalScrollIndicatorVisibility](/documentation/swiftui/environmentvalues/verticalscrollindicatorvisibility)
- [ScrollIndicatorVisibility](/documentation/swiftui/scrollindicatorvisibility)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
