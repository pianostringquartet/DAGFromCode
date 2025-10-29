---
title: init(fetchRequest:sectionIdentifier:animation:)
description: Creates a fully configured sectioned fetch request that uses the specified animation when updating results.
source: https://developer.apple.com/documentation/swiftui/sectionedfetchrequest/init(fetchrequest:sectionidentifier:animation:)
timestamp: 2025-10-29T00:12:09.145Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sectionedfetchrequest](/documentation/swiftui/sectionedfetchrequest)

**Initializer**

# init(fetchRequest:sectionIdentifier:animation:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Creates a fully configured sectioned fetch request that uses the specified animation when updating results.

```swift
@MainActor @preconcurrency init(fetchRequest: NSFetchRequest<Result>, sectionIdentifier: KeyPath<Result, SectionIdentifier>, animation: Animation? = nil)
```

## Parameters

**fetchRequest**

An [NSFetch Request](/documentation/CoreData/NSFetchRequest) instance that describes the search criteria for retrieving data from the persistent store.



**sectionIdentifier**

A key path that SwiftUI applies to the `Result` type to get an object’s section identifier.



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

Use the request to define a `SectionedFetchedResults` property:

```swift
@SectionedFetchRequest<String, Quake>(
    fetchRequest: Quake.request,
    sectionIdentifier: \.day)
private var quakes: FetchedResults<String, Quake>
```

If you only need to configure the request’s section identifier, predicate, and sort descriptors, use [init(sectionIdentifier:sortDescriptors:predicate:animation:)](/documentation/swiftui/sectionedfetchrequest/init(sectionidentifier:sortdescriptors:predicate:animation:)) instead. If you need to specify a [Transaction](/documentation/swiftui/transaction) rather than an optional [Animation](/documentation/swiftui/animation), use [init(fetchRequest:sectionIdentifier:transaction:)](/documentation/swiftui/sectionedfetchrequest/init(fetchrequest:sectionidentifier:transaction:)).

## Creating a fully configured fetch request

- [init(fetchRequest:sectionIdentifier:transaction:)](/documentation/swiftui/sectionedfetchrequest/init(fetchrequest:sectionidentifier:transaction:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
