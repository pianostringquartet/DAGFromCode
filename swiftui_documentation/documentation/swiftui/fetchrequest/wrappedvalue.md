---
title: wrappedValue
description: The fetched results of the fetch request.
source: https://developer.apple.com/documentation/swiftui/fetchrequest/wrappedvalue
timestamp: 2025-10-29T00:11:26.170Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [fetchrequest](/documentation/swiftui/fetchrequest)

**Instance Property**

# wrappedValue

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The fetched results of the fetch request.

```swift
@MainActor @preconcurrency var wrappedValue: FetchedResults<Result> { get }
```

## Discussion

SwiftUI returns the value associated with this property when you use [Fetch Request](/documentation/swiftui/fetchrequest) as a property wrapper, and then access the wrapped property by name. For example, consider the following `quakes` property declaration that fetches a `Quake` type that the [loading_and_displaying_a_large_data_feed](/documentation/swiftui/loading_and_displaying_a_large_data_feed) sample code project defines:

```swift
@FetchRequest(fetchRequest: request)
private var quakes: FetchedResults<Quake>
```

You access the request’s `wrappedValue`, which contains a [Fetched Results](/documentation/swiftui/fetchedresults) instance, by referring to the `quakes` property by name:

```swift
Text("Found \(quakes.count) earthquakes")
```

If you need to separate the request and the result entities, you can declare `quakes` in two steps by using the request’s `wrappedValue` to obtain the results:

```swift
var fetchRequest = FetchRequest<Quake>(fetchRequest: request)
var quakes: FetchedResults<Quake> { fetchRequest.wrappedValue }
```

The `wrappedValue` property returns an empty array when there are no fetched results — for example, because no entities satisfy the predicate, or because the data store is empty.

## Getting the fetched results

- [update()](/documentation/swiftui/fetchrequest/update())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
