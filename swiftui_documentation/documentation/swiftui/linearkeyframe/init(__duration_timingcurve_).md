---
title: init(_:duration:timingCurve:)
description: Creates a new keyframe using the given value and timestamp.
source: https://developer.apple.com/documentation/swiftui/linearkeyframe/init(_:duration:timingcurve:)
timestamp: 2025-10-29T00:11:54.444Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [linearkeyframe](/documentation/swiftui/linearkeyframe)

**Initializer**

# init(_:duration:timingCurve:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a new keyframe using the given value and timestamp.

```swift
init(_ to: Value, duration: TimeInterval, timingCurve: UnitCurve = .linear)
```

## Parameters

**to**

The value of the keyframe.



**duration**

The duration of the segment defined by this keyframe.



**timingCurve**

A unit curve that controls the speed of interpolation.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
