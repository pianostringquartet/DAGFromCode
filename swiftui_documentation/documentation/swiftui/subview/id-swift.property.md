---
title: id
description: The unique identifier of the view.
source: https://developer.apple.com/documentation/swiftui/subview/id-swift.property
timestamp: 2025-10-29T00:12:33.279Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [subview](/documentation/swiftui/subview)

**Instance Property**

# id

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The unique identifier of the view.

```swift
var id: Subview.ID { get }
```

## Discussion

This identifier persists across updates, changes to the order of subviews, etc. so can be used to track the lifetime of a subview.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
