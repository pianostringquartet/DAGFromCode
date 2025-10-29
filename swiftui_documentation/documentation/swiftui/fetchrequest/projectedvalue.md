---
title: projectedValue
description: A binding to the request’s mutable configuration properties.
source: https://developer.apple.com/documentation/swiftui/fetchrequest/projectedvalue
timestamp: 2025-10-29T00:14:40.561Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [fetchrequest](/documentation/swiftui/fetchrequest)

**Instance Property**

# projectedValue

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A binding to the request’s mutable configuration properties.

```swift
@MainActor @preconcurrency var projectedValue: Binding<FetchRequest<Result>.Configuration> { get }
```

## Discussion

SwiftUI returns the value associated with this property when you use [Fetch Request](/documentation/swiftui/fetchrequest) as a property wrapper on a [Fetched Results](/documentation/swiftui/fetchedresults) instance, and then access the results with a dollar sign (`$`) prefix. The value that SwiftUI returns is a [Binding](/documentation/swiftui/binding) to the request’s [Configuration](/documentation/swiftui/fetchrequest/configuration) structure, which dynamically configures the request.

For example, consider the following fetch request for a type that the [loading_and_displaying_a_large_data_feed](/documentation/swiftui/loading_and_displaying_a_large_data_feed) sample code project defines to store earthquake data, sorted based on the `time` property:

```swift
@FetchRequest(sortDescriptors: [SortDescriptor(\.time, order: .reverse)])
private var quakes: FetchedResults<Quake>
```

You can use the projected value to enable a [Table](/documentation/swiftui/table) instance to make updates:

```swift
Table(quakes, sortOrder: $quakes.sortDescriptors) {
    TableColumn("Place", value: \.place)
    TableColumn("Time", value: \.time) { quake in
        Text(quake.time, style: .time)
    }
}
```

Because you initialize the table using a binding to the descriptors, the table can modify the sort in response to actions that the user takes, like clicking a column header.

## Configuring a request dynamically

- [FetchRequest.Configuration](/documentation/swiftui/fetchrequest/configuration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
