---
title: ProgressiveImmersionStyle
description: An immersion style that displays unbounded content that partially replaces passthrough video.
source: https://developer.apple.com/documentation/swiftui/progressiveimmersionstyle
timestamp: 2025-10-29T00:09:29.436Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ProgressiveImmersionStyle

**Available on:** macOS 26.0+, visionOS 1.0+

> An immersion style that displays unbounded content that partially replaces passthrough video.

```swift
struct ProgressiveImmersionStyle
```

## Overview

Use [progressive](/documentation/swiftui/immersionstyle/progressive) with the [immersionStyle(selection:in:)](/documentation/swiftui/scene/immersionstyle(selection:in:))modifier to specify this style.

## Conforms To

- [ImmersionStyle](/documentation/swiftui/immersionstyle)

## Creating the immersion style

- [init()](/documentation/swiftui/progressiveimmersionstyle/init()) An immersion style that displays unbounded content that partially replaces passthrough video.

## Initializers

- [init(immersion:initialAmount:)](/documentation/swiftui/progressiveimmersionstyle/init(immersion:initialamount:)) An immersion style that displays unbounded content that partially replaces passthrough video.

## Instance Properties

- [aspectRatio](/documentation/swiftui/progressiveimmersionstyle/aspectratio) The aspect ratio used for this instance of the style.
- [initialImmersionAmount](/documentation/swiftui/progressiveimmersionstyle/initialimmersionamount) The initial amount of immersion used for this instance of the style.
- [maximumImmersionAmount](/documentation/swiftui/progressiveimmersionstyle/maximumimmersionamount) The maximum amount of immersion used for this instance of the style.
- [minimumImmersionAmount](/documentation/swiftui/progressiveimmersionstyle/minimumimmersionamount) The minimum amount of immersion used for this instance of the style.

## Supporting types

- [AutomaticImmersionStyle](/documentation/swiftui/automaticimmersionstyle)
- [FullImmersionStyle](/documentation/swiftui/fullimmersionstyle)
- [MixedImmersionStyle](/documentation/swiftui/mixedimmersionstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
