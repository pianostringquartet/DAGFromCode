---
title: Making fine adjustments to a view’s position
description: Shift the position of a view by applying the offset or position modifier.
source: https://developer.apple.com/documentation/swiftui/making-fine-adjustments-to-a-view-s-position
timestamp: 2025-10-29T00:09:53.825Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Article**

# Making fine adjustments to a view’s position

> Shift the position of a view by applying the offset or position modifier.

## Overview

Use SwiftUI to adaptively lay out and position your views. If you can’t achieve your design with composition alone, fine tune the layout with view modifiers. Add an offset modifier to shift the rendered content of a view from its current position, or a position modifier to set an explicit position within its parent.

### Create a view layout

The following example provides a view to illustrate how to position views, providing a rough layout of views composed within a [ZStack](/documentation/swiftui/zstack). The stack contains a quadrant with an overlaid circle image:

```swift
struct Crosshairs: View { ... } // Draws crosshairs.

struct Quadrant: View {
    var body: some View {
        ZStack {
            Crosshairs()
            Rectangle()
                .stroke(Color.primary)
            Image(systemName: "circle")
        }
        .frame(width: 160, height: 160)
    }
}
```



For more detail on composing views with stacks, see [Building-Layouts-with-Stack](/documentation/swiftui/building-layouts-with-stack-views).

### Shift the location of a view’s content

Fine-tune the position of the circle within the quadrant by using an offset modifier to shift where the parent view places the circle. An offset modifier shifts the image from its default center position. For example, the [offset(x:y:)](/documentation/swiftui/view/offset(x:y:)) modifier uses the parameters of `x` and `y` to represent a relative location within the view’s coordinate space.

In SwiftUI, the view’s coordinate space uses `x` to represent a horizontal direction and `y` to represent a vertical direction. The value of `x` starts at `0` at the leading edge of a view, and increases as the location moves toward the trailing edge of a view. The value of `y` starts at `0` at the top edge of a view, and increases as the location moves toward the bottom edge of a view. Don’t assume the leading edge is always on the left, because it changes with the layout direction. When the layout direction is set to right-to-left, the `0` horizontal value is on the right side of the view.

The following diagram shows the coordinates in the left-to-right layout direction against a rectangle, with the origin at the top, leading corner:



The following example shifts the circle `40` points from the center, up and toward the trailing edge:

```swift
struct Quadrant: View {
    var body: some View {
        ZStack {
            Crosshairs()
            Rectangle()
                .stroke(Color.primary)
            Image(systemName: "circle")
                .offset(x: 40.0, y: -40.0)
        }
        .frame(width: 160, height: 160)
    }
}
```



### Position view content explicitly

To explicitly position elements within a view, use the [position(x:y:)](/documentation/swiftui/view/position(x:y:)) view modifier. A position modifier overrides where the parent view places its content. The modifier renders the view at a location offset from the origin of the parent view, unlike an offset modifier that shifts the view from the location chosen by the parent view. The position modifier uses the same `x`, `y` coordinate system as the offset modifier, and similarly doesn’t influence the size of the view. In this example, the position of the circle is set halfway down on the right side of the quadrant with explicit values:

```swift
struct Quadrant: View {
    var body: some View {
        ZStack {
            Crosshairs()
            Rectangle()
                .stroke(Color.primary)
            Image(systemName: "circle")
                .position(x: 144, y: 80)
        }
        .frame(width: 160, height: 160)
    }
}
```



## Adjusting a view’s position

- [position(_:)](/documentation/swiftui/view/position(_:))
- [position(x:y:)](/documentation/swiftui/view/position(x:y:))
- [offset(_:)](/documentation/swiftui/view/offset(_:))
- [offset(x:y:)](/documentation/swiftui/view/offset(x:y:))
- [offset(z:)](/documentation/swiftui/view/offset(z:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
