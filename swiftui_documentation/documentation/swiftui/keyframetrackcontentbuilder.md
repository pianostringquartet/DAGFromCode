---
title: KeyframeTrackContentBuilder
description: The builder that creates keyframe track content from the keyframes that you define within a closure.
source: https://developer.apple.com/documentation/swiftui/keyframetrackcontentbuilder
timestamp: 2025-10-29T00:12:36.147Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# KeyframeTrackContentBuilder

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The builder that creates keyframe track content from the keyframes that you define within a closure.

```swift
@resultBuilder struct KeyframeTrackContentBuilder<Value> where Value : Animatable
```

## Building keyframe track content

- [buildArray(_:)](/documentation/swiftui/keyframetrackcontentbuilder/buildarray(_:))
- [buildBlock()](/documentation/swiftui/keyframetrackcontentbuilder/buildblock())
- [buildEither(first:)](/documentation/swiftui/keyframetrackcontentbuilder/buildeither(first:))
- [buildEither(second:)](/documentation/swiftui/keyframetrackcontentbuilder/buildeither(second:))
- [buildExpression(_:)](/documentation/swiftui/keyframetrackcontentbuilder/buildexpression(_:))
- [buildPartialBlock(accumulated:next:)](/documentation/swiftui/keyframetrackcontentbuilder/buildpartialblock(accumulated:next:))
- [buildPartialBlock(first:)](/documentation/swiftui/keyframetrackcontentbuilder/buildpartialblock(first:))
- [KeyframeTrackContentBuilder.Conditional](/documentation/swiftui/keyframetrackcontentbuilder/conditional) A conditional result from the result builder.

## Creating keyframe-based animation

- [keyframeAnimator(initialValue:repeating:content:keyframes:)](/documentation/swiftui/view/keyframeanimator(initialvalue:repeating:content:keyframes:))
- [keyframeAnimator(initialValue:trigger:content:keyframes:)](/documentation/swiftui/view/keyframeanimator(initialvalue:trigger:content:keyframes:))
- [KeyframeAnimator](/documentation/swiftui/keyframeanimator)
- [Keyframes](/documentation/swiftui/keyframes)
- [KeyframeTimeline](/documentation/swiftui/keyframetimeline)
- [KeyframeTrack](/documentation/swiftui/keyframetrack)
- [KeyframesBuilder](/documentation/swiftui/keyframesbuilder)
- [KeyframeTrackContent](/documentation/swiftui/keyframetrackcontent)
- [CubicKeyframe](/documentation/swiftui/cubickeyframe)
- [LinearKeyframe](/documentation/swiftui/linearkeyframe)
- [MoveKeyframe](/documentation/swiftui/movekeyframe)
- [SpringKeyframe](/documentation/swiftui/springkeyframe)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
