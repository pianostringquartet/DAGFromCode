---
title: ignoresSafeArea(_:edges:)
description: Expands the safe area of a view.
source: https://developer.apple.com/documentation/swiftui/view/ignoressafearea(_:edges:)
timestamp: 2025-10-29T00:09:24.896Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# ignoresSafeArea(_:edges:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Expands the safe area of a view.

```swift
nonisolated func ignoresSafeArea(_ regions: SafeAreaRegions = .all, edges: Edge.Set = .all) -> some View
```

## Parameters

**regions**

The regions to expand the view’s safe area into. The modifier expands into all safe area region types by default.



**edges**

The set of edges to expand. Any edges that you don’t include in this set remain unchanged. The set includes all edges by default.



## Return Value

A view with an expanded safe area.

## Discussion

By default, the SwiftUI layout system sizes and positions views to avoid certain safe areas. This ensures that system content like the software keyboard or edges of the device don’t obstruct your views. To extend your content into these regions, you can ignore safe areas on specific edges by applying this modifier.

For examples of how to use this modifier, see [Adding-a-Background-to-Your](/documentation/swiftui/adding-a-background-to-your-view).

## Staying in the safe areas

- [safeAreaInset(edge:alignment:spacing:content:)](/documentation/swiftui/view/safeareainset(edge:alignment:spacing:content:))
- [safeAreaPadding(_:)](/documentation/swiftui/view/safeareapadding(_:))
- [safeAreaPadding(_:_:)](/documentation/swiftui/view/safeareapadding(_:_:))
- [SafeAreaRegions](/documentation/swiftui/safearearegions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
