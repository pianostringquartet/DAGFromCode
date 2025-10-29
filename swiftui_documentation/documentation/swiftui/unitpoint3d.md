---
title: UnitPoint3D
description: A normalized 3D point in a view’s coordinate space.
source: https://developer.apple.com/documentation/swiftui/unitpoint3d
timestamp: 2025-10-29T00:10:43.015Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# UnitPoint3D

**Available on:** visionOS 1.0+

> A normalized 3D point in a view’s coordinate space.

```swift
@frozen struct UnitPoint3D
```

## Overview

Use a 3D unit point to represent a three-dimensional location in a view without having to know the view’s rendered size. The point stores a value in each dimension that indicates the fraction of the view’s size in that dimension — measured from the view’s origin — where the point appears. For example, you can create a unit point that represents the center of any view by using the value `0.5` for each dimension:

```swift
let unitPoint = UnitPoint3D(x: 0.5, y: 0.5, z: 0.5)
```

> [!NOTE]
> If you need a two-dimensional unit point, use [Unit Point](/documentation/swiftui/unitpoint) instead.

To project the unit point into the rendered view’s coordinate space, multiply each component of the unit point with the corresponding component of the view’s size:

```swift
let projectedPoint = Point3D(
    x: unitPoint.x * size.width,
    y: unitPoint.y * size.height,
    z: unitPoint.z * size.depth
)
```

You can perform this calculation yourself if you happen to know a view’s size, or if you want to use a unit point for some custom purpose, but SwiftUI typically does this for you to carry out operations that you request, like when you rotate a view with the [rotation3DEffect(_:anchor:)](/documentation/swiftui/view/rotation3deffect(_:anchor:)) modifier and indicate the anchor point that you want to rotate the view around.

You can create custom unit points with explicit values, like the example above, or you can use one of the built-in unit points that SwiftUI provides, like [zero](/documentation/swiftui/unitpoint3d/zero), [center](/documentation/swiftui/unitpoint3d/center), or [top Trailing](/documentation/swiftui/unitpoint3d/toptrailing). The built-in values correspond to common anchor points that you might want to refer to, like the center of one of a view’s edges.

> [!NOTE]
> A unit point with one or more components outside the range `[0, 1]` projects to a point outside of the view.

### Layout direction

When a person configures their device to use a left-to-right language like English, the system places the view’s origin in its top-left-back corner, with positive x toward the right, positive y toward the bottom of the view, and positive z toward the front. In a right-to-left environment, the origin moves to the upper-right-back corner, and the positive x direction changes to be toward the left. You don’t typically need to do anything to handle this change, because SwiftUI applies the change to all aspects of the system. For example, see the discussion about layout direction in [Horizontal Alignment](/documentation/swiftui/horizontalalignment).

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

- [origin](/documentation/swiftui/unitpoint3d/origin) The origin of a view.
- [zero](/documentation/swiftui/unitpoint3d/zero) A 3D unit point with all components equal to zero.

## Getting top points

- [topLeadingBack](/documentation/swiftui/unitpoint3d/topleadingback) A point that’s in the top-leading-back corner of a view.
- [topLeading](/documentation/swiftui/unitpoint3d/topleading) A point that’s centered in the depth dimension on the top-leading edge of a view.
- [topLeadingFront](/documentation/swiftui/unitpoint3d/topleadingfront) A point that’s in the top-leading-front corner of a view.
- [topBack](/documentation/swiftui/unitpoint3d/topback) A point that’s centered horizontally on the top-back edge of a view.
- [top](/documentation/swiftui/unitpoint3d/top) A point that’s centered horizontally and in the depth dimension on the top face of a view.
- [topFront](/documentation/swiftui/unitpoint3d/topfront) A point that’s centered horizontally on the top-front edge of a view.
- [topTrailingBack](/documentation/swiftui/unitpoint3d/toptrailingback) A point that’s in the top-trailing-back corner of a view.
- [topTrailing](/documentation/swiftui/unitpoint3d/toptrailing) A point that’s centered in the depth dimension on the top-trailing edge of a view.
- [topTrailingFront](/documentation/swiftui/unitpoint3d/toptrailingfront) A point that’s in the top-trailing-front corner of a view.

