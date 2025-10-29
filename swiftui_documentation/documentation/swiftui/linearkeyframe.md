---
title: LinearKeyframe
description: A keyframe that uses simple linear interpolation.
source: https://developer.apple.com/documentation/swiftui/linearkeyframe
timestamp: 2025-10-29T00:11:46.585Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# LinearKeyframe

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A keyframe that uses simple linear interpolation.

```swift
struct LinearKeyframe<Value> where Value : Animatable
```

## Conforms To

- [KeyframeTrackContent](/documentation/swiftui/keyframetrackcontent)

## Creating the keyframe

- [init(_:duration:timingCurve:)](/documentation/swiftui/linearkeyframe/init(_:duration:timingcurve:)) Creates a new keyframe using the given value and timestamp.

## Creating keyframe-based animation

- [keyframeAnimator(initialValue:repeating:content:keyframes:)](/documentation/swiftui/view/keyframeanimator(initialvalue:repeating:content:keyframes:))
- [keyframeAnimator(initialValue:trigger:content:keyframes:)](/documentation/swiftui/view/keyframeanimator(initialvalue:trigger:content:keyframes:))
- [KeyframeAnimator](/documentation/swiftui/keyframeanimator)
- [Keyframes](/documentation/swiftui/keyframes)
- [KeyframeTimeline](/documentation/swiftui/keyframetimeline)
- [KeyframeTrack](/documentation/swiftui/keyframetrack)
- [KeyframeTrackContentBuilder](/documentation/swiftui/keyframetrackcontentbuilder)
- [KeyframesBuilder](/documentation/swiftui/keyframesbuilder)
- [KeyframeTrackContent](/documentation/swiftui/keyframetrackcontent)
- [CubicKeyframe](/documentation/swiftui/cubickeyframe)
- [MoveKeyframe](/documentation/swiftui/movekeyframe)
- [SpringKeyframe](/documentation/swiftui/springkeyframe)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
