---
title: buildEither(first:)
source: https://developer.apple.com/documentation/swiftui/keyframesbuilder/buildeither(first:)
timestamp: 2025-10-29T00:13:57.553Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [keyframesbuilder](/documentation/swiftui/keyframesbuilder)

**Type Method**

# buildEither(first:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

```swift
static func buildEither<First, Second>(first component: First) -> KeyframeTrackContentBuilder<Value>.Conditional<Value, First, Second> where Value == First.Value, First : KeyframeTrackContent, Second : KeyframeTrackContent, First.Value == Second.Value
```

## Building keyframes

- [buildArray(_:)](/documentation/swiftui/keyframesbuilder/buildarray(_:))
- [buildBlock()](/documentation/swiftui/keyframesbuilder/buildblock())
- [buildEither(second:)](/documentation/swiftui/keyframesbuilder/buildeither(second:))
- [buildExpression(_:)](/documentation/swiftui/keyframesbuilder/buildexpression(_:))
- [buildFinalResult(_:)](/documentation/swiftui/keyframesbuilder/buildfinalresult(_:))
- [buildPartialBlock(accumulated:next:)](/documentation/swiftui/keyframesbuilder/buildpartialblock(accumulated:next:))
- [buildPartialBlock(first:)](/documentation/swiftui/keyframesbuilder/buildpartialblock(first:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
