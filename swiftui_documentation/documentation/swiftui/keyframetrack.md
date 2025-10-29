---
title: KeyframeTrack
description: A sequence of keyframes animating a single property of a root type.
source: https://developer.apple.com/documentation/swiftui/keyframetrack
timestamp: 2025-10-29T00:14:22.264Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# KeyframeTrack

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A sequence of keyframes animating a single property of a root type.

```swift
struct KeyframeTrack<Root, Value, Content> where Value == Content.Value, Content : KeyframeTrackContent
```

## Conforms To

- [Keyframes](/documentation/swiftui/keyframes)

## Creating a keyframe track

- [init(content:)](/documentation/swiftui/keyframetrack/init(content:)) Creates an instance that animates the entire value from the root of the key path.
- [init(_:content:)](/documentation/swiftui/keyframetrack/init(_:content:)) Creates an instance that animates the property of the root value at the given key path.

## Creating keyframe-based animation

- [keyframeAnimator(initialValue:repeating:content:keyframes:)](/documentation/swiftui/view/keyframeanimator(initialvalue:repeating:content:keyframes:))
- [keyframeAnimator(initialValue:trigger:content:keyframes:)](/documentation/swiftui/view/keyframeanimator(initialvalue:trigger:content:keyframes:))
- [KeyframeAnimator](/documentation/swiftui/keyframeanimator)
- [Keyframes](/documentation/swiftui/keyframes)
- [KeyframeTimeline](/documentation/swiftui/keyframetimeline)
- [KeyframeTrackContentBuilder](/documentation/swiftui/keyframetrackcontentbuilder)
- [KeyframesBuilder](/documentation/swiftui/keyframesbuilder)
- [KeyframeTrackContent](/documentation/swiftui/keyframetrackcontent)
- [CubicKeyframe](/documentation/swiftui/cubickeyframe)
- [LinearKeyframe](/documentation/swiftui/linearkeyframe)
- [MoveKeyframe](/documentation/swiftui/movekeyframe)
- [SpringKeyframe](/documentation/swiftui/springkeyframe)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
