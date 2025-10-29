---
title: defaultScrollAnchor(_:for:)
description: Associates an anchor to control the position of a scroll view in a particular circumstance.
source: https://developer.apple.com/documentation/swiftui/view/defaultscrollanchor(_:for:)
timestamp: 2025-10-29T00:15:15.885Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# defaultScrollAnchor(_:for:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Associates an anchor to control the position of a scroll view in a particular circumstance.

```swift
nonisolated func defaultScrollAnchor(_ anchor: UnitPoint?, for role: ScrollAnchorRole) -> some View
```

## Discussion

You can associate a [Unit Point](/documentation/swiftui/unitpoint) to a [Scroll View](/documentation/swiftui/scrollview) using the [defaultScrollAnchor(_:)](/documentation/swiftui/view/defaultscrollanchor(_:)) modifier. By default, the system uses this point for different kinds of behaviors including:

- Where the scroll view should initially be scrolled
- How the scroll view should handle content size or container size changes
- How the scroll view should align content smaller than its container size

You can further customize this behavior by assigning different unit points for these different cases.

For example, you can use the [defaultScrollAnchor(_:)](/documentation/swiftui/view/defaultscrollanchor(_:)) modifier to provide a value of [bottom](/documentation/swiftui/unitpoint/bottom) as the anchor for all cases and then opt out of certain cases by providing a different value for them.

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
.defaultScrollAnchor(.topLeading, for: .alignment)
```

## Managing scroll position

- [scrollPosition(_:anchor:)](/documentation/swiftui/view/scrollposition(_:anchor:))
- [scrollPosition(id:anchor:)](/documentation/swiftui/view/scrollposition(id:anchor:))
- [defaultScrollAnchor(_:)](/documentation/swiftui/view/defaultscrollanchor(_:))
- [ScrollAnchorRole](/documentation/swiftui/scrollanchorrole)
- [ScrollPosition](/documentation/swiftui/scrollposition)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
