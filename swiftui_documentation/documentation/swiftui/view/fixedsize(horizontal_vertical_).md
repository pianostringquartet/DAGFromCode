---
title: fixedSize(horizontal:vertical:)
description: Fixes this view at its ideal size in the specified dimensions.
source: https://developer.apple.com/documentation/swiftui/view/fixedsize(horizontal:vertical:)
timestamp: 2025-10-29T00:14:54.887Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# fixedSize(horizontal:vertical:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Fixes this view at its ideal size in the specified dimensions.

```swift
nonisolated func fixedSize(horizontal: Bool, vertical: Bool) -> some View
```

## Parameters

**horizontal**

A Boolean value that indicates whether to fix the width of the view.



**vertical**

A Boolean value that indicates whether to fix the height of the view.



## Return Value

A view that fixes this view at its ideal size in the dimensions specified by `horizontal` and `vertical`.

## Discussion

This function behaves like [fixedSize()](/documentation/swiftui/view/fixedsize()), except with `fixedSize(horizontal:vertical:)` the fixing of the axes can be optionally specified in one or both dimensions. For example, if you horizontally fix a text view before wrapping it in the frame view, you’re telling the text view to maintain its ideal *width*. The view calculates this to be the space needed to represent the entire string.

```swift
Text("A single line of text, too long to fit in a box.")
    .fixedSize(horizontal: true, vertical: false)
    .frame(width: 200, height: 200)
    .border(Color.gray)
```

This can result in the view exceeding the parent’s bounds, which may or may not be the effect you want.



## Influencing a view’s size

- [frame(width:height:alignment:)](/documentation/swiftui/view/frame(width:height:alignment:))
- [frame(depth:alignment:)](/documentation/swiftui/view/frame(depth:alignment:))
- [frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)](/documentation/swiftui/view/frame(minwidth:idealwidth:maxwidth:minheight:idealheight:maxheight:alignment:))
- [frame(minDepth:idealDepth:maxDepth:alignment:)](/documentation/swiftui/view/frame(mindepth:idealdepth:maxdepth:alignment:))
- [containerRelativeFrame(_:alignment:)](/documentation/swiftui/view/containerrelativeframe(_:alignment:))
- [containerRelativeFrame(_:alignment:_:)](/documentation/swiftui/view/containerrelativeframe(_:alignment:_:))
- [containerRelativeFrame(_:count:span:spacing:alignment:)](/documentation/swiftui/view/containerrelativeframe(_:count:span:spacing:alignment:))
- [fixedSize()](/documentation/swiftui/view/fixedsize())
- [layoutPriority(_:)](/documentation/swiftui/view/layoutpriority(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
