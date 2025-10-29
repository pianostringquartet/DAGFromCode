---
title: init(sectionIdentifier:sortDescriptors:predicate:animation:)
description: Creates a sectioned fetch request based on a section identifier, a predicate, and reference type sort parameters.
source: https://developer.apple.com/documentation/swiftui/sectionedfetchrequest/init(sectionidentifier:sortdescriptors:predicate:animation:)
timestamp: 2025-10-29T00:11:10.390Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sectionedfetchrequest](/documentation/swiftui/sectionedfetchrequest)

**Initializer**

# init(sectionIdentifier:sortDescriptors:predicate:animation:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Creates a sectioned fetch request based on a section identifier, a predicate, and reference type sort parameters.

```swift
@MainActor @preconcurrency init(sectionIdentifier: KeyPath<Result, SectionIdentifier>, sortDescriptors: [NSSortDescriptor], predicate: NSPredicate? = nil, animation: Animation? = nil)
```

## Parameters

**sectionIdentifier**

A key path that SwiftUI applies to the `Result` type to get an object’s section identifier.



**sortDescriptors**

An array of sort descriptors that define the sort order of the fetched results.



**predicate**

An [NSPredicate](/documentation/Foundation/NSPredicate) instance that defines logical conditions used to filter the fetched results.



**animation**

The animation to use for user interface changes that result from changes to the fetched results.



## Discussion

The request gets the entity type from the `Result` instance by calling that managed object’s [entity()](/documentation/CoreData/NSManagedObject/entity()) type method. If you need to specify the entity type explicitly, use the [init(entity:sectionIdentifier:sortDescriptors:predicate:animation:)](/documentation/swiftui/sectionedfetchrequest/init(entity:sectionidentifier:sortdescriptors:predicate:animation:)) initializer instead. If you need more control over the fetch request configuration, use [init(fetchRequest:sectionIdentifier:animation:)](/documentation/swiftui/sectionedfetchrequest/init(fetchrequest:sectionidentifier:animation:)). For value type sort descriptors, use [init(sectionIdentifier:sortDescriptors:predicate:animation:)](/documentation/swiftui/sectionedfetchrequest/init(sectionidentifier:sortdescriptors:predicate:animation:)).

## Creating a fetch request

- [init(entity:sectionIdentifier:sortDescriptors:predicate:animation:)](/documentation/swiftui/sectionedfetchrequest/init(entity:sectionidentifier:sortdescriptors:predicate:animation:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
