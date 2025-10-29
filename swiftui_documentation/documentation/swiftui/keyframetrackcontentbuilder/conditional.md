---
title: KeyframeTrackContentBuilder.Conditional
description: A conditional result from the result builder.
source: https://developer.apple.com/documentation/swiftui/keyframetrackcontentbuilder/conditional
timestamp: 2025-10-29T00:13:36.277Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [keyframetrackcontentbuilder](/documentation/swiftui/keyframetrackcontentbuilder)

**Structure**

# KeyframeTrackContentBuilder.Conditional

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A conditional result from the result builder.

```swift
struct Conditional<ConditionalValue, First, Second> where ConditionalValue == First.Value, First : KeyframeTrackContent, Second : KeyframeTrackContent, First.Value == Second.Value
```

## Conforms To

- [KeyframeTrackContent](/documentation/swiftui/keyframetrackcontent)

## Building keyframe track content

- [buildArray(_:)](/documentation/swiftui/keyframetrackcontentbuilder/buildarray(_:))
- [buildBlock()](/documentation/swiftui/keyframetrackcontentbuilder/buildblock())
- [buildEither(first:)](/documentation/swiftui/keyframetrackcontentbuilder/buildeither(first:))
- [buildEither(second:)](/documentation/swiftui/keyframetrackcontentbuilder/buildeither(second:))
- [buildExpression(_:)](/documentation/swiftui/keyframetrackcontentbuilder/buildexpression(_:))
- [buildPartialBlock(accumulated:next:)](/documentation/swiftui/keyframetrackcontentbuilder/buildpartialblock(accumulated:next:))
- [buildPartialBlock(first:)](/documentation/swiftui/keyframetrackcontentbuilder/buildpartialblock(first:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
