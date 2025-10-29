---
title: timingCurve(_:_:_:_:duration:)
description: An animation created from a cubic Bézier timing curve.
source: https://developer.apple.com/documentation/swiftui/animation/timingcurve(_:_:_:_:duration:)
timestamp: 2025-10-29T00:10:49.052Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Type Method**

# timingCurve(_:_:_:_:duration:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An animation created from a cubic Bézier timing curve.

```swift
static func timingCurve(_ p1x: Double, _ p1y: Double, _ p2x: Double, _ p2y: Double, duration: TimeInterval = 0.35) -> Animation
```

## Parameters

**p1x**

The x-coordinate of the first control point of the cubic Bézier curve.



**p1y**

The y-coordinate of the first control point of the cubic Bézier curve.



**p2x**

The x-coordinate of the second control point of the cubic Bézier curve.



**p2y**

The y-coordinate of the second control point of the cubic Bézier curve.



**duration**

The length of time, expressed in seconds, the animation takes to complete.



## Return Value

A cubic Bézier timing curve animation.

## Discussion

Use this method to create a timing curve based on the control points of a cubic Bézier curve. A cubic Bézier timing curve consists of a line whose starting point is `(0, 0)` and whose end point is `(1, 1)`. Two additional control points, `(p1x, p1y)` and `(p2x, p2y)`, define the shape of the curve.

The slope of the line defines the speed of the animation at that point in time. A steep slopes causes the animation to appear to run faster, while a shallower slope appears to run slower. The following illustration shows a timing curve where the animation starts and finishes fast, but appears slower through the middle section of the animation.



The following code uses the timing curve from the previous illustration to animate a [Circle](/documentation/swiftui/circle) as its size changes.

```swift
struct ContentView: View {
    @State private var scale = 1.0

    var body: some View {
        VStack {
            Circle()
                .scaleEffect(scale)
                .animation(
                    .timingCurve(0.1, 0.75, 0.85, 0.35, duration: 2.0),
                    value: scale)

            Button("Animate") {
                if scale == 1.0 {
                    scale = 0.25
                } else {
                    scale = 1.0
                }
            }
        }
    }
}
```

## Creating custom animations

- [init(_:)](/documentation/swiftui/animation/init(_:))
- [timingCurve(_:duration:)](/documentation/swiftui/animation/timingcurve(_:duration:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
