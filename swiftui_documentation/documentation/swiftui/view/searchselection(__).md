---
title: searchSelection(_:)
description: Binds the selection of the search field associated with the nearest searchable modifier to the given  value.
source: https://developer.apple.com/documentation/swiftui/view/searchselection(_:)
timestamp: 2025-10-29T00:14:42.154Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# searchSelection(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+

> Binds the selection of the search field associated with the nearest searchable modifier to the given  value.

```swift
nonisolated func searchSelection(_ selection: Binding<TextSelection?>) -> some View
```

## Parameters

**selection**

The selection value to bind.



## Discussion

Use this modifier to read and set selection in your search interface. Selection is represented using `TextSelection` where the indices are relative to the search text you provide on the [searchable(text:placement:prompt:)](/documentation/swiftui/view/searchable(text:placement:prompt:)) modifier. Note that this value will not represent selection outside of the text, such as in any leading tokens.

SwiftUI will automatically update this value when the user changes selection, such as by typing. Likewise, you can change selection by writing to this value.

The following example creates a search interface that selects all of the text on focus.

```swift
struct ContentView: View {
    @State var text = "Hello, world!"
    @State var selection: TextSelection?
    @FocusState var focused

    var body: some View {
        NavigationSplitView {
            Sidebar()
                .searchable(text: $text)
                .searchFocused($focused)
                .searchSelection($selection)
        } detail: {
            Detail()
        }
        .onChange(of: focused) {
            if focused {
                selection = TextSelection(
                    range: text.startIndex..<text.endIndex)
            }
        }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
