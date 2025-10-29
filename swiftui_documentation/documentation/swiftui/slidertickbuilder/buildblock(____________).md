---
title: buildBlock(_:_:_:_:_:_:)
source: https://developer.apple.com/documentation/swiftui/slidertickbuilder/buildblock(_:_:_:_:_:_:)
timestamp: 2025-10-29T00:12:26.177Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [slidertickbuilder](/documentation/swiftui/slidertickbuilder)

**Type Method**

# buildBlock(_:_:_:_:_:_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+, watchOS 26.0+

```swift
static func buildBlock<C0, C1, C2, C3, C4, C5>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5) -> some SliderTickContent<V> where V == C0.Value, C0 : SliderTickContent, C1 : SliderTickContent, C2 : SliderTickContent, C3 : SliderTickContent, C4 : SliderTickContent, C5 : SliderTickContent, C0.Value == C1.Value, C1.Value == C2.Value, C2.Value == C3.Value, C3.Value == C4.Value, C4.Value == C5.Value
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
