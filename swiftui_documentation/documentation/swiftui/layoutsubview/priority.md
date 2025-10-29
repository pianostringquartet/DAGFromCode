---
title: priority
description: The layout priority of the subview.
source: https://developer.apple.com/documentation/swiftui/layoutsubview/priority
timestamp: 2025-10-29T00:11:08.486Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layoutsubview](/documentation/swiftui/layoutsubview)

**Instance Property**

# priority

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The layout priority of the subview.

```swift
var priority: Double { get }
```

## Discussion

If you define a custom layout type using the [Layout](/documentation/swiftui/layout) protocol, you can read this value from subviews and use the value when deciding how to assign space to subviews. For example, you can read all of the subview priorities into an array before placing the subviews in a custom layout type called `BasicVStack`:

```swift
extension BasicVStack {
    func placeSubviews(
        in bounds: CGRect,
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout ()
    ) {
        let priorities = subviews.map { subview in
            subview.priority
        }

        // Place views, based on priorities.
    }
}
```

Set the layout priority for a view that appears in your layout by applying the [layoutPriority(_:)](/documentation/swiftui/view/layoutpriority(_:)) view modifier. For example, you can assign two different priorities to views that you arrange with `BasicVStack`:

```swift
BasicVStack {
    Text("High priority")
        .layoutPriority(10)
    Text("Low priority")
        .layoutPriority(1)
}
```

## Getting subview characteristics

- [dimensions(in:)](/documentation/swiftui/layoutsubview/dimensions(in:))
- [sizeThatFits(_:)](/documentation/swiftui/layoutsubview/sizethatfits(_:))
- [spacing](/documentation/swiftui/layoutsubview/spacing)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
