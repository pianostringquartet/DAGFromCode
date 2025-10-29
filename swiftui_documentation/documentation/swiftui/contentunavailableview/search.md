---
title: search
description: Creates a  instance that conveys a search state.
source: https://developer.apple.com/documentation/swiftui/contentunavailableview/search
timestamp: 2025-10-29T00:12:14.044Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [contentunavailableview](/documentation/swiftui/contentunavailableview)

**Type Property**

# search

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a  instance that conveys a search state.

```swift
static var search: ContentUnavailableView<SearchUnavailableContent.Label, SearchUnavailableContent.Description, SearchUnavailableContent.Actions> { get }
```

## Discussion

A `ContentUnavailableView` initialized with this static member is expected to be contained within a searchable view hierarchy. Such a configuration enables the search query to be parsed into the view’s description.

For example, consider the usage of this static member in *ContactsListView*:

```swift
struct ContactsListView: View {
    @ObservedObject private var viewModel = ContactsViewModel()

    var body: some View {
        NavigationStack {
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
            .searchable(text: $viewModel.searchText)
            .overlay {
                if searchResults.isEmpty {
                    ContentUnavailableView.search
                }
            }
        }
    }
}
```

## Getting built-in unavailable views

- [search(text:)](/documentation/swiftui/contentunavailableview/search(text:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
