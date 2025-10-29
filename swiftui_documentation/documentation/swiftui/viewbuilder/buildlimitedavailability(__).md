---
title: buildLimitedAvailability(_:)
description: Processes view content for a conditional compiler-control statement that performs an availability check.
source: https://developer.apple.com/documentation/swiftui/viewbuilder/buildlimitedavailability(_:)
timestamp: 2025-10-29T00:11:56.743Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [viewbuilder](/documentation/swiftui/viewbuilder)

**Type Method**

# buildLimitedAvailability(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Processes view content for a conditional compiler-control statement that performs an availability check.

```swift
static func buildLimitedAvailability<Content>(_ content: Content) -> AnyView where Content : View
```

## Conditionally building content

- [buildEither(first:)](/documentation/swiftui/viewbuilder/buildeither(first:))
- [buildEither(second:)](/documentation/swiftui/viewbuilder/buildeither(second:))
- [buildIf(_:)](/documentation/swiftui/viewbuilder/buildif(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
