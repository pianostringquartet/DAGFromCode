---
title: accessibilityHint(_:)
description: Communicates to the user what happens after performing the view’s action.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibilityhint(_:)
timestamp: 2025-10-29T00:12:56.765Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibilityHint(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Communicates to the user what happens after performing the view’s action.

```swift
nonisolated func accessibilityHint(_ hint: LocalizedStringResource) -> ModifiedContent<Content, Modifier>
```

## Discussion

Provide a hint in the form of a brief phrase, like “Purchases the item” or “Downloads the attachment”.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
