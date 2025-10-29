---
title: init(idType:edge:)
description: Creates a new scroll position to be scrolled to the provided edge.
source: https://developer.apple.com/documentation/swiftui/scrollposition/init(idtype:edge:)
timestamp: 2025-10-29T00:14:27.525Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrollposition](/documentation/swiftui/scrollposition)

**Initializer**

# init(idType:edge:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a new scroll position to be scrolled to the provided edge.

```swift
init(idType: (some Hashable & Sendable).Type = Never.self, edge: Edge)
```

## Discussion

You can provide a type to indicate the type of ID the scroll view should look for views with an ID of that type within its scroll target layout.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
