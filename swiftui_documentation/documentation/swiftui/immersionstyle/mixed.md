---
title: mixed
description: An immersion style that displays unbounded content intermixed with other app content, along with passthrough video.
source: https://developer.apple.com/documentation/swiftui/immersionstyle/mixed
timestamp: 2025-10-29T00:14:45.501Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [immersionstyle](/documentation/swiftui/immersionstyle)

**Type Property**

# mixed

**Available on:** visionOS 1.0+

> An immersion style that displays unbounded content intermixed with other app content, along with passthrough video.

```swift
static var mixed: MixedImmersionStyle { get }
```

## Discussion

When this immersion style is selected, the immersion amount reported by the closure of [onImmersionChange(initial:_:)](/documentation/swiftui/view/onimmersionchange(initial:_:)) is `0.0`.

Use the [immersionStyle(selection:in:)](/documentation/swiftui/scene/immersionstyle(selection:in:)) scene modifier to specify this style for an [Immersive Space](/documentation/swiftui/immersivespace). However, this is the default immersion style if you don’t specify one.

The immersion style affects how windows interact with virtual objects in the environment. In `mixed` immersion, a virtual object obscures part or all of a window that’s behind the object. Similarly, a window obscures a virtual object that’s behind the window.

## Getting built-in styles

- [automatic](/documentation/swiftui/immersionstyle/automatic)
- [full](/documentation/swiftui/immersionstyle/full)
- [progressive](/documentation/swiftui/immersionstyle/progressive)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
