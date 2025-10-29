---
title: init(fetchRequest:sectionIdentifier:transaction:)
description: Creates a fully configured sectioned fetch request that uses the specified transaction when updating results.
source: https://developer.apple.com/documentation/swiftui/sectionedfetchrequest/init(fetchrequest:sectionidentifier:transaction:)
timestamp: 2025-10-29T00:11:50.516Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sectionedfetchrequest](/documentation/swiftui/sectionedfetchrequest)

**Initializer**

# init(fetchRequest:sectionIdentifier:transaction:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Creates a fully configured sectioned fetch request that uses the specified transaction when updating results.

```swift
@MainActor @preconcurrency init(fetchRequest: NSFetchRequest<Result>, sectionIdentifier: KeyPath<Result, SectionIdentifier>, transaction: Transaction)
```

## Parameters

**fetchRequest**

An [NSFetch Request](/documentation/CoreData/NSFetchRequest) instance that describes the search criteria for retrieving data from the persistent store.



**sectionIdentifier**

A key path that SwiftUI applies to the `Result` type to get an object’s section identifier.



**transaction**

A transaction to use for user interface changes that result from changes to the fetched results.



## Discussion

Use this initializer if you need a fetch request with updates that affect the user interface based on a [Transaction](/documentation/swiftui/transaction). Otherwise, use [init(fetchRequest:sectionIdentifier:animation:)](/documentation/swiftui/sectionedfetchrequest/init(fetchrequest:sectionidentifier:animation:)).

## Creating a fully configured fetch request

- [init(fetchRequest:sectionIdentifier:animation:)](/documentation/swiftui/sectionedfetchrequest/init(fetchrequest:sectionidentifier:animation:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
