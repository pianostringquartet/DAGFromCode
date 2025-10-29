---
title: accessibilityElement(children:)
description: Creates a new accessibility element, or modifies the  of the existing accessibility element.
source: https://developer.apple.com/documentation/swiftui/view/accessibilityelement(children:)
timestamp: 2025-10-29T00:11:16.891Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityElement(children:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a new accessibility element, or modifies the  of the existing accessibility element.

```swift
nonisolated func accessibilityElement(children: AccessibilityChildBehavior = .ignore) -> some View
```

## Parameters

**children**

The behavior to use when creating or transforming an accessibility element. The default is [ignore](/documentation/swiftui/accessibilitychildbehavior/ignore)



## Discussion

See also:

- [ignore](/documentation/swiftui/accessibilitychildbehavior/ignore)
- [combine](/documentation/swiftui/accessibilitychildbehavior/combine)
- [contain](/documentation/swiftui/accessibilitychildbehavior/contain)

## Creating accessible elements

- [accessibilityChildren(children:)](/documentation/swiftui/view/accessibilitychildren(children:))
- [accessibilityRepresentation(representation:)](/documentation/swiftui/view/accessibilityrepresentation(representation:))
- [AccessibilityChildBehavior](/documentation/swiftui/accessibilitychildbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
