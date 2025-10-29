---
title: KeyframeAnimator
description: A container that animates its content with keyframes.
source: https://developer.apple.com/documentation/swiftui/keyframeanimator
timestamp: 2025-10-29T00:13:16.876Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# KeyframeAnimator

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A container that animates its content with keyframes.

```swift
struct KeyframeAnimator<Value, KeyframePath, Content> where Value == KeyframePath.Value, KeyframePath : Keyframes, Content : View
```

## Overview

The `content` closure updates every frame while animating, so avoid performing any expensive operations directly within `content`.

## Conforms To

- [View](/documentation/swiftui/view)

## Creating a phase animator

- [init(initialValue:repeating:content:keyframes:)](/documentation/swiftui/keyframeanimator/init(initialvalue:repeating:content:keyframes:)) Loops the given keyframes continuously, updating the view using the modifiers you apply in .
- [init(initialValue:trigger:content:keyframes:)](/documentation/swiftui/keyframeanimator/init(initialvalue:trigger:content:keyframes:)) Plays the given keyframes when the given trigger value changes, updating the view using the modifiers you apply in .

## Creating keyframe-based animation

- [keyframeAnimator(initialValue:repeating:content:keyframes:)](/documentation/swiftui/view/keyframeanimator(initialvalue:repeating:content:keyframes:))
- [keyframeAnimator(initialValue:trigger:content:keyframes:)](/documentation/swiftui/view/keyframeanimator(initialvalue:trigger:content:keyframes:))
- [Keyframes](/documentation/swiftui/keyframes)
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
