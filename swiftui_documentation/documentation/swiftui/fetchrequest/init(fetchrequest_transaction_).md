---
title: init(fetchRequest:transaction:)
description: Creates a fully configured fetch request that uses the specified transaction when updating results.
source: https://developer.apple.com/documentation/swiftui/fetchrequest/init(fetchrequest:transaction:)
timestamp: 2025-10-29T00:13:28.609Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [fetchrequest](/documentation/swiftui/fetchrequest)

**Initializer**

# init(fetchRequest:transaction:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a fully configured fetch request that uses the specified transaction when updating results.

```swift
@MainActor @preconcurrency init(fetchRequest: NSFetchRequest<Result>, transaction: Transaction)
```

## Parameters

**fetchRequest**

An [NSFetch Request](/documentation/CoreData/NSFetchRequest) instance that describes the search criteria for retrieving data from the persistent store.



**transaction**

A transaction to use for user interface changes that result from changes to the fetched results.



## Discussion

Use this initializer if you need a fetch request with updates that affect the user interface based on a [Transaction](/documentation/swiftui/transaction). Otherwise, use [init(fetchRequest:animation:)](/documentation/swiftui/fetchrequest/init(fetchrequest:animation:)).

## Creating a fully configured fetch request

- [init(fetchRequest:animation:)](/documentation/swiftui/fetchrequest/init(fetchrequest:animation:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
