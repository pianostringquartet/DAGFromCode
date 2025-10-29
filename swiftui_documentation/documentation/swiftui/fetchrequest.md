---
title: FetchRequest
description: A property wrapper type that retrieves entities from a Core Data persistent store.
source: https://developer.apple.com/documentation/swiftui/fetchrequest
timestamp: 2025-10-29T00:12:30.449Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# FetchRequest

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A property wrapper type that retrieves entities from a Core Data persistent store.

```swift
@MainActor @propertyWrapper @preconcurrency struct FetchRequest<Result> where Result : NSFetchRequestResult
```

## Overview

Use a `FetchRequest` property wrapper to declare a [Fetched Results](/documentation/swiftui/fetchedresults) property that provides a collection of Core Data managed objects to a SwiftUI view. The request infers the entity type from the `Result` placeholder type that you specify. Condition the request with an optional predicate and sort descriptors. For example, you can create a request to list all `Quake` managed objects that the [loading_and_displaying_a_large_data_feed](/documentation/swiftui/loading_and_displaying_a_large_data_feed) sample code project defines to store earthquake data, sorted by their `time` property:

```swift
@FetchRequest(sortDescriptors: [SortDescriptor(\.time, order: .reverse)])
private var quakes: FetchedResults<Quake> // Define Quake in your model.
```

Alternatively, when you need more flexibility, you can initialize the request with a configured [NSFetch Request](/documentation/CoreData/NSFetchRequest) instance:

```swift
@FetchRequest(fetchRequest: request)
private var quakes: FetchedResults<Quake>
```

Always declare properties that have a fetch request wrapper as private. This lets the compiler help you avoid accidentally setting the property from the memberwise initializer of the enclosing view.

The fetch request and its results use the managed object context stored in the environment, which you can access using the [managed Object Context](/documentation/swiftui/environmentvalues/managedobjectcontext) environment value. To support user interface activity, you typically rely on the [view Context](/documentation/CoreData/NSPersistentContainer/viewContext) property of a shared [NSPersistent Container](/documentation/CoreData/NSPersistentContainer) instance. For example, you can set a context on your top level content view using a shared container that you define as part of your model:

```swift
ContentView()
    .environment(
        \.managedObjectContext,
        QuakesProvider.shared.container.viewContext)
```

When you need to dynamically change the predicate or sort descriptors, access the request’s [Configuration](/documentation/swiftui/fetchrequest/configuration) structure. To create a request that groups the fetched results according to a characteristic that they share, use [Sectioned Fetch Request](/documentation/swiftui/sectionedfetchrequest) instead.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [DynamicProperty](/documentation/swiftui/dynamicproperty)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a fetch request

- [init(sortDescriptors:predicate:animation:)](/documentation/swiftui/fetchrequest/init(sortdescriptors:predicate:animation:)) Creates a fetch request based on a predicate and reference type sort parameters.
- [init(entity:sortDescriptors:predicate:animation:)](/documentation/swiftui/fetchrequest/init(entity:sortdescriptors:predicate:animation:)) Creates a fetch request for a specified entity description, based on a predicate and sort parameters.

## Creating a fully configured fetch request

- [init(fetchRequest:animation:)](/documentation/swiftui/fetchrequest/init(fetchrequest:animation:)) Creates a fully configured fetch request that uses the specified animation when updating results.
- [init(fetchRequest:transaction:)](/documentation/swiftui/fetchrequest/init(fetchrequest:transaction:)) Creates a fully configured fetch request that uses the specified transaction when updating results.

## Configuring a request dynamically

- [FetchRequest.Configuration](/documentation/swiftui/fetchrequest/configuration) The request’s configurable properties.
- [projectedValue](/documentation/swiftui/fetchrequest/projectedvalue) A binding to the request’s mutable configuration properties.

## Getting the fetched results

- [update()](/documentation/swiftui/fetchrequest/update()) Updates the fetched results.
- [wrappedValue](/documentation/swiftui/fetchrequest/wrappedvalue) The fetched results of the fetch request.

## Default Implementations

- [DynamicProperty Implementations](/documentation/swiftui/fetchrequest/dynamicproperty-implementations)

## Accessing Core Data

- [Loading and displaying a large data feed](/documentation/swiftui/loading-and-displaying-a-large-data-feed)
- [managedObjectContext](/documentation/swiftui/environmentvalues/managedobjectcontext)
- [FetchedResults](/documentation/swiftui/fetchedresults)
- [SectionedFetchRequest](/documentation/swiftui/sectionedfetchrequest)
- [SectionedFetchResults](/documentation/swiftui/sectionedfetchresults)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
