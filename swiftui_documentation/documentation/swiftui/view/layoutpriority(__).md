---
title: layoutPriority(_:)
description: Sets the priority by which a parent layout should apportion space to this child.
source: https://developer.apple.com/documentation/swiftui/view/layoutpriority(_:)
timestamp: 2025-10-29T00:15:20.041Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# layoutPriority(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the priority by which a parent layout should apportion space to this child.

```swift
nonisolated func layoutPriority(_ value: Double) -> some View
```

## Parameters

**value**

The priority by which a parent layout apportions space to the child.



## Discussion

Views typically have a default priority of `0` which causes space to be apportioned evenly to all sibling views. Raising a view’s layout priority encourages the higher priority view to shrink later when the group is shrunk and stretch sooner when the group is stretched.

```swift
HStack {
    Text("This is a moderately long string.")
        .font(.largeTitle)
        .border(Color.gray)

    Spacer()

    Text("This is a higher priority string.")
        .font(.largeTitle)
        .layoutPriority(1)
        .border(Color.gray)
}
```

In the example above, the first [Text](/documentation/swiftui/text) element has the default priority `0` which causes its view to shrink dramatically due to the higher priority of the second [Text](/documentation/swiftui/text) element, even though all of their other attributes (font, font size and character count) are the same.



A parent layout offers the child views with the highest layout priority all the space offered to the parent minus the minimum space required for all its lower-priority children.

## Influencing a view’s size

- [frame(width:height:alignment:)](/documentation/swiftui/view/frame(width:height:alignment:))
- [frame(depth:alignment:)](/documentation/swiftui/view/frame(depth:alignment:))
- [frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)](/documentation/swiftui/view/frame(minwidth:idealwidth:maxwidth:minheight:idealheight:maxheight:alignment:))
- [frame(minDepth:idealDepth:maxDepth:alignment:)](/documentation/swiftui/view/frame(mindepth:idealdepth:maxdepth:alignment:))
- [containerRelativeFrame(_:alignment:)](/documentation/swiftui/view/containerrelativeframe(_:alignment:))
- [containerRelativeFrame(_:alignment:_:)](/documentation/swiftui/view/containerrelativeframe(_:alignment:_:))
- [containerRelativeFrame(_:count:span:spacing:alignment:)](/documentation/swiftui/view/containerrelativeframe(_:count:span:spacing:alignment:))
- [fixedSize()](/documentation/swiftui/view/fixedsize())
- [fixedSize(horizontal:vertical:)](/documentation/swiftui/view/fixedsize(horizontal:vertical:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
