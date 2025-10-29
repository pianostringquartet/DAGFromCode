---
title: buildIf(_:)
description: Produces an optional view for conditional statements in multi-statement closures that’s only visible when the condition evaluates to true.
source: https://developer.apple.com/documentation/swiftui/viewbuilder/buildif(_:)
timestamp: 2025-10-29T00:10:23.587Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [viewbuilder](/documentation/swiftui/viewbuilder)

**Type Method**

# buildIf(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Produces an optional view for conditional statements in multi-statement closures that’s only visible when the condition evaluates to true.

```swift
static func buildIf<Content>(_ content: Content?) -> Content? where Content : View
```

## Conditionally building content

- [buildEither(first:)](/documentation/swiftui/viewbuilder/buildeither(first:))
- [buildEither(second:)](/documentation/swiftui/viewbuilder/buildeither(second:))
- [buildLimitedAvailability(_:)](/documentation/swiftui/viewbuilder/buildlimitedavailability(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
