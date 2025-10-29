---
title: FetchedResults
description: A collection of results retrieved from a Core Data store.
source: https://developer.apple.com/documentation/swiftui/fetchedresults
timestamp: 2025-10-29T00:09:22.693Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# FetchedResults

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A collection of results retrieved from a Core Data store.

```swift
@MainActor @preconcurrency struct FetchedResults<Result> where Result : NSFetchRequestResult
```

## Overview

Use a `FetchedResults` instance to show or edit Core Data managed objects in your app’s user interface. You request a particular set of results by specifying a `Result` type as the entity type, and annotating the fetched results property declaration with a [Fetch Request](/documentation/swiftui/fetchrequest) property wrapper. For example, you can create a request to list all `Quake` managed objects that the [loading_and_displaying_a_large_data_feed](/documentation/swiftui/loading_and_displaying_a_large_data_feed) sample code project defines to store earthquake data, sorted by their `time` property:

```swift
@FetchRequest(sortDescriptors: [SortDescriptor(\.time, order: .reverse)])
private var quakes: FetchedResults<Quake>
```

The results instance conforms to [Random Access Collection](/documentation/Swift/RandomAccessCollection), so you access it like any other collection. For example, you can create a [List](/documentation/swiftui/list) that iterates over all the results:

```swift
List(quakes) { quake in
    NavigationLink(destination: QuakeDetail(quake: quake)) {
        QuakeRow(quake: quake)
    }
}
```

When you need to dynamically change the request’s predicate or sort descriptors, set the result instance’s [ns Predicate](/documentation/swiftui/fetchedresults/nspredicate) and [sort Descriptors](/documentation/swiftui/fetchedresults/sortdescriptors) or [ns Sort Descriptors](/documentation/swiftui/fetchedresults/nssortdescriptors) properties, respectively.

The fetch request and its results use the managed object context stored in the environment, which you can access using the [managed Object Context](/documentation/swiftui/environmentvalues/managedobjectcontext) environment value. To support user interface activity, you typically rely on the [view Context](/documentation/CoreData/NSPersistentContainer/viewContext) property of a shared [NSPersistent Container](/documentation/CoreData/NSPersistentContainer) instance. For example, you can set a context on your top level content view using a container that you define as part of your model:

```swift
ContentView()
    .environment(
        \.managedObjectContext,
        QuakesProvider.shared.container.viewContext)
```

## Conforms To

- [BidirectionalCollection](/documentation/Swift/BidirectionalCollection)
- [Collection](/documentation/Swift/Collection)
- [RandomAccessCollection](/documentation/Swift/RandomAccessCollection)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [Sequence](/documentation/Swift/Sequence)

## Configuring the associated fetch request

- [nsPredicate](/documentation/swiftui/fetchedresults/nspredicate) The request’s predicate.
- [sortDescriptors](/documentation/swiftui/fetchedresults/sortdescriptors) The request’s sort descriptors, accessed as value types.
- [nsSortDescriptors](/documentation/swiftui/fetchedresults/nssortdescriptors) The request’s sort descriptors, accessed as reference types.

## Getting indices

- [startIndex](/documentation/swiftui/fetchedresults/startindex) The index of the first entity in the results collection.
- [endIndex](/documentation/swiftui/fetchedresults/endindex) The index that’s one greater than the last valid subscript argument.

## Getting results

- [subscript(_:)](/documentation/swiftui/fetchedresults/subscript(_:)) Gets the entity at the specified index.

## Accessing Core Data

- [Loading and displaying a large data feed](/documentation/swiftui/loading-and-displaying-a-large-data-feed)
- [managedObjectContext](/documentation/swiftui/environmentvalues/managedobjectcontext)
- [FetchRequest](/documentation/swiftui/fetchrequest)
- [SectionedFetchRequest](/documentation/swiftui/sectionedfetchrequest)
- [SectionedFetchResults](/documentation/swiftui/sectionedfetchresults)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
