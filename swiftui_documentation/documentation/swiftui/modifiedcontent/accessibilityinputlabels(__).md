---
title: accessibilityInputLabels(_:)
description: Sets alternate input labels with which users identify a view.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibilityinputlabels(_:)
timestamp: 2025-10-29T00:09:38.527Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibilityInputLabels(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Sets alternate input labels with which users identify a view.

```swift
nonisolated func accessibilityInputLabels(_ inputLabelKeys: [LocalizedStringKey]) -> ModifiedContent<Content, Modifier>
```

## Discussion

Provide labels in descending order of importance. Voice Control and Full Keyboard Access use the input labels.

> [!NOTE]
> If you don’t specify any input labels, the user can still refer to the view using the accessibility label that you add with the `accessibilityLabel()` modifier.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
