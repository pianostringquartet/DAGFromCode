---
title: buildEither(second:)
source: https://developer.apple.com/documentation/swiftui/keyframetrackcontentbuilder/buildeither(second:)
timestamp: 2025-10-29T00:13:07.829Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [keyframetrackcontentbuilder](/documentation/swiftui/keyframetrackcontentbuilder)

**Type Method**

# buildEither(second:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

```swift
static func buildEither<First, Second>(second component: Second) -> KeyframeTrackContentBuilder<Value>.Conditional<Value, First, Second> where Value == First.Value, First : KeyframeTrackContent, Second : KeyframeTrackContent, First.Value == Second.Value
```

## Building keyframe track content

- [buildArray(_:)](/documentation/swiftui/keyframetrackcontentbuilder/buildarray(_:))
- [buildBlock()](/documentation/swiftui/keyframetrackcontentbuilder/buildblock())
- [buildEither(first:)](/documentation/swiftui/keyframetrackcontentbuilder/buildeither(first:))
- [buildExpression(_:)](/documentation/swiftui/keyframetrackcontentbuilder/buildexpression(_:))
- [buildPartialBlock(accumulated:next:)](/documentation/swiftui/keyframetrackcontentbuilder/buildpartialblock(accumulated:next:))
- [buildPartialBlock(first:)](/documentation/swiftui/keyframetrackcontentbuilder/buildpartialblock(first:))
- [KeyframeTrackContentBuilder.Conditional](/documentation/swiftui/keyframetrackcontentbuilder/conditional)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
