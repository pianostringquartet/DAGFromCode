---
title: search
description: The search role.
source: https://developer.apple.com/documentation/swiftui/tabrole/search
timestamp: 2025-10-29T00:12:30.407Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabrole](/documentation/swiftui/tabrole)

**Type Property**

# search

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The search role.

```swift
static var search: TabRole { get }
```

## Discussion

Searchable tab views will prefer to have the first tab with this role implement search. If no tabs are specified as the search tab, the tab view will apply search to all tabs, resetting search state as the selected tab changes.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
