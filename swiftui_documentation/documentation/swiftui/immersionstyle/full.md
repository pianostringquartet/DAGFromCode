---
title: full
description: An immersion style that displays unbounded content that completely replaces passthrough video.
source: https://developer.apple.com/documentation/swiftui/immersionstyle/full
timestamp: 2025-10-29T00:11:28.589Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [immersionstyle](/documentation/swiftui/immersionstyle)

**Type Property**

# full

**Available on:** macOS 26.0+, visionOS 1.0+

> An immersion style that displays unbounded content that completely replaces passthrough video.

```swift
static var full: FullImmersionStyle { get }
```

## Discussion

When this immersion style is selected, the immersion amount reported by the closure of [onImmersionChange(initial:_:)](/documentation/swiftui/view/onimmersionchange(initial:_:)) is `1.0`.

Use the [immersionStyle(selection:in:)](/documentation/swiftui/scene/immersionstyle(selection:in:)) scene modifier to specify this style for an [Immersive Space](/documentation/swiftui/immersivespace).

When using this style, the space’s content fully obscures passthrough except for the user’s upper limbs. You can manage limb visibility separately by applying the [upperLimbVisibility(_:)](/documentation/swiftui/scene/upperlimbvisibility(_:)) scene modifier to the space, or the view modifier equivalent to a view inside the scene.

The immersion style affects how windows interact with virtual objects in the environment. In `full` immersion, windows always render in front of virtual content, no matter how someone positions the window or the content. This helps people to avoid losing track of windows behind virtual content when passthrough is off.

## Getting built-in styles

- [automatic](/documentation/swiftui/immersionstyle/automatic)
- [mixed](/documentation/swiftui/immersionstyle/mixed)
- [progressive](/documentation/swiftui/immersionstyle/progressive)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
