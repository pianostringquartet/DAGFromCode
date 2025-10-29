---
title: scrollIndicators(_:axes:)
description: Sets the visibility of scroll indicators within this view.
source: https://developer.apple.com/documentation/swiftui/view/scrollindicators(_:axes:)
timestamp: 2025-10-29T00:11:44.458Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# scrollIndicators(_:axes:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Sets the visibility of scroll indicators within this view.

```swift
nonisolated func scrollIndicators(_ visibility: ScrollIndicatorVisibility, axes: Axis.Set = [.vertical, .horizontal]) -> some View
```

## Parameters

**visibility**

The visibility to apply to scrollable views.



**axes**

The axes of scrollable views that the visibility applies to.



## Return Value

A view with the specified scroll indicator visibility.

## Discussion

Use this modifier to hide or show scroll indicators on scrollable content in views like a [Scroll View](/documentation/swiftui/scrollview), [List](/documentation/swiftui/list), or [Text Editor](/documentation/swiftui/texteditor). This modifier applies the preferred visibility to any scrollable content within a view hierarchy.

```swift
ScrollView {
    VStack(alignment: .leading) {
        ForEach(0..<100) {
            Text("Row \($0)")
        }
    }
}
.scrollIndicators(.hidden)
```

Use the [hidden](/documentation/swiftui/scrollindicatorvisibility/hidden) value to indicate that you prefer that views never show scroll indicators along a given axis. Use [visible](/documentation/swiftui/scrollindicatorvisibility/visible) when you prefer that views show scroll indicators. Depending on platform conventions, visible scroll indicators might only appear while scrolling. Pass [automatic](/documentation/swiftui/scrollindicatorvisibility/automatic) to allow views to decide whether or not to show their indicators.

## Showing scroll indicators

- [scrollIndicatorsFlash(onAppear:)](/documentation/swiftui/view/scrollindicatorsflash(onappear:))
- [scrollIndicatorsFlash(trigger:)](/documentation/swiftui/view/scrollindicatorsflash(trigger:))
- [horizontalScrollIndicatorVisibility](/documentation/swiftui/environmentvalues/horizontalscrollindicatorvisibility)
- [verticalScrollIndicatorVisibility](/documentation/swiftui/environmentvalues/verticalscrollindicatorvisibility)
- [ScrollIndicatorVisibility](/documentation/swiftui/scrollindicatorvisibility)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
