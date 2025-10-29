---
title: sortDescriptors
description: The request’s sort descriptors, accessed as value types.
source: https://developer.apple.com/documentation/swiftui/fetchedresults/sortdescriptors
timestamp: 2025-10-29T00:15:29.683Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [fetchedresults](/documentation/swiftui/fetchedresults)

**Instance Property**

# sortDescriptors

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The request’s sort descriptors, accessed as value types.

```swift
@MainActor @preconcurrency var sortDescriptors: [SortDescriptor<Result>] { get nonmutating set }
```

## Discussion

Set this value to cause the associated [Fetch Request](/documentation/swiftui/fetchrequest) to execute a fetch with a new collection of [Sort Descriptor](/documentation/Foundation/SortDescriptor) instances. The order of entities stored in the results collection may change as a result.

If you want to use [NSSort Descriptor](/documentation/Foundation/NSSortDescriptor) instances, set [ns Sort Descriptors](/documentation/swiftui/fetchedresults/nssortdescriptors) instead.

## Configuring the associated fetch request

- [nsPredicate](/documentation/swiftui/fetchedresults/nspredicate)
- [nsSortDescriptors](/documentation/swiftui/fetchedresults/nssortdescriptors)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
