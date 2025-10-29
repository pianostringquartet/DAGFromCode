---
title: renameAction(_:)
description: Sets a closure to run for the rename action.
source: https://developer.apple.com/documentation/swiftui/view/renameaction(_:)
timestamp: 2025-10-29T00:13:06.550Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# renameAction(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Sets a closure to run for the rename action.

```swift
nonisolated func renameAction(_ action: @escaping () -> Void) -> some View
```

## Parameters

**action**

A closure to run when renaming.



## Return Value

A view that has the specified rename action.

## Discussion

Use this modifier in conjunction with the [Rename Button](/documentation/swiftui/renamebutton) to implement standard rename interactions. A rename button receives its action from the environment. Use this modifier to customize the action provided to the rename button.

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
        .renameAction { isFocused = true }
}
```

When the user taps the rename button in the context menu, the rename action focuses the text field by setting the `isFocused` property to true.

## Renaming a document

- [RenameButton](/documentation/swiftui/renamebutton)
- [rename](/documentation/swiftui/environmentvalues/rename)
- [RenameAction](/documentation/swiftui/renameaction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
