---
title: SectionedFetchRequest
description: A property wrapper type that retrieves entities, grouped into sections, from a Core Data persistent store.
source: https://developer.apple.com/documentation/swiftui/sectionedfetchrequest
timestamp: 2025-10-29T00:12:14.044Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SectionedFetchRequest

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A property wrapper type that retrieves entities, grouped into sections, from a Core Data persistent store.

```swift
@MainActor @propertyWrapper @preconcurrency struct SectionedFetchRequest<SectionIdentifier, Result> where SectionIdentifier : Hashable, Result : NSFetchRequestResult
```

## Overview

Use a `SectionedFetchRequest` property wrapper to declare a [Sectioned Fetch Results](/documentation/swiftui/sectionedfetchresults) property that provides a grouped collection of Core Data managed objects to a SwiftUI view. If you don’t need sectioning, use [Fetch Request](/documentation/swiftui/fetchrequest) instead.

Configure a sectioned fetch request with an optional predicate and sort descriptors, and include a `sectionIdentifier` parameter to indicate how to group the fetched results. Be sure that you choose sorting and sectioning that work together to avoid discontiguous sections. For example, you can request a list of earthquakes, composed of `Quake` managed objects that the [loading_and_displaying_a_large_data_feed](/documentation/swiftui/loading_and_displaying_a_large_data_feed) sample code project defines to store earthquake data, sorted by time and grouped by date:

```swift
@SectionedFetchRequest<String, Quake>(
    sectionIdentifier: \.day,
    sortDescriptors: [SortDescriptor(\.time, order: .reverse)]
)
private var quakes: SectionedFetchResults<String, Quake>
```

Always declare properties that have a sectioned fetch request wrapper as private. This lets the compiler help you avoid accidentally setting the property from the memberwise initializer of the enclosing view.

The request infers the entity type from the `Result` type that you specify, which is `Quake` in the example above. Indicate a `SectionIdentifier` type to declare the type found at the fetched object’s `sectionIdentifier` key path. The section identifier type must conform to the [Hashable](/documentation/Swift/Hashable) protocol.

The example above depends on the `Quake` type having a `day` property that’s either a stored or computed string. Be sure to mark any computed property with the `@objc` attribute for it to function as a section identifier. For best performance with large data sets, use stored properties.

The sectioned fetch request and its results use the managed object context stored in the environment, which you can access using the [managed Object Context](/documentation/swiftui/environmentvalues/managedobjectcontext) environment value. To support user interface activity, you typically rely on the [view Context](/documentation/CoreData/NSPersistentContainer/viewContext) property of a shared [NSPersistent Container](/documentation/CoreData/NSPersistentContainer) instance. For example, you can set a context on your top-level content view using a shared container that you define as part of your model:

```swift
ContentView()
    .environment(
        \.managedObjectContext,
        QuakesProvider.shared.container.viewContext)
```

When you need to dynamically change the section identifier, predicate, or sort descriptors, access the request’s [Configuration](/documentation/swiftui/sectionedfetchrequest/configuration) structure, either directly or with a binding.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [DynamicProperty](/documentation/swiftui/dynamicproperty)

## Creating a fetch request

- [init(sectionIdentifier:sortDescriptors:predicate:animation:)](/documentation/swiftui/sectionedfetchrequest/init(sectionidentifier:sortdescriptors:predicate:animation:)) Creates a sectioned fetch request based on a section identifier, a predicate, and reference type sort parameters.
- [init(entity:sectionIdentifier:sortDescriptors:predicate:animation:)](/documentation/swiftui/sectionedfetchrequest/init(entity:sectionidentifier:sortdescriptors:predicate:animation:)) Creates a sectioned fetch request for a specified entity description, based on a section identifier, a predicate, and sort parameters.

## Creating a fully configured fetch request

- [init(fetchRequest:sectionIdentifier:animation:)](/documentation/swiftui/sectionedfetchrequest/init(fetchrequest:sectionidentifier:animation:)) Creates a fully configured sectioned fetch request that uses the specified animation when updating results.
- [init(fetchRequest:sectionIdentifier:transaction:)](/documentation/swiftui/sectionedfetchrequest/init(fetchrequest:sectionidentifier:transaction:)) Creates a fully configured sectioned fetch request that uses the specified transaction when updating results.

## Configuring a request dynamically

- [SectionedFetchRequest.Configuration](/documentation/swiftui/sectionedfetchrequest/configuration) The request’s configurable properties.
- [projectedValue](/documentation/swiftui/sectionedfetchrequest/projectedvalue) A binding to the request’s mutable configuration properties.

## Getting the fetched results

- [update()](/documentation/swiftui/sectionedfetchrequest/update()) Updates the fetched results.
- [wrappedValue](/documentation/swiftui/sectionedfetchrequest/wrappedvalue) The fetched results of the fetch request.

## Default Implementations

- [DynamicProperty Implementations](/documentation/swiftui/sectionedfetchrequest/dynamicproperty-implementations)

## Accessing Core Data

- [Loading and displaying a large data feed](/documentation/swiftui/loading-and-displaying-a-large-data-feed)
- [managedObjectContext](/documentation/swiftui/environmentvalues/managedobjectcontext)
- [FetchRequest](/documentation/swiftui/fetchrequest)
- [FetchedResults](/documentation/swiftui/fetchedresults)
- [SectionedFetchResults](/documentation/swiftui/sectionedfetchresults)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
