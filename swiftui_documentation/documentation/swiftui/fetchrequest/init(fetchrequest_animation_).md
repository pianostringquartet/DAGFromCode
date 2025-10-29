---
title: init(fetchRequest:animation:)
description: Creates a fully configured fetch request that uses the specified animation when updating results.
source: https://developer.apple.com/documentation/swiftui/fetchrequest/init(fetchrequest:animation:)
timestamp: 2025-10-29T00:14:47.308Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [fetchrequest](/documentation/swiftui/fetchrequest)

**Initializer**

# init(fetchRequest:animation:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a fully configured fetch request that uses the specified animation when updating results.

```swift
@MainActor @preconcurrency init(fetchRequest: NSFetchRequest<Result>, animation: Animation? = nil)
```

## Parameters

**fetchRequest**

An [NSFetch Request](/documentation/CoreData/NSFetchRequest) instance that describes the search criteria for retrieving data from the persistent store.



**animation**

The animation to use for user interface changes that result from changes to the fetched results.



## Discussion

Use this initializer when you want to configure a fetch request with more than a predicate and sort descriptors. For example, you can vend a request from a `Quake` managed object that the [loading_and_displaying_a_large_data_feed](/documentation/swiftui/loading_and_displaying_a_large_data_feed) sample code project defines to store earthquake data. Limit the number of results to `1000` by setting a [fetch Limit](/documentation/CoreData/NSFetchRequest/fetchLimit) for the request:

```swift
extension Quake {
    var request: NSFetchRequest<Quake> {
        let request = NSFetchRequest<Quake>(entityName: "Quake")
        request.sortDescriptors = [
            NSSortDescriptor(
                keyPath: \Quake.time,
                ascending: true)]
        request.fetchLimit = 1000
        return request
    }
}
```

Use the request to define a [Fetched Results](/documentation/swiftui/fetchedresults) property:

```swift
@FetchRequest(fetchRequest: Quake.request)
private var quakes: FetchedResults<Quake>
```

If you only need to configure the request’s predicate and sort descriptors, use [init(sortDescriptors:predicate:animation:)](/documentation/swiftui/fetchrequest/init(sortdescriptors:predicate:animation:)) instead. If you need to specify a [Transaction](/documentation/swiftui/transaction) rather than an optional [Animation](/documentation/swiftui/animation), use [init(fetchRequest:transaction:)](/documentation/swiftui/fetchrequest/init(fetchrequest:transaction:)).

## Creating a fully configured fetch request

- [init(fetchRequest:transaction:)](/documentation/swiftui/fetchrequest/init(fetchrequest:transaction:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
