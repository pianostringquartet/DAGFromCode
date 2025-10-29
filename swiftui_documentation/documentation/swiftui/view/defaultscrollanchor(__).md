---
title: defaultScrollAnchor(_:)
description: Associates an anchor to control which part of the scroll view’s content should be rendered by default.
source: https://developer.apple.com/documentation/swiftui/view/defaultscrollanchor(_:)
timestamp: 2025-10-29T00:12:51.462Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# defaultScrollAnchor(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Associates an anchor to control which part of the scroll view’s content should be rendered by default.

```swift
nonisolated func defaultScrollAnchor(_ anchor: UnitPoint?) -> some View
```

## Discussion

Use this modifier to specify an anchor to control both which part of the scroll view’s content should be visible initially and how the scroll view handles content size changes.

Provide a value of `UnitPoint/center`` to have the scroll view start in the center of its content when a scroll view is scrollable in both axes.

```swift
ScrollView([.horizontal, .vertical]) {
    // initially centered content
}
.defaultScrollAnchor(.center)
```

Provide a value of `UnitPoint/bottom` to have the scroll view start at the bottom of its content when scrollable in the vertical axis.

```swift
@Binding var items: [Item]
@Binding var scrolledID: Item.ID?

ScrollView {
    LazyVStack {
        ForEach(items) { item in
            ItemView(item)
        }
    }
}
.defaultScrollAnchor(.bottom)
```

The user may scroll away from the initial defined scroll position. When the content size of the scroll view changes, it may consult the anchor to know how to reposition the content.

## Managing scroll position

- [scrollPosition(_:anchor:)](/documentation/swiftui/view/scrollposition(_:anchor:))
- [scrollPosition(id:anchor:)](/documentation/swiftui/view/scrollposition(id:anchor:))
- [defaultScrollAnchor(_:for:)](/documentation/swiftui/view/defaultscrollanchor(_:for:))
- [ScrollAnchorRole](/documentation/swiftui/scrollanchorrole)
- [ScrollPosition](/documentation/swiftui/scrollposition)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
