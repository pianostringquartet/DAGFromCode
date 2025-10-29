---
title: replaceDisabled(_:)
description: Prevents replace operations in a text editor.
source: https://developer.apple.com/documentation/swiftui/view/replacedisabled(_:)
timestamp: 2025-10-29T00:09:09.981Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# replaceDisabled(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 26.0+, visionOS 1.0+

> Prevents replace operations in a text editor.

```swift
nonisolated func replaceDisabled(_ isDisabled: Bool = true) -> some View
```

## Parameters

**isDisabled**

A Boolean value that indicates whether text replacement in the find and replace interface is disabled.



## Return Value

A view that disables the replace feature of a find and replace interface.

## Discussion

Add this modifier to ensure that people can’t activate the replace feature of a find and replace interface for a [Text Editor](/documentation/swiftui/texteditor):

```swift
TextEditor(text: $text)
    .replaceDisabled()
```

If you want to disable both find and replace, use the [findDisabled(_:)](/documentation/swiftui/view/finddisabled(_:)) modifier instead.

Using this modifer also disables the replace feature of a find and replace interface that you present programmatically using the [findNavigator(isPresented:)](/documentation/swiftui/view/findnavigator(ispresented:)) method. Be sure to place the disabling modifier closer to the text editor for this to work:

```swift
TextEditor(text: $text)
    .replaceDisabled(isDisabled)
    .findNavigator(isPresented: $isPresented)
```

If you apply this modifer at multiple levels of a view hierarchy, the call closest to the text editor takes precedence. For example, people can activate find and replace for the first text editor in the following example, but only find for the second:

```swift
VStack {
    TextEditor(text: $text1)
        .replaceDisabled(false)
    TextEditor(text: $text2)
}
.replaceDisabled(true)
```

## Searching for text in a view

- [findNavigator(isPresented:)](/documentation/swiftui/view/findnavigator(ispresented:))
- [findDisabled(_:)](/documentation/swiftui/view/finddisabled(_:))
- [FindContext](/documentation/swiftui/findcontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
