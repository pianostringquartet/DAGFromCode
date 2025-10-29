---
title: scrollTargetAnchor
description: The preferred alignment of the view within a scroll view’s visible region when scrolling to a view.
source: https://developer.apple.com/documentation/swiftui/transaction/scrolltargetanchor
timestamp: 2025-10-29T00:12:29.148Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [transaction](/documentation/swiftui/transaction)

**Instance Property**

# scrollTargetAnchor

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The preferred alignment of the view within a scroll view’s visible region when scrolling to a view.

```swift
var scrollTargetAnchor: UnitPoint? { get set }
```

## Discussion

Use this API in conjunction with a `ScrollViewProxy/scrollTo(_:anchor)` or when updating the binding provided to a [scrollPosition(id:anchor:)](/documentation/swiftui/view/scrollposition(id:anchor:)).

```swift
@Binding var position: Item.ID?

var body: some View {
    ScrollView {
        LazyVStack {
            ForEach(items) { item in
                ItemView(item)
            }
        }
        .scrollTargetLayout()
    }
    .scrollPosition(id: $position)
    .safeAreaInset(edge: .bottom) {
        Button("Scroll To Bottom") {
            withAnimation {
                withTransaction(\.scrollTargetAnchor, .bottom) {
                    position = items.last?.id
                }
            }
        }
    }
}
```

When used with the [scrollPosition(id:anchor:)](/documentation/swiftui/view/scrollposition(id:anchor:)) modifier, this value will be preferred over the anchor specified in the modifier for the current transaction.

## Getting information about a transaction

- [isContinuous](/documentation/swiftui/transaction/iscontinuous)
- [tracksVelocity](/documentation/swiftui/transaction/tracksvelocity)
- [subscript(_:)](/documentation/swiftui/transaction/subscript(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
