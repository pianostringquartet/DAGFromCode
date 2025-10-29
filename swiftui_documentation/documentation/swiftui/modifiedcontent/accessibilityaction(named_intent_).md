---
title: accessibilityAction(named:intent:)
description: Adds an accessibility action labeled  to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action. When the action is performed, the  will be invoked.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibilityaction(named:intent:)
timestamp: 2025-10-29T00:14:19.142Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibilityAction(named:intent:)

**Available on:** iOS 18.0+, iPadOS 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Adds an accessibility action labeled  to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action. When the action is performed, the  will be invoked.

```swift
nonisolated func accessibilityAction<I>(named name: Text, intent: I) -> ModifiedContent<Content, Modifier> where I : AppIntent
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
