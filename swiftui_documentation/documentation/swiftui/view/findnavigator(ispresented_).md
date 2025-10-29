---
title: findNavigator(isPresented:)
description: Programmatically presents the find and replace interface for text editor views.
source: https://developer.apple.com/documentation/swiftui/view/findnavigator(ispresented:)
timestamp: 2025-10-29T00:13:45.002Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# findNavigator(isPresented:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 26.0+, visionOS 1.0+

> Programmatically presents the find and replace interface for text editor views.

```swift
nonisolated func findNavigator(isPresented: Binding<Bool>) -> some View
```

## Parameters

**isPresented**

A binding to a Boolean value that controls the presentation of the find and replace interface.



## Return Value

A view that presents the find and replace interface when `isPresented` is `true`.

## Discussion

Add this modifier to a [Text Editor](/documentation/swiftui/texteditor), or to a view hierarchy that contains at least one text editor, to control the presentation of the find and replace interface. When you set the `isPresented` binding to `true`, the system shows the interface, and when you set it to `false`, the system hides the interface. The following example shows and hides the interface based on the state of a toolbar button:

```swift
TextEditor(text: $text)
    .findNavigator(isPresented: $isPresented)
    .toolbar {
        Toggle(isOn: $isPresented) {
            Label("Find", systemImage: "magnifyingglass")
        }
    }
```

The find and replace interface allows people to search for instances of a specified string in the text editor, and optionally to replace instances of the search string with another string. They can also show and hide the interface using built-in controls, like menus and keyboard shortcuts. SwiftUI updates `isPresented` to reflect the users’s actions.

If the text editor view isn’t currently in focus, the system still presents the find and replace interface when you set `isPresented` to `true`. If the view hierarchy contains multiple editors, the one that shows the find and replace interface is nondeterministic.

You can disable the find and replace interface for a text editor by applying the [findDisabled(_:)](/documentation/swiftui/view/finddisabled(_:)) modifier to the editor. If you do that, setting this modifier’s `isPresented` binding to `true` has no effect, but only if the disabling modifier appears closer to the text editor, like this:

```swift
TextEditor(text: $text)
    .findDisabled(isDisabled)
    .findNavigator(isPresented: $isPresented)
```

## Searching for text in a view

- [findDisabled(_:)](/documentation/swiftui/view/finddisabled(_:))
- [replaceDisabled(_:)](/documentation/swiftui/view/replacedisabled(_:))
- [FindContext](/documentation/swiftui/findcontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
