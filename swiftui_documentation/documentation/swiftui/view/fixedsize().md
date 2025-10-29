---
title: fixedSize()
description: Fixes this view at its ideal size.
source: https://developer.apple.com/documentation/swiftui/view/fixedsize()
timestamp: 2025-10-29T00:14:53.961Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# fixedSize()

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Fixes this view at its ideal size.

```swift
nonisolated func fixedSize() -> some View
```

## Return Value

A view that fixes this view at its ideal size.

## Discussion

During the layout of the view hierarchy, each view proposes a size to each child view it contains. If the child view doesn’t need a fixed size it can accept and conform to the size offered by the parent.

For example, a [Text](/documentation/swiftui/text) view placed in an explicitly sized frame wraps and truncates its string to remain within its parent’s bounds:

```swift
Text("A single line of text, too long to fit in a box.")
    .frame(width: 200, height: 200)
    .border(Color.gray)
```



The `fixedSize()` modifier can be used to create a view that maintains the *ideal size* of its children both dimensions:

```swift
Text("A single line of text, too long to fit in a box.")
    .fixedSize()
    .frame(width: 200, height: 200)
    .border(Color.gray)
```

This can result in the view exceeding the parent’s bounds, which may or may not be the effect you want.



You can think of `fixedSize()` as the creation of a *counter proposal* to the view size proposed to a view by its parent. The ideal size of a view, and the specific effects of `fixedSize()` depends on the particular view and how you have configured it.

To create a view that fixes the view’s size in either the horizontal or vertical dimensions, see [fixedSize(horizontal:vertical:)](/documentation/swiftui/view/fixedsize(horizontal:vertical:)).

## Influencing a view’s size

- [frame(width:height:alignment:)](/documentation/swiftui/view/frame(width:height:alignment:))
- [frame(depth:alignment:)](/documentation/swiftui/view/frame(depth:alignment:))
- [frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)](/documentation/swiftui/view/frame(minwidth:idealwidth:maxwidth:minheight:idealheight:maxheight:alignment:))
- [frame(minDepth:idealDepth:maxDepth:alignment:)](/documentation/swiftui/view/frame(mindepth:idealdepth:maxdepth:alignment:))
- [containerRelativeFrame(_:alignment:)](/documentation/swiftui/view/containerrelativeframe(_:alignment:))
- [containerRelativeFrame(_:alignment:_:)](/documentation/swiftui/view/containerrelativeframe(_:alignment:_:))
- [containerRelativeFrame(_:count:span:spacing:alignment:)](/documentation/swiftui/view/containerrelativeframe(_:count:span:spacing:alignment:))
- [fixedSize(horizontal:vertical:)](/documentation/swiftui/view/fixedsize(horizontal:vertical:))
- [layoutPriority(_:)](/documentation/swiftui/view/layoutpriority(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
