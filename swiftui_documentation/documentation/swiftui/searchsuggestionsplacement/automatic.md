---
title: automatic
description: Search suggestions render automatically based on the surrounding context.
source: https://developer.apple.com/documentation/swiftui/searchsuggestionsplacement/automatic
timestamp: 2025-10-29T00:12:18.796Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [searchsuggestionsplacement](/documentation/swiftui/searchsuggestionsplacement)

**Type Property**

# automatic

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Search suggestions render automatically based on the surrounding context.

```swift
static var automatic: SearchSuggestionsPlacement { get }
```

## Discussion

The behavior varies by platform:

- In iOS and iPadOS, suggestions render as a list overlaying the main content of the app.
- In macOS, suggestions render in a menu.
- In tvOS, suggestions render as a row underneath the search field.
- In watchOS, suggestions render in a list pushed onto the containing navigation stack.

## Getting placements

- [content](/documentation/swiftui/searchsuggestionsplacement/content)
- [menu](/documentation/swiftui/searchsuggestionsplacement/menu)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
