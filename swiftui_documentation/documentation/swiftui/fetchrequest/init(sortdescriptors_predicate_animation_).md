---
title: init(sortDescriptors:predicate:animation:)
description: Creates a fetch request based on a predicate and reference type sort parameters.
source: https://developer.apple.com/documentation/swiftui/fetchrequest/init(sortdescriptors:predicate:animation:)
timestamp: 2025-10-29T00:13:27.397Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [fetchrequest](/documentation/swiftui/fetchrequest)

**Initializer**

# init(sortDescriptors:predicate:animation:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a fetch request based on a predicate and reference type sort parameters.

```swift
@MainActor @preconcurrency init(sortDescriptors: [NSSortDescriptor], predicate: NSPredicate? = nil, animation: Animation? = nil)
```

## Parameters

**sortDescriptors**

An array of sort descriptors that define the sort order of the fetched results.



**predicate**

An [NSPredicate](/documentation/Foundation/NSPredicate) instance that defines logical conditions used to filter the fetched results.



**animation**

The animation to use for user interface changes that result from changes to the fetched results.



## Discussion

The request gets the entity type from the `Result` instance by calling that managed object’s [entity()](/documentation/CoreData/NSManagedObject/entity()) type method. If you need to specify the entity type explicitly, use the [init(entity:sortDescriptors:predicate:animation:)](/documentation/swiftui/fetchrequest/init(entity:sortdescriptors:predicate:animation:)) initializer instead. If you need more control over the fetch request configuration, use [init(fetchRequest:animation:)](/documentation/swiftui/fetchrequest/init(fetchrequest:animation:)).

## Creating a fetch request

- [init(entity:sortDescriptors:predicate:animation:)](/documentation/swiftui/fetchrequest/init(entity:sortdescriptors:predicate:animation:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
