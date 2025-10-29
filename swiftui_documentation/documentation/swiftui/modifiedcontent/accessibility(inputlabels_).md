---
title: accessibility(inputLabels:)
description: Sets alternate input labels with which users identify a view.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibility(inputlabels:)
timestamp: 2025-10-29T00:15:35.318Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibility(inputLabels:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets alternate input labels with which users identify a view.

```swift
nonisolated func accessibility(inputLabels: [Text]) -> ModifiedContent<Content, Modifier>
```

## Parameters

**inputLabels**

An array of [Text](/documentation/swiftui/text) elements to use as input labels.



## Discussion

Provide labels in descending order of importance. Voice Control and Full Keyboard Access use the input labels.

> [!NOTE]
> If you don’t specify any input labels, the user can still refer to the view using the accessibility label that you add with the `accessibility(label:)` modifier.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
