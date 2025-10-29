---
title: frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)
description: Positions this view within an invisible frame having the specified size constraints.
source: https://developer.apple.com/documentation/swiftui/view/frame(minwidth:idealwidth:maxwidth:minheight:idealheight:maxheight:alignment:)
timestamp: 2025-10-29T00:14:25.813Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Positions this view within an invisible frame having the specified size constraints.

```swift
nonisolated func frame(minWidth: CGFloat? = nil, idealWidth: CGFloat? = nil, maxWidth: CGFloat? = nil, minHeight: CGFloat? = nil, idealHeight: CGFloat? = nil, maxHeight: CGFloat? = nil, alignment: Alignment = .center) -> some View
```

## Parameters

**minWidth**

The minimum width of the resulting frame.



**idealWidth**

The ideal width of the resulting frame.



**maxWidth**

The maximum width of the resulting frame.



**minHeight**

The minimum height of the resulting frame.



**idealHeight**

The ideal height of the resulting frame.



**maxHeight**

The maximum height of the resulting frame.



**alignment**

The alignment of this view inside the resulting frame. Note that most alignment values have no apparent effect when the size of the frame happens to match that of this view.



## Return Value

A view with flexible dimensions given by the call’s non-`nil` parameters.

## Discussion

Always specify at least one size characteristic when calling this method. Pass `nil` or leave out a characteristic to indicate that the frame should adopt this view’s sizing behavior, constrained by the other non-`nil` arguments.

The size proposed to this view is the size proposed to the frame, limited by any constraints specified, and with any ideal dimensions specified replacing any corresponding unspecified dimensions in the proposal.

If no minimum or maximum constraint is specified in a given dimension, the frame adopts the sizing behavior of its child in that dimension. If both constraints are specified in a dimension, the frame unconditionally adopts the size proposed for it, clamped to the constraints. Otherwise, the size of the frame in either dimension is:

- If a minimum constraint is specified and the size proposed for the frame by the parent is less than the size of this view, the proposed size, clamped to that minimum.
- If a maximum constraint is specified and the size proposed for the frame by the parent is greater than the size of this view, the proposed size, clamped to that maximum.
- Otherwise, the size of this view.

## Influencing a view’s size

- [frame(width:height:alignment:)](/documentation/swiftui/view/frame(width:height:alignment:))
- [frame(depth:alignment:)](/documentation/swiftui/view/frame(depth:alignment:))
- [frame(minDepth:idealDepth:maxDepth:alignment:)](/documentation/swiftui/view/frame(mindepth:idealdepth:maxdepth:alignment:))
- [containerRelativeFrame(_:alignment:)](/documentation/swiftui/view/containerrelativeframe(_:alignment:))
- [containerRelativeFrame(_:alignment:_:)](/documentation/swiftui/view/containerrelativeframe(_:alignment:_:))
- [containerRelativeFrame(_:count:span:spacing:alignment:)](/documentation/swiftui/view/containerrelativeframe(_:count:span:spacing:alignment:))
- [fixedSize()](/documentation/swiftui/view/fixedsize())
- [fixedSize(horizontal:vertical:)](/documentation/swiftui/view/fixedsize(horizontal:vertical:))
- [layoutPriority(_:)](/documentation/swiftui/view/layoutpriority(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
