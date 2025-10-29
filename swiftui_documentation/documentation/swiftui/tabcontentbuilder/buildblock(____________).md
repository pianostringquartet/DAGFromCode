---
title: buildBlock(_:_:_:_:_:_:)
source: https://developer.apple.com/documentation/swiftui/tabcontentbuilder/buildblock(_:_:_:_:_:_:)
timestamp: 2025-10-29T00:11:54.653Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabcontentbuilder](/documentation/swiftui/tabcontentbuilder)

**Type Method**

# buildBlock(_:_:_:_:_:_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

```swift
static func buildBlock<C0, C1, C2, C3, C4, C5>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5) -> some TabContent<TabValue> where TabValue == C0.TabValue, C0 : TabContent, C1 : TabContent, C2 : TabContent, C3 : TabContent, C4 : TabContent, C5 : TabContent, C0.TabValue == C1.TabValue, C1.TabValue == C2.TabValue, C2.TabValue == C3.TabValue, C3.TabValue == C4.TabValue, C4.TabValue == C5.TabValue
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
