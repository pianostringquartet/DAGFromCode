---
title: writingToolsBehavior(_:)
description: Specifies the Writing Tools behavior for text and text input in the environment.
source: https://developer.apple.com/documentation/swiftui/view/writingtoolsbehavior(_:)
timestamp: 2025-10-29T00:15:24.681Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# writingToolsBehavior(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.4+

> Specifies the Writing Tools behavior for text and text input in the environment.

```swift
@MainActor @preconcurrency func writingToolsBehavior(_ behavior: WritingToolsBehavior) -> some View
```

## Parameters

**behavior**

The Writing Tools behavior for text and text input in the environment.



## Return Value

A view preferring the specified Writing Tools behavior.

## Discussion

Use this view modifier to customize or disable the Writing Tools editing experience for [Text](/documentation/swiftui/text) (when selectable), [Text Field](/documentation/swiftui/textfield), and [Text Editor](/documentation/swiftui/texteditor) views.

## Configuring the Writing Tools behavior

- [WritingToolsBehavior](/documentation/swiftui/writingtoolsbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
