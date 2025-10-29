---
title: init(content:)
description: Creates a destination-based navigation view.
source: https://developer.apple.com/documentation/swiftui/navigationview/init(content:)
timestamp: 2025-10-29T00:14:07.655Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationview](/documentation/swiftui/navigationview)

**Initializer**

# init(content:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 7.0+

> Creates a destination-based navigation view.

```swift
init(@ViewBuilder content: () -> Content)
```

## Parameters

**content**

A [View Builder](/documentation/swiftui/viewbuilder) that produces the content that the navigation view wraps. Any views after the first act as placeholders for corresponding columns in a multicolumn display.



## Discussion

Perform navigation by initializing a link with a destination view. For example, consider a `ColorDetail` view that displays a color sample:

```swift
struct ColorDetail: View {
    var color: Color

    var body: some View {
        color
            .frame(width: 200, height: 200)
            .navigationTitle(color.description.capitalized)
    }
}
```

The following [Navigation View](/documentation/swiftui/navigationview) presents three links to color detail views:

```swift
NavigationView {
    List {
        NavigationLink("Purple", destination: ColorDetail(color: .purple))
        NavigationLink("Pink", destination: ColorDetail(color: .pink))
        NavigationLink("Orange", destination: ColorDetail(color: .orange))
    }
    .navigationTitle("Colors")

    Text("Select a Color") // A placeholder to show before selection.
}
```

When the horizontal size class is [regular](/documentation/swiftui/userinterfacesizeclass/regular), like on an iPad in landscape mode, or on a Mac, the navigation view presents itself as a multicolumn view, using its second and later content views — a single [Text](/documentation/swiftui/text) view in the example above — as a placeholder for the corresponding column:



When the user selects one of the navigation links from the list, the linked destination view replaces the placeholder text in the detail column:



When the size class is [compact](/documentation/swiftui/userinterfacesizeclass/compact), like on an iPhone in portrait orientation, the navigation view presents itself as a single column that the user navigates as a stack. Tapping one of the links replaces the list with the detail view, which provides a back button to return to the list:

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
