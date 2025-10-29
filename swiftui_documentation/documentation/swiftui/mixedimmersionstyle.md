---
title: MixedImmersionStyle
description: An immersion style that displays unbounded content intermixed with other app content, along with passthrough video.
source: https://developer.apple.com/documentation/swiftui/mixedimmersionstyle
timestamp: 2025-10-29T00:12:52.458Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# MixedImmersionStyle

**Available on:** visionOS 1.0+

> An immersion style that displays unbounded content intermixed with other app content, along with passthrough video.

```swift
struct MixedImmersionStyle
```

## Overview

When this immersion style is selected, the immersion amount reported by the closure of [onImmersionChange(initial:_:)](/documentation/swiftui/view/onimmersionchange(initial:_:)) is `0.0`.

Use [mixed](/documentation/swiftui/immersionstyle/mixed) with the [immersionStyle(selection:in:)](/documentation/swiftui/scene/immersionstyle(selection:in:))modifier to specify this style.

## Conforms To

- [ImmersionStyle](/documentation/swiftui/immersionstyle)

## Creating the immersion style

- [init()](/documentation/swiftui/mixedimmersionstyle/init())

## Supporting types

- [AutomaticImmersionStyle](/documentation/swiftui/automaticimmersionstyle)
- [FullImmersionStyle](/documentation/swiftui/fullimmersionstyle)
- [ProgressiveImmersionStyle](/documentation/swiftui/progressiveimmersionstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
