---
title: findDisabled(_:)
description: Prevents find and replace operations in a text editor.
source: https://developer.apple.com/documentation/swiftui/view/finddisabled(_:)
timestamp: 2025-10-29T00:11:17.852Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# findDisabled(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 26.0+, visionOS 1.0+

> Prevents find and replace operations in a text editor.

```swift
nonisolated func findDisabled(_ isDisabled: Bool = true) -> some View
```

## Parameters

**isDisabled**

A Boolean value that indicates whether to disable the find and replace interface for a text editor.



## Return Value

A view that disables the find and replace interface.

## Discussion

Add this modifier to ensure that people can’t activate the find and replace interface for a [Text Editor](/documentation/swiftui/texteditor):

```swift
TextEditor(text: $text)
    .findDisabled()
```

When you disable the find operation, you also implicitly disable the replace operation. If you want to only disable replace, use [replaceDisabled(_:)](/documentation/swiftui/view/replacedisabled(_:)) instead.

Using this modifer also prevents programmatic find and replace interface presentation using the [findNavigator(isPresented:)](/documentation/swiftui/view/findnavigator(ispresented:)) method. Be sure to place the disabling modifier closer to the text editor for this to work:

```swift
TextEditor(text: $text)
    .findDisabled(isDisabled)
    .findNavigator(isPresented: $isPresented)
```

If you apply this modifer at multiple levels of a view hierarchy, the call closest to the text editor takes precedence. For example, people can activate find and replace for the first text editor in the following example, but not the second:

```swift
VStack {
    TextEditor(text: $text1)
        .findDisabled(false)
    TextEditor(text: $text2)
}
.findDisabled(true)
```

## Searching for text in a view

- [findNavigator(isPresented:)](/documentation/swiftui/view/findnavigator(ispresented:))
- [replaceDisabled(_:)](/documentation/swiftui/view/replacedisabled(_:))
- [FindContext](/documentation/swiftui/findcontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