## Getting middle points

- [leadingBack](/documentation/swiftui/unitpoint3d/leadingback) A point that’s centered vertically on the leading-back edge of a view.
- [leading](/documentation/swiftui/unitpoint3d/leading) A point that’s centered vertically and in the depth dimension on the leading face of a view.
- [leadingFront](/documentation/swiftui/unitpoint3d/leadingfront) A point that’s centered vertically on the leading-front edge of a view.
- [back](/documentation/swiftui/unitpoint3d/back) A point that’s centered horizontally and vertically on the back face of a view.
- [center](/documentation/swiftui/unitpoint3d/center) A point that’s centered in a view.
- [front](/documentation/swiftui/unitpoint3d/front) A point that’s centered horizontally and vertically on the front face of a view.
- [trailingBack](/documentation/swiftui/unitpoint3d/trailingback) A point that’s centered vertically on the trailing-back edge of a view.
- [trailing](/documentation/swiftui/unitpoint3d/trailing) A point that’s centered vertically and in the depth dimension on the trailing face of a view.
- [trailingFront](/documentation/swiftui/unitpoint3d/trailingfront) A point that’s centered vertically on the trailing-front edge of a view.

## Getting bottom points

- [bottomLeadingBack](/documentation/swiftui/unitpoint3d/bottomleadingback) A point that’s in the bottom-leading-back corner of a view.
- [bottomLeading](/documentation/swiftui/unitpoint3d/bottomleading) A point that’s centered in the depth dimension on the bottom-leading edge of a view.
- [bottomLeadingFront](/documentation/swiftui/unitpoint3d/bottomleadingfront) A point that’s in the bottom-leading-front corner of a view.
- [bottomBack](/documentation/swiftui/unitpoint3d/bottomback) A point that’s centered horizontally on the bottom-back edge of a view.
- [bottom](/documentation/swiftui/unitpoint3d/bottom) A point that’s centered horizontally and in the depth dimension on the bottom face of a view.
- [bottomFront](/documentation/swiftui/unitpoint3d/bottomfront) A point that’s centered horizontally on the bottom-front edge of a view.
- [bottomTrailingBack](/documentation/swiftui/unitpoint3d/bottomtrailingback) A point that’s in the bottom-trailing-back corner of a view.
- [bottomTrailing](/documentation/swiftui/unitpoint3d/bottomtrailing) A point that’s centered in the depth dimension on the bottom-trailing edge of a view.
- [bottomTrailingFront](/documentation/swiftui/unitpoint3d/bottomtrailingfront) A point that’s in the bottom-trailing-front corner of a view.

## Creating a point

- [init()](/documentation/swiftui/unitpoint3d/init()) Creates a 3D unit point at the origin.
- [init(x:y:z:)](/documentation/swiftui/unitpoint3d/init(x:y:z:)) Creates a 3D unit point with the specified offsets.

## Getting the point’s coordinates

- [x](/documentation/swiftui/unitpoint3d/x) The normalized distance from the origin to the point in the horizontal direction.
- [y](/documentation/swiftui/unitpoint3d/y) The normalized distance from the origin to the point in the vertical dimension.
- [z](/documentation/swiftui/unitpoint3d/z) The normalized distance from the origin to the point in the depth dimension.

## Accessing geometric constructs

- [Axis](/documentation/swiftui/axis)
- [Angle](/documentation/swiftui/angle)
- [UnitPoint](/documentation/swiftui/unitpoint)
- [Anchor](/documentation/swiftui/anchor)
- [DepthAlignmentID](/documentation/swiftui/depthalignmentid)
- [Alignment3D](/documentation/swiftui/alignment3d)
- [GeometryProxyCoordinateSpace3D](/documentation/swiftui/geometryproxycoordinatespace3d)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
