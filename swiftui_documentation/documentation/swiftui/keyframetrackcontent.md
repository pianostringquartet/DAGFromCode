---
title: KeyframeTrackContent
description: A group of keyframes that define an interpolation curve of an animatable value.
source: https://developer.apple.com/documentation/swiftui/keyframetrackcontent
timestamp: 2025-10-29T00:13:20.701Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# KeyframeTrackContent

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A group of keyframes that define an interpolation curve of an animatable value.

```swift
protocol KeyframeTrackContent<Value>
```

## Conforming Types

- [CubicKeyframe](/documentation/swiftui/cubickeyframe)
- [KeyframeTrackContentBuilder.Conditional](/documentation/swiftui/keyframetrackcontentbuilder/conditional)
- [LinearKeyframe](/documentation/swiftui/linearkeyframe)
- [MoveKeyframe](/documentation/swiftui/movekeyframe)
- [SpringKeyframe](/documentation/swiftui/springkeyframe)

## Creating a keyframe

- [body](/documentation/swiftui/keyframetrackcontent/body-swift.property) The composition of content that comprise the keyframe track.
- [Body](/documentation/swiftui/keyframetrackcontent/body-swift.associatedtype)
- [Value](/documentation/swiftui/keyframetrackcontent/value)

## Creating keyframe-based animation

- [keyframeAnimator(initialValue:repeating:content:keyframes:)](/documentation/swiftui/view/keyframeanimator(initialvalue:repeating:content:keyframes:))
- [keyframeAnimator(initialValue:trigger:content:keyframes:)](/documentation/swiftui/view/keyframeanimator(initialvalue:trigger:content:keyframes:))
- [KeyframeAnimator](/documentation/swiftui/keyframeanimator)
- [Keyframes](/documentation/swiftui/keyframes)
- [KeyframeTimeline](/documentation/swiftui/keyframetimeline)
- [KeyframeTrack](/documentation/swiftui/keyframetrack)
- [KeyframeTrackContentBuilder](/documentation/swiftui/keyframetrackcontentbuilder)
- [KeyframesBuilder](/documentation/swiftui/keyframesbuilder)
- [CubicKeyframe](/documentation/swiftui/cubickeyframe)
- [LinearKeyframe](/documentation/swiftui/linearkeyframe)
- [MoveKeyframe](/documentation/swiftui/movekeyframe)
- [SpringKeyframe](/documentation/swiftui/springkeyframe)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
