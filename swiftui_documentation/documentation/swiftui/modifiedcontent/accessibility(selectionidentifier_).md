---
title: accessibility(selectionIdentifier:)
description: Sets a selection identifier for this view’s accessibility element.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibility(selectionidentifier:)
timestamp: 2025-10-29T00:09:31.472Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibility(selectionIdentifier:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets a selection identifier for this view’s accessibility element.

```swift
nonisolated func accessibility(selectionIdentifier: AnyHashable) -> ModifiedContent<Content, Modifier>
```

## Discussion

Picker uses the value to determine what node to use for the accessibility value.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
