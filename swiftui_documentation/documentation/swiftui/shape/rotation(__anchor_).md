---
title: rotation(_:anchor:)
description: Rotates this shape around an anchor point at the angle you specify.
source: https://developer.apple.com/documentation/swiftui/shape/rotation(_:anchor:)
timestamp: 2025-10-29T00:10:50.954Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Instance Method**

# rotation(_:anchor:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Rotates this shape around an anchor point at the angle you specify.

```swift
func rotation(_ angle: Angle, anchor: UnitPoint = .center) -> RotatedShape<Self>
```

## Parameters

**angle**

The angle of rotation to apply. Positive angles rotate clockwise; negative angles rotate counterclockwise.



**anchor**

The point to rotate the shape around.



## Return Value

A rotated shape.

## Discussion

The following example rotates a square by 45 degrees to the right to create a diamond shape:

```swift
RoundedRectangle(cornerRadius: 10)
.rotation(Angle(degrees: 45))
.aspectRatio(1.0, contentMode: .fit)
```

## Transforming a shape

- [trim(from:to:)](/documentation/swiftui/shape/trim(from:to:))
- [transform(_:)](/documentation/swiftui/shape/transform(_:))
- [size(_:)](/documentation/swiftui/shape/size(_:))
- [size(width:height:)](/documentation/swiftui/shape/size(width:height:))
- [scale(_:anchor:)](/documentation/swiftui/shape/scale(_:anchor:))
- [scale(x:y:anchor:)](/documentation/swiftui/shape/scale(x:y:anchor:))
- [offset(_:)](/documentation/swiftui/shape/offset(_:))
- [offset(x:y:)](/documentation/swiftui/shape/offset(x:y:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
