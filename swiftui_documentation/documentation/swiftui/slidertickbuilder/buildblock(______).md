---
title: buildBlock(_:_:_:)
source: https://developer.apple.com/documentation/swiftui/slidertickbuilder/buildblock(_:_:_:)
timestamp: 2025-10-29T00:12:52.108Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [slidertickbuilder](/documentation/swiftui/slidertickbuilder)

**Type Method**

# buildBlock(_:_:_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+, watchOS 26.0+

```swift
static func buildBlock<C0, C1, C2>(_ c0: C0, _ c1: C1, _ c2: C2) -> some SliderTickContent<V> where V == C0.Value, C0 : SliderTickContent, C1 : SliderTickContent, C2 : SliderTickContent, C0.Value == C1.Value, C1.Value == C2.Value
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
