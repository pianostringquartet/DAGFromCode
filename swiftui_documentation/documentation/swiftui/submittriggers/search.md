---
title: search
description: Defines triggers originating from search fields constructed from searchable modifiers.
source: https://developer.apple.com/documentation/swiftui/submittriggers/search
timestamp: 2025-10-29T00:14:43.618Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [submittriggers](/documentation/swiftui/submittriggers)

**Type Property**

# search

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Defines triggers originating from search fields constructed from searchable modifiers.

```swift
static let search: SubmitTriggers
```

## Discussion

In the example below, only the search field or search completions placed by the searchable modifier will trigger the view model to submit its current search query.

```swift
@StateObject private var viewModel = ViewModel()

NavigationView {
    SidebarView()
    DetailView()
}
.searchable(
    text: $viewModel.searchText,
    placement: .sidebar
) {
    SuggestionsView()
}
.onSubmit(of: .search) {
    viewModel.submitCurrentSearchQuery()
}
```

## Getting submit triggers

- [text](/documentation/swiftui/submittriggers/text)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
