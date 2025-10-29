---
title: UnitPoint
description: A normalized 2D point in a view’s coordinate space.
source: https://developer.apple.com/documentation/swiftui/unitpoint
timestamp: 2025-10-29T00:14:50.294Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# UnitPoint

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A normalized 2D point in a view’s coordinate space.

```swift
@frozen struct UnitPoint
```

## Overview

Use a unit point to represent a location in a view without having to know the view’s rendered size. The point stores a value in each dimension that indicates the fraction of the view’s size in that dimension — measured from the view’s origin — where the point appears. For example, you can create a unit point that represents the center of any view by using the value `0.5` for each dimension:

```swift
let unitPoint = UnitPoint(x: 0.5, y: 0.5)
```

To project the unit point into the rendered view’s coordinate space, multiply each component of the unit point with the corresponding component of the view’s size:

```swift
let projectedPoint = CGPoint(
    x: unitPoint.x * size.width,
    y: unitPoint.y * size.height
)
```

You can perform this calculation yourself if you happen to know a view’s size, or if you want to use the unit point for some custom purpose, but SwiftUI typically does this for you to carry out operations that you request, like when you:

- Transform a shape using a shape modifier. For example, to rotate a shape with [rotation(_:anchor:)](/documentation/swiftui/shape/rotation(_:anchor:)), you indicate an anchor point that you want to rotate the shape around.
- Override the alignment of the view in a [Grid](/documentation/swiftui/grid) cell using the [gridCellAnchor(_:)](/documentation/swiftui/view/gridcellanchor(_:)) view modifier. The grid aligns the projection of a unit point onto the view with the projection of the same unit point onto the cell.
- Create a gradient that has a center, or start and stop points, relative to the shape that you are styling. See the gradient methods in [Shape Style](/documentation/swiftui/shapestyle).

You can create custom unit points with explicit values, like the example above, or you can use one of the built-in unit points that SwiftUI provides, like [zero](/documentation/swiftui/unitpoint/zero), [center](/documentation/swiftui/unitpoint/center), or [top Trailing](/documentation/swiftui/unitpoint/toptrailing). The built-in values correspond to the alignment positions of the similarly named, built-in [Alignment](/documentation/swiftui/alignment) types.

> [!NOTE]
> A unit point with one or more components outside the range `[0, 1]` projects to a point outside of the view.

### Layout direction

When a person configures their device to use a left-to-right language like English, the system places the view’s origin in its top-left corner, with positive x toward the right and positive y toward the bottom of the view. In a right-to-left environment, the origin moves to the upper-right corner, and the positive x direction changes to be toward the left. You don’t typically need to do anything to handle this change, because SwiftUI applies the change to all aspects of the system. For example, see the discussion about layout direction in [Horizontal Alignment](/documentation/swiftui/horizontalalignment).

It’s important to test your app for the different locales that you distribute your app in. For more information about the localization process, see [localization](/documentation/Xcode/localization).

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Decodable](/documentation/Swift/Decodable)
- [Encodable](/documentation/Swift/Encodable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting the origin

- [zero](/documentation/swiftui/unitpoint/zero) The origin of a view.

## Getting top points

- [topLeading](/documentation/swiftui/unitpoint/topleading) A point that’s in the top, leading corner of a view.
- [top](/documentation/swiftui/unitpoint/top) A point that’s centered horizontally on the top edge of a view.
- [topTrailing](/documentation/swiftui/unitpoint/toptrailing) A point that’s in the top, trailing corner of a view.

## Getting middle points

- [leading](/documentation/swiftui/unitpoint/leading) A point that’s centered vertically on the leading edge of a view.
- [center](/documentation/swiftui/unitpoint/center) A point that’s centered in a view.
- [trailing](/documentation/swiftui/unitpoint/trailing) A point that’s centered vertically on the trailing edge of a view.

## Getting bottom points

- [bottomLeading](/documentation/swiftui/unitpoint/bottomleading) A point that’s in the bottom, leading corner of a view.
- [bottom](/documentation/swiftui/unitpoint/bottom) A point that’s centered horizontally on the bottom edge of a view.
- [bottomTrailing](/documentation/swiftui/unitpoint/bottomtrailing) A point that’s in the bottom, trailing corner of a view.

## Creating a point

- [init()](/documentation/swiftui/unitpoint/init()) Creates a unit point at the origin.
- [init(x:y:)](/documentation/swiftui/unitpoint/init(x:y:)) Creates a unit point with the specified horizontal and vertical offsets.

## Getting the point’s coordinates

- [x](/documentation/swiftui/unitpoint/x) The normalized distance from the origin to the point in the horizontal direction.
- [y](/documentation/swiftui/unitpoint/y) The normalized distance from the origin to the point in the vertical dimension.

## Accessing geometric constructs

- [Axis](/documentation/swiftui/axis)
- [Angle](/documentation/swiftui/angle)
- [UnitPoint3D](/documentation/swiftui/unitpoint3d)
- [Anchor](/documentation/swiftui/anchor)
- [DepthAlignmentID](/documentation/swiftui/depthalignmentid)
- [Alignment3D](/documentation/swiftui/alignment3d)
- [GeometryProxyCoordinateSpace3D](/documentation/swiftui/geometryproxycoordinatespace3d)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
