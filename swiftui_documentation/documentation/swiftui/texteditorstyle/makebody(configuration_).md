---
title: makeBody(configuration:)
description: Creates a view that represents the body of a text editor.
source: https://developer.apple.com/documentation/swiftui/texteditorstyle/makebody(configuration:)
timestamp: 2025-10-29T00:10:54.144Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [texteditorstyle](/documentation/swiftui/texteditorstyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Creates a view that represents the body of a text editor.

```swift
@ViewBuilder @MainActor @preconcurrency func makeBody(configuration: Self.Configuration) -> Self.Body
```

## Parameters

**configuration**

The properties of the text editor.



## Discussion

The system calls this method for each [Text Editor](/documentation/swiftui/texteditor) instance in a view hierarchy where this style is the current text editor style.

## Creating custom styles

- [TextEditorStyle.Configuration](/documentation/swiftui/texteditorstyle/configuration)
- [Body](/documentation/swiftui/texteditorstyle/body)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
