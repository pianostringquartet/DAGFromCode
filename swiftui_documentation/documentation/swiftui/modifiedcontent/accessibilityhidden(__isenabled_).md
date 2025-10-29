---
title: accessibilityHidden(_:isEnabled:)
description: Specifies whether to hide this view from system accessibility features.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibilityhidden(_:isenabled:)
timestamp: 2025-10-29T00:14:23.600Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibilityHidden(_:isEnabled:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Specifies whether to hide this view from system accessibility features.

```swift
nonisolated func accessibilityHidden(_ hidden: Bool, isEnabled: Bool) -> ModifiedContent<Content, Modifier>
```

## Parameters

**hidden**

Whether to hide this view from accessibility features.



**isEnabled**

If true the accessibility hidden state is applied; otherwise the accessibility hidden state is unchanged.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
