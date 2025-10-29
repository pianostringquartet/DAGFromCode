---
title: accessibilityHint(_:isEnabled:)
description: Communicates to the user what happens after performing the view’s action.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibilityhint(_:isenabled:)
timestamp: 2025-10-29T00:14:50.377Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibilityHint(_:isEnabled:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Communicates to the user what happens after performing the view’s action.

```swift
nonisolated func accessibilityHint(_ hint: LocalizedStringResource, isEnabled: Bool) -> ModifiedContent<Content, Modifier>
```

## Parameters

**hint**

The accessibility hint to apply.



**isEnabled**

If true the accessibility hint is applied; otherwise the accessibility hint is unchanged.



## Discussion

Provide a hint in the form of a brief phrase, like “Purchases the item” or “Downloads the attachment”.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
