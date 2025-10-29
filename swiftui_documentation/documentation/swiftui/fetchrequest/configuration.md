---
title: FetchRequest.Configuration
description: The request’s configurable properties.
source: https://developer.apple.com/documentation/swiftui/fetchrequest/configuration
timestamp: 2025-10-29T00:12:07.407Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [fetchrequest](/documentation/swiftui/fetchrequest)

**Structure**

# FetchRequest.Configuration

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The request’s configurable properties.

```swift
@MainActor @preconcurrency struct Configuration
```

## Overview

You initialize a [Fetch Request](/documentation/swiftui/fetchrequest) with an optional predicate and sort descriptors, either explicitly or using a configured [NSFetch Request](/documentation/CoreData/NSFetchRequest). Later, you can dynamically update the predicate and sort parameters using the request’s configuration structure.

You access or bind to a request’s configuration components through properties on the associated [Fetched Results](/documentation/swiftui/fetchedresults) instance.

### Configure using a binding

Get a [Binding](/documentation/swiftui/binding) to a fetch request’s configuration structure by accessing the request’s [projected Value](/documentation/swiftui/fetchrequest/projectedvalue), which you do by using the dollar sign (`$`) prefix on the associated results property. For example, you can create a request for `Quake` entities — a managed object type that the [loading_and_displaying_a_large_data_feed](/documentation/swiftui/loading_and_displaying_a_large_data_feed) sample code project defines — that initially sorts the results by time:

```swift
@FetchRequest(sortDescriptors: [SortDescriptor(\.time, order: .reverse)])
private var quakes: FetchedResults<Quake>
```

Then you can bind the request’s sort descriptors, which you access through the `quakes` result, to those of a [Table](/documentation/swiftui/table) instance:

```swift
Table(quakes, sortOrder: $quakes.sortDescriptors) {
    TableColumn("Place", value: \.place)
    TableColumn("Time", value: \.time) { quake in
        Text(quake.time, style: .time)
    }
}
```

A user who clicks on a table column header initiates the following sequence of events:

1. The table updates the sort descriptors through the binding.
2. The modified sort descriptors reconfigure the request.
3. The reconfigured request fetches new results.
4. SwiftUI redraws the table in response to new results.

### Set configuration directly

If you need to access the fetch request’s configuration elements directly, use the [ns Predicate](/documentation/swiftui/fetchedresults/nspredicate) and [sort Descriptors](/documentation/swiftui/fetchedresults/sortdescriptors) or [ns Sort Descriptors](/documentation/swiftui/fetchedresults/nssortdescriptors) properties of the [Fetched Results](/documentation/swiftui/fetchedresults) instance. Continuing the example above, to enable the user to dynamically update the predicate, declare a [State](/documentation/swiftui/state) property to hold a query string:

```swift
@State private var query = ""
```

Then add an [onChange(of:initial:_:)](/documentation/swiftui/view/onchange(of:initial:_:)) modifier to the [Table](/documentation/swiftui/table) that sets a new predicate any time the query changes:

```swift
.onChange(of: query) { _, value in
    quakes.nsPredicate = query.isEmpty
        ? nil
        : NSPredicate(format: "place CONTAINS %@", value)
}
```

To give the user control over the string, add a [Text Field](/documentation/swiftui/textfield) in your user interface that’s bound to the `query` state:

```swift
TextField("Filter", text: $query)
```

When the user types into the text field, the predicate updates, the request fetches new results, and SwiftUI redraws the table.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Setting a predicate

- [nsPredicate](/documentation/swiftui/fetchrequest/configuration/nspredicate) The request’s predicate.

## Setting sort descriptors

- [sortDescriptors](/documentation/swiftui/fetchrequest/configuration/sortdescriptors) The request’s sort descriptors, accessed as value types.
- [nsSortDescriptors](/documentation/swiftui/fetchrequest/configuration/nssortdescriptors) The request’s sort descriptors, accessed as reference types.

## Configuring a request dynamically

- [projectedValue](/documentation/swiftui/fetchrequest/projectedvalue)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
