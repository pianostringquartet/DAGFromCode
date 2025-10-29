---
title: formStyle(_:)
description: Sets the style for forms in a view hierarchy.
source: https://developer.apple.com/documentation/swiftui/view/formstyle(_:)
timestamp: 2025-10-29T00:09:14.093Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# formStyle(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Sets the style for forms in a view hierarchy.

```swift
nonisolated func formStyle<S>(_ style: S) -> some View where S : FormStyle
```

## Parameters

**style**

The form style to set.



## Return Value

A view that uses the specified form style for itself and its child views.

## Grouping inputs

- [Form](/documentation/swiftui/form)
- [LabeledContent](/documentation/swiftui/labeledcontent)
- [labeledContentStyle(_:)](/documentation/swiftui/view/labeledcontentstyle(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
