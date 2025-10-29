---
title: FullImmersionStyle
description: An immersion style that displays unbounded content that completely replaces passthrough video.
source: https://developer.apple.com/documentation/swiftui/fullimmersionstyle
timestamp: 2025-10-29T00:12:15.974Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# FullImmersionStyle

**Available on:** macOS 26.0+, visionOS 1.0+

> An immersion style that displays unbounded content that completely replaces passthrough video.

```swift
struct FullImmersionStyle
```

## Overview

When this immersion style is selected, the immersion amount reported by the closure of [onImmersionChange(initial:_:)](/documentation/swiftui/view/onimmersionchange(initial:_:)) is `1.0`.

Use [full](/documentation/swiftui/immersionstyle/full) with the [immersionStyle(selection:in:)](/documentation/swiftui/scene/immersionstyle(selection:in:))modifier to specify this style.

## Conforms To

- [ImmersionStyle](/documentation/swiftui/immersionstyle)

## Creating the immersion style

- [init()](/documentation/swiftui/fullimmersionstyle/init())

## Supporting types

- [AutomaticImmersionStyle](/documentation/swiftui/automaticimmersionstyle)
- [MixedImmersionStyle](/documentation/swiftui/mixedimmersionstyle)
- [ProgressiveImmersionStyle](/documentation/swiftui/progressiveimmersionstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
