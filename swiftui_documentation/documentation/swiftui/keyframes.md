---
title: Keyframes
description: A type that defines changes to a value over time.
source: https://developer.apple.com/documentation/swiftui/keyframes
timestamp: 2025-10-29T00:10:06.526Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# Keyframes

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A type that defines changes to a value over time.

```swift
protocol Keyframes<Value>
```

## Conforming Types

- [KeyframeTrack](/documentation/swiftui/keyframetrack)

## Creating a keyframe

- [body](/documentation/swiftui/keyframes/body-swift.property) The composition of content that comprise the keyframes.
- [Body](/documentation/swiftui/keyframes/body-swift.associatedtype) The type of keyframes representing the body of this type.
- [Value](/documentation/swiftui/keyframes/value) The type of value animated by this keyframes type

## Creating keyframe-based animation

- [keyframeAnimator(initialValue:repeating:content:keyframes:)](/documentation/swiftui/view/keyframeanimator(initialvalue:repeating:content:keyframes:))
- [keyframeAnimator(initialValue:trigger:content:keyframes:)](/documentation/swiftui/view/keyframeanimator(initialvalue:trigger:content:keyframes:))
- [KeyframeAnimator](/documentation/swiftui/keyframeanimator)
- [KeyframeTimeline](/documentation/swiftui/keyframetimeline)
- [KeyframeTrack](/documentation/swiftui/keyframetrack)
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
