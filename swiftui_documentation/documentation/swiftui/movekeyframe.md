---
title: MoveKeyframe
description: A keyframe that immediately moves to the given value without interpolating.
source: https://developer.apple.com/documentation/swiftui/movekeyframe
timestamp: 2025-10-29T00:13:02.639Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# MoveKeyframe

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A keyframe that immediately moves to the given value without interpolating.

```swift
struct MoveKeyframe<Value> where Value : Animatable
```

## Conforms To

- [KeyframeTrackContent](/documentation/swiftui/keyframetrackcontent)

## Creating the keyframe

- [init(_:)](/documentation/swiftui/movekeyframe/init(_:)) Creates a new keyframe using the given value.

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
- [LinearKeyframe](/documentation/swiftui/linearkeyframe)
- [SpringKeyframe](/documentation/swiftui/springkeyframe)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
