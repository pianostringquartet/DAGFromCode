---
title: viewID(type:)
description: The id of the view positioned in the scroll view if configured to be in that position or the user has scrolled past a view with an id of matching type.
source: https://developer.apple.com/documentation/swiftui/scrollposition/viewid(type:)
timestamp: 2025-10-29T00:10:46.809Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrollposition](/documentation/swiftui/scrollposition)

**Instance Method**

# viewID(type:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The id of the view positioned in the scroll view if configured to be in that position or the user has scrolled past a view with an id of matching type.

```swift
func viewID<T>(type: T.Type) -> T? where T : Hashable, T : Sendable
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
