---
title: Path
description: The outline of a 2D shape.
source: https://developer.apple.com/documentation/swiftui/path
timestamp: 2025-10-29T00:13:26.410Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# Path

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The outline of a 2D shape.

```swift
@frozen struct Path
```

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [Copyable](/documentation/Swift/Copyable)
- [CustomStringConvertible](/documentation/Swift/CustomStringConvertible)
- [Equatable](/documentation/Swift/Equatable)
- [LosslessStringConvertible](/documentation/Swift/LosslessStringConvertible)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [Shape](/documentation/swiftui/shape)
- [View](/documentation/swiftui/view)

## Creating a path

- [init()](/documentation/swiftui/path/init()) Creates an empty path.
- [init(_:)](/documentation/swiftui/path/init(_:)) Creates an empty path, then executes a closure to add its initial elements.
- [init(ellipseIn:)](/documentation/swiftui/path/init(ellipsein:)) Creates a path as an ellipse within the given rectangle.
- [init(roundedRect:cornerRadius:style:)](/documentation/swiftui/path/init(roundedrect:cornerradius:style:)) Creates a path containing a rounded rectangle.
- [init(roundedRect:cornerSize:style:)](/documentation/swiftui/path/init(roundedrect:cornersize:style:)) Creates a path containing a rounded rectangle.
- [init(roundedRect:cornerRadii:style:)](/documentation/swiftui/path/init(roundedrect:cornerradii:style:)) Creates a path as the given rounded rectangle, which may have uneven corner radii.

## Getting the path’s characteristics

- [boundingRect](/documentation/swiftui/path/boundingrect) A rectangle containing all path segments.
- [cgPath](/documentation/swiftui/path/cgpath) An immutable path representing the elements in the path.
- [contains(_:eoFill:)](/documentation/swiftui/path/contains(_:eofill:)) Returns true if the path contains a specified point.
- [currentPoint](/documentation/swiftui/path/currentpoint) Returns the last point in the path, or nil if the path contains no points.
- [description](/documentation/swiftui/path/description) A description of the path that may be used to recreate the path via .
- [isEmpty](/documentation/swiftui/path/isempty) A Boolean value indicating whether the path contains zero elements.

## Drawing a path

- [move(to:)](/documentation/swiftui/path/move(to:)) Begins a new subpath at the specified point.
- [addArc(center:radius:startAngle:endAngle:clockwise:transform:)](/documentation/swiftui/path/addarc(center:radius:startangle:endangle:clockwise:transform:)) Adds an arc of a circle to the path, specified with a radius and angles.
- [addArc(tangent1End:tangent2End:radius:transform:)](/documentation/swiftui/path/addarc(tangent1end:tangent2end:radius:transform:)) Adds an arc of a circle to the path, specified with a radius and two tangent lines.
- [addCurve(to:control1:control2:)](/documentation/swiftui/path/addcurve(to:control1:control2:)) Adds a cubic Bézier curve to the path, with the specified end point and control points.
- [addEllipse(in:transform:)](/documentation/swiftui/path/addellipse(in:transform:)) Adds an ellipse that fits inside the specified rectangle to the path.
- [addLine(to:)](/documentation/swiftui/path/addline(to:)) Appends a straight line segment from the current point to the specified point.
- [addLines(_:)](/documentation/swiftui/path/addlines(_:)) Adds a sequence of connected straight-line segments to the path.
- [addPath(_:transform:)](/documentation/swiftui/path/addpath(_:transform:)) Appends another path value to this path.
- [addQuadCurve(to:control:)](/documentation/swiftui/path/addquadcurve(to:control:)) Adds a quadratic Bézier curve to the path, with the specified end point and control point.
- [addRect(_:transform:)](/documentation/swiftui/path/addrect(_:transform:)) Adds a rectangular subpath to the path.
- [addRects(_:transform:)](/documentation/swiftui/path/addrects(_:transform:)) Adds a set of rectangular subpaths to the path.
- [addRelativeArc(center:radius:startAngle:delta:transform:)](/documentation/swiftui/path/addrelativearc(center:radius:startangle:delta:transform:)) Adds an arc of a circle to the path, specified with a radius and a difference in angle.
- [addRoundedRect(in:cornerSize:style:transform:)](/documentation/swiftui/path/addroundedrect(in:cornersize:style:transform:)) Adds a rounded rectangle to the path.
- [closeSubpath()](/documentation/swiftui/path/closesubpath()) Closes and completes the current subpath.

## Transforming the path

- [applying(_:)](/documentation/swiftui/path/applying(_:)) Returns a path constructed by applying the transform to all points of the path.
- [offsetBy(dx:dy:)](/documentation/swiftui/path/offsetby(dx:dy:)) Returns a path constructed by translating all its points.
- [trimmedPath(from:to:)](/documentation/swiftui/path/trimmedpath(from:to:)) Returns a partial copy of the path.

## Performing operations on the path

- [addRoundedRect(in:cornerSize:style:transform:)](/documentation/swiftui/path/addroundedrect(in:cornersize:style:transform:)) Adds a rounded rectangle to the path.
- [intersection(_:eoFill:)](/documentation/swiftui/path/intersection(_:eofill:)) Returns a new path with filled regions common to both paths.
- [lineIntersection(_:eoFill:)](/documentation/swiftui/path/lineintersection(_:eofill:)) Returns a new path with a line from this path that overlaps the filled regions of the given path.
- [lineSubtraction(_:eoFill:)](/documentation/swiftui/path/linesubtraction(_:eofill:)) Returns a new path with a line from this path that does not overlap the filled region of the given path.
- [normalized(eoFill:)](/documentation/swiftui/path/normalized(eofill:)) Returns a new weakly-simple copy of this path.
- [subtracting(_:eoFill:)](/documentation/swiftui/path/subtracting(_:eofill:)) Returns a new path with filled regions from this path that are not in the given path.
- [symmetricDifference(_:eoFill:)](/documentation/swiftui/path/symmetricdifference(_:eofill:)) Returns a new path with filled regions either from this path or the given path, but not in both.
- [union(_:eoFill:)](/documentation/swiftui/path/union(_:eofill:)) Returns a new path with filled regions in either this path or the given path.

## Operating over path elements

- [forEach(_:)](/documentation/swiftui/path/foreach(_:)) Calls  with each element in the path.
- [Path.Element](/documentation/swiftui/path/element) An element of a path.

## Applying a style

- [strokedPath(_:)](/documentation/swiftui/path/strokedpath(_:)) Returns a stroked copy of the path using  to define how the stroked outline is created.

## Instance Methods

- [addRoundedRect(in:cornerRadii:style:transform:)](/documentation/swiftui/path/addroundedrect(in:cornerradii:style:transform:)) Adds a rounded rectangle with uneven corners to the path.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
