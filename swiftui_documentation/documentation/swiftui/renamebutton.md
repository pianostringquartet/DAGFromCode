---
title: RenameButton
description: A button that triggers a standard rename action.
source: https://developer.apple.com/documentation/swiftui/renamebutton
timestamp: 2025-10-29T00:14:36.599Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# RenameButton

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A button that triggers a standard rename action.

```swift
struct RenameButton<Label> where Label : View
```

## Overview

A rename button receives its action from the environment. Use the [renameAction(_:)](/documentation/swiftui/view/renameaction(_:)) modifier to set the action. The system disables the button if you don’t define an action.

```swift
struct RowView: View {
    @State private var text = ""
    @FocusState private var isFocused: Bool

    var body: some View {
        TextField(text: $item.name) {
            Text("Prompt")
        }
        .focused($isFocused)
        .contextMenu {
            RenameButton()
            // ... your own custom actions
        }
        .renameAction { $isFocused = true }
}
```

When someone taps the rename button in the context menu, the rename action focuses the text field by setting the `isFocused` property to true.

You can use this button inside of a navigation title menu and the navigation title modifier automatically configures the environment with the appropriate rename action.

```swift
ContentView()
    .navigationTitle($contentTitle) {
        // ... your own custom actions
        RenameButton()
    }
```

## Conforms To

- [View](/documentation/swiftui/view)

## Creating an rename button

- [init()](/documentation/swiftui/renamebutton/init()) Creates a rename button.

## Creating special-purpose buttons

- [EditButton](/documentation/swiftui/editbutton)
- [PasteButton](/documentation/swiftui/pastebutton)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
