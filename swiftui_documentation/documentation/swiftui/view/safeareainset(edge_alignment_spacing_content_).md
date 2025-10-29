---
title: safeAreaInset(edge:alignment:spacing:content:)
description: Shows the specified content beside the modified view.
source: https://developer.apple.com/documentation/swiftui/view/safeareainset(edge:alignment:spacing:content:)
timestamp: 2025-10-29T00:13:31.165Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# safeAreaInset(edge:alignment:spacing:content:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Shows the specified content beside the modified view.

```swift
nonisolated func safeAreaInset<V>(edge: HorizontalEdge, alignment: VerticalAlignment = .center, spacing: CGFloat? = nil, @ViewBuilder content: () -> V) -> some View where V : View
```

## Parameters

**edge**

The horizontal edge of the view to inset by the width of `content`, to make space for `content`.



**alignment**

The alignment guide used to position `content` vertically.



**spacing**

Extra distance placed between the two views, or nil to use the default amount of spacing.



**content**

A view builder function providing the view to display in the inset space of the modified view.



## Return Value

A new view that displays `content` beside the modified view, making space for the `content` view by horizontally insetting the modified view.

## Discussion

The `content` view is anchored to the specified horizontal edge in the parent view, aligning its vertical axis to the specified alignment guide. The modified view is inset by the width of `content`, from `edge`, with its safe area increased by the same amount.

```swift
struct ScrollableViewWithSideBar: View {
    var body: some View {
        ScrollView {
            ScrolledContent()
        }
        .safeAreaInset(edge: .leading, spacing: 0) {
            SideBarContent()
        }
    }
}
```

## Staying in the safe areas

- [ignoresSafeArea(_:edges:)](/documentation/swiftui/view/ignoressafearea(_:edges:))
- [safeAreaPadding(_:)](/documentation/swiftui/view/safeareapadding(_:))
- [safeAreaPadding(_:_:)](/documentation/swiftui/view/safeareapadding(_:_:))
- [SafeAreaRegions](/documentation/swiftui/safearearegions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
