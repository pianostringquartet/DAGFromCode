---
title: search(text:)
description: Creates a  instance that conveys a search state.
source: https://developer.apple.com/documentation/swiftui/contentunavailableview/search(text:)
timestamp: 2025-10-29T00:12:19.924Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [contentunavailableview](/documentation/swiftui/contentunavailableview)

**Type Method**

# search(text:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a  instance that conveys a search state.

```swift
static func search(text: String) -> ContentUnavailableView<Label, Description, Actions>
```

## Parameters

**text**

The search text query.



## Discussion

For example, consider the usage of this static member in *ContactsListView*:

```swift
struct ContactsListView: View {
    @ObservedObject private var viewModel = ContactsViewModel()

    var body: some View {
        NavigationStack {
            CustomSearchBar(query: $viewModel.searchText)
            List {
                ForEach(viewModel.searchResults) { contact in
                    NavigationLink {
                        ContactsView(contact)
                    } label: {
                        Text(contact.name)
                    }
                }
            }
            .navigationTitle("Contacts")
            .overlay {
                if viewModel.searchResults.isEmpty {
                    ContentUnavailableView
                        .search(text: viewModel.searchText)
                }
            }
        }
    }
}
```

## Getting built-in unavailable views

- [search](/documentation/swiftui/contentunavailableview/search)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
