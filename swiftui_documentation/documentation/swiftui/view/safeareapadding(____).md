---
title: safeAreaPadding(_:_:)
description: Adds the provided insets into the safe area of this view.
source: https://developer.apple.com/documentation/swiftui/view/safeareapadding(_:_:)
timestamp: 2025-10-29T00:10:15.898Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# safeAreaPadding(_:_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Adds the provided insets into the safe area of this view.

```swift
nonisolated func safeAreaPadding(_ edges: Edge.Set = .all, _ length: CGFloat? = nil) -> some View
```

## Discussion

Use this modifier when you would like to add a fixed amount of space to the safe area a view sees.

```swift
ScrollView(.horizontal) {
    HStack(spacing: 10.0) {
        ForEach(items) { item in
            ItemView(item)
        }
    }
}
.safeAreaPadding(.horizontal, 20.0)
```

See the `View/safeAreaInset(edge:alignment:spacing:content)` modifier for adding to the safe area based on the size of a view.

## Staying in the safe areas

- [ignoresSafeArea(_:edges:)](/documentation/swiftui/view/ignoressafearea(_:edges:))
- [safeAreaInset(edge:alignment:spacing:content:)](/documentation/swiftui/view/safeareainset(edge:alignment:spacing:content:))
- [safeAreaPadding(_:)](/documentation/swiftui/view/safeareapadding(_:))
- [SafeAreaRegions](/documentation/swiftui/safearearegions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
