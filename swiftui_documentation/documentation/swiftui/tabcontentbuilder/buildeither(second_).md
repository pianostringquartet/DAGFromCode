---
title: buildEither(second:)
source: https://developer.apple.com/documentation/swiftui/tabcontentbuilder/buildeither(second:)
timestamp: 2025-10-29T00:13:34.392Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabcontentbuilder](/documentation/swiftui/tabcontentbuilder)

**Type Method**

# buildEither(second:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

```swift
static func buildEither<T, F>(second: F) -> _ConditionalContent<T, F> where TabValue == T.TabValue, T : TabContent, F : TabContent, T.TabValue == F.TabValue
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
