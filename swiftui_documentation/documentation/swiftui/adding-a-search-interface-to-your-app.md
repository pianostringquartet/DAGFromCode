---
title: Adding a search interface to your app
description: Present an interface that people can use to search for content in your app.
source: https://developer.apple.com/documentation/swiftui/adding-a-search-interface-to-your-app
timestamp: 2025-10-29T00:14:21.605Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Article**

# Adding a search interface to your app

> Present an interface that people can use to search for content in your app.

## Overview

Add a search interface to your app by applying one of the searchable view modifiers — like [searchable(text:placement:prompt:)](/documentation/swiftui/view/searchable(text:placement:prompt:)) — to a [Navigation Split View](/documentation/swiftui/navigationsplitview) or [Navigation Stack](/documentation/swiftui/navigationstack), or to a view inside one of these. A search field then appears in the toolbar. The precise placement and appearance of the search field depends on the platform, where you put the modifier in code, and its configuration.



The searchable modifier that creates the field takes a [Binding](/documentation/swiftui/binding) to a string that represents the search field’s text. You provide the storage for the string — and optionally for an array of discrete search tokens — that you use to conduct the search. To learn about managing the search field’s data, see [Performing-a-search](/documentation/swiftui/performing-a-search-operation).

### Place the search field automatically

You can automatically place the search field by adding the [searchable(text:placement:prompt:)](/documentation/swiftui/view/searchable(text:placement:prompt:)) modifier to a navigation element like a navigation split view:

```swift
struct ContentView: View {
    @State private var departmentId: Department.ID?
    @State private var productId: Product.ID?
    @State private var searchText: String = ""

    var body: some View {
        NavigationSplitView {
            DepartmentList(departmentId: $departmentId)
        } content: {
            ProductList(departmentId: departmentId, productId: $productId)
        } detail: {
            ProductDetails(productId: productId)
        }
        .searchable(text: $searchText) // Adds a search field.
    }
}
```

With this configuration, the search field appears on the trailing edge of the toolbar in macOS. In iOS and iPadOS, the first or second column displays the search field in a double or triple column navigation view, respectively. The above three-column example puts the search field at the top of the middle column on iPad.

### Control the placement structurally

To add a search field to a specific column in iOS and iPadOS, add the searchable modifier to a view in that column. For example, to indicate that the search covers departments in the previous example, you could place the search field in the first column by adding the modifier to that column’s `DepartmentList` view instead of to the navigation split view:

```swift
NavigationSplitView {
    DepartmentList(departmentId: $departmentId)
        .searchable(text: $searchText)
} content: {
    ProductList(departmentId: departmentId, productId: $productId)
} detail: {
    ProductDetails(productId: productId)
}
```



### Control the placement programmatically

You can alternatively use the `placement` input parameter to suggest a [Search Field Placement](/documentation/swiftui/searchfieldplacement) value for the search interface. For example, you can achieve the same results as the previous example in macOS using the [sidebar](/documentation/swiftui/searchfieldplacement/sidebar) placement:

```swift
NavigationSplitView {
    DepartmentList(departmentId: $departmentId)
} content: {
    ProductList(departmentId: departmentId, productId: $productId)
} detail: {
    ProductDetails(productId: productId)
}
.searchable(text: $searchText, placement: .sidebar)
```



If SwiftUI can’t satisfy the placement request, like when you ask for sidebar placement in a searchable modifier that isn’t applied to a navigation split view, SwiftUI relies instead on its automatic placement rules.

### Set a prompt for the search field

By default, the search field contains Search as the placeholder text, to prompt people on how to use the field. You can customize the prompt by setting either a string, a [Text](/documentation/swiftui/text) view, or a [Localized String Key](/documentation/swiftui/localizedstringkey) for the searchable modifier’s `prompt` input parameter. For example, you might use this to clarify that the search field in the Department column searches among both departments and the products in each department:

```swift
DepartmentList(departmentId: $departmentId)
    .searchable(text: $searchText, prompt: "Departments and products")
```



## Searching your app’s data model

- [Performing a search operation](/documentation/swiftui/performing-a-search-operation)
- [searchable(text:placement:prompt:)](/documentation/swiftui/view/searchable(text:placement:prompt:))
- [searchable(text:tokens:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:placement:prompt:token:))
- [searchable(text:editableTokens:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:editabletokens:placement:prompt:token:))
- [SearchFieldPlacement](/documentation/swiftui/searchfieldplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
