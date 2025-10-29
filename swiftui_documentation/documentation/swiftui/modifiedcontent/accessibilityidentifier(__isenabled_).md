---
title: accessibilityIdentifier(_:isEnabled:)
description: Uses the string you specify to identify the view.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibilityidentifier(_:isenabled:)
timestamp: 2025-10-29T00:10:37.345Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibilityIdentifier(_:isEnabled:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Uses the string you specify to identify the view.

```swift
nonisolated func accessibilityIdentifier(_ identifier: String, isEnabled: Bool) -> ModifiedContent<Content, Modifier>
```

## Parameters

**identifier**

The accessibility identifier to apply.



**isEnabled**

If true the accessibility identifier is applied; otherwise the accessibility identifier is unchanged.



## Discussion

Use this value for testing. It isn’t visible to the user.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
