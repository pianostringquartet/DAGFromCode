---
title: AccessibilityChildBehavior
description: Defines the behavior for the child elements of the new parent element.
source: https://developer.apple.com/documentation/swiftui/accessibilitychildbehavior
timestamp: 2025-10-29T00:09:35.934Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AccessibilityChildBehavior

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Defines the behavior for the child elements of the new parent element.

```swift
struct AccessibilityChildBehavior
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)

## Getting behaviors

- [combine](/documentation/swiftui/accessibilitychildbehavior/combine) Any child accessibility element’s properties are merged into the new accessibility element.
- [contain](/documentation/swiftui/accessibilitychildbehavior/contain) Any child accessibility elements become children of the new accessibility element.
- [ignore](/documentation/swiftui/accessibilitychildbehavior/ignore) Any child accessibility elements become hidden.

## Creating accessible elements

- [accessibilityElement(children:)](/documentation/swiftui/view/accessibilityelement(children:))
- [accessibilityChildren(children:)](/documentation/swiftui/view/accessibilitychildren(children:))
- [accessibilityRepresentation(representation:)](/documentation/swiftui/view/accessibilityrepresentation(representation:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
