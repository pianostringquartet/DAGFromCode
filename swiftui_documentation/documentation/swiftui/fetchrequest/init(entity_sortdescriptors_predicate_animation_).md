---
title: init(entity:sortDescriptors:predicate:animation:)
description: Creates a fetch request for a specified entity description, based on a predicate and sort parameters.
source: https://developer.apple.com/documentation/swiftui/fetchrequest/init(entity:sortdescriptors:predicate:animation:)
timestamp: 2025-10-29T00:15:34.067Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [fetchrequest](/documentation/swiftui/fetchrequest)

**Initializer**

# init(entity:sortDescriptors:predicate:animation:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a fetch request for a specified entity description, based on a predicate and sort parameters.

```swift
@MainActor @preconcurrency init(entity: NSEntityDescription, sortDescriptors: [NSSortDescriptor], predicate: NSPredicate? = nil, animation: Animation? = nil)
```

## Parameters

**entity**

The description of the Core Data entity to fetch.



**sortDescriptors**

An array of sort descriptors that define the sort order of the fetched results.



**predicate**

An [NSPredicate](/documentation/Foundation/NSPredicate) instance that defines logical conditions used to filter the fetched results.



**animation**

The animation to use for user interface changes that result from changes to the fetched results.



## Discussion

Use this initializer if you need to explicitly specify the entity type for the request. If you specify a placeholder `Result` type in the request declaration, use the [init(sortDescriptors:predicate:animation:)](/documentation/swiftui/fetchrequest/init(sortdescriptors:predicate:animation:)) initializer to let the request infer the entity type. If you need more control over the fetch request configuration, use [init(fetchRequest:animation:)](/documentation/swiftui/fetchrequest/init(fetchrequest:animation:)).

## Creating a fetch request

- [init(sortDescriptors:predicate:animation:)](/documentation/swiftui/fetchrequest/init(sortdescriptors:predicate:animation:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
