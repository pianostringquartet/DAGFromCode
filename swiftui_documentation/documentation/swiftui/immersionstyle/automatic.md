---
title: automatic
description: The default immersion style.
source: https://developer.apple.com/documentation/swiftui/immersionstyle/automatic
timestamp: 2025-10-29T00:12:23.216Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [immersionstyle](/documentation/swiftui/immersionstyle)

**Type Property**

# automatic

**Available on:** macOS 26.0+, visionOS 1.0+

> The default immersion style.

```swift
static var automatic: AutomaticImmersionStyle { get }
```

## Discussion

The system uses this style for an [Immersive Space](/documentation/swiftui/immersivespace) if you don’t provide an [immersionStyle(selection:in:)](/documentation/swiftui/scene/immersionstyle(selection:in:)) scene modifier. You don’t typically specify the `automatic` style explicitly.

By default, on visionOS, the system uses the [mixed](/documentation/swiftui/immersionstyle/mixed) immersion style as the `automatic` style and for macOS the [full](/documentation/swiftui/immersionstyle/full) immersion style as the `automatic` style.

## Getting built-in styles

- [full](/documentation/swiftui/immersionstyle/full)
- [mixed](/documentation/swiftui/immersionstyle/mixed)
- [progressive](/documentation/swiftui/immersionstyle/progressive)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
