---
title: DismissSearchAction
description: An action that can end a search interaction.
source: https://developer.apple.com/documentation/swiftui/dismisssearchaction
timestamp: 2025-10-29T00:09:53.308Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DismissSearchAction

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> An action that can end a search interaction.

```swift
@MainActor @preconcurrency struct DismissSearchAction
```

## Overview

Use the [dismiss Search](/documentation/swiftui/environmentvalues/dismisssearch) environment value to get the instance of this structure for a given [Environment](/documentation/swiftui/environment). Then call the instance to dismiss the current search interaction. You call the instance directly because it defines a [callAsFunction()](/documentation/swiftui/dismisssearchaction/callasfunction()) method that Swift calls when you call the instance.

When you dismiss search, SwiftUI:

- Sets [is Searching](/documentation/swiftui/environmentvalues/issearching) to `false`.
- Clears any text from the search field.
- Removes focus from the search field.

> [!NOTE]
> Calling this instance has no effect if the user isn’t interacting with a search field.

Use this action to dismiss a search operation based on another user interaction. For example, consider a searchable view with a [Button](/documentation/swiftui/button) that presents more information about the first matching item from a collection:

```swift
struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        NavigationStack {
            SearchedView(searchText: searchText)
                .searchable(text: $searchText)
        }
    }
}

struct SearchedView: View {
    var searchText: String

    let items = ["a", "b", "c"]
    var filteredItems: [String] { items.filter { $0 == searchText.lowercased() } }

    @State private var isPresented = false
    @Environment(\.dismissSearch) private var dismissSearch

    var body: some View {
        if let item = filteredItems.first {
            Button("Details about \(item)") {
                isPresented = true
            }
            .sheet(isPresented: $isPresented) {
                NavigationStack {
                    DetailView(item: item, dismissSearch: dismissSearch)
                }
            }
        }
    }
}
```

The button becomes visible only after the user enters search text that produces a match. When the user taps the button, SwiftUI shows a sheet that provides more information about the item, including an Add button for adding the item to a stored list of items:

```swift
private struct DetailView: View {
    var item: String
    var dismissSearch: DismissSearchAction

    @Environment(\.dismiss) private var dismiss

    var body: some View {
        Text("Information about \(item).")
            .toolbar {
                Button("Add") {
                    // Store the item here...

                    dismiss()
                    dismissSearch()
                }
            }
    }
}
```

People can dismiss the sheet by dragging it down, effectively canceling the operation, leaving the in-progress search interaction intact. Alternatively, people can tap the Add button to store the item. Because the person using your app is likely to be done with both the detail view and the search interaction at this point, the button’s closure also uses the [dismiss](/documentation/swiftui/environmentvalues/dismiss) property to dismiss the sheet, and the [dismiss Search](/documentation/swiftui/environmentvalues/dismisssearch) property to reset the search field.

> [!IMPORTANT]
> Access the action from inside the searched view, as the example above demonstrates, rather than from the searched view’s parent, or another hierarchy, like that of a sheet. SwiftUI sets the value in the environment of the view that you apply the searchable modifier to, and doesn’t propagate the value up the view hierarchy.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Calling the action

- [callAsFunction()](/documentation/swiftui/dismisssearchaction/callasfunction()) Dismisses the current search operation, if any.

## Detecting, activating, and dismissing search

- [Managing search interface activation](/documentation/swiftui/managing-search-interface-activation)
- [isSearching](/documentation/swiftui/environmentvalues/issearching)
- [dismissSearch](/documentation/swiftui/environmentvalues/dismisssearch)
- [searchable(text:isPresented:placement:prompt:)](/documentation/swiftui/view/searchable(text:ispresented:placement:prompt:))
- [searchable(text:tokens:isPresented:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:ispresented:placement:prompt:token:))
- [searchable(text:editableTokens:isPresented:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:editabletokens:ispresented:placement:prompt:token:))
- [searchable(text:tokens:suggestedTokens:isPresented:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:suggestedtokens:ispresented:placement:prompt:token:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
