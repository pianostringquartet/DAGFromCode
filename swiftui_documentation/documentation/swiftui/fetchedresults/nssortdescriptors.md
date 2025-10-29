---
title: nsSortDescriptors
description: The request’s sort descriptors, accessed as reference types.
source: https://developer.apple.com/documentation/swiftui/fetchedresults/nssortdescriptors
timestamp: 2025-10-29T00:15:29.781Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [fetchedresults](/documentation/swiftui/fetchedresults)

**Instance Property**

# nsSortDescriptors

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The request’s sort descriptors, accessed as reference types.

```swift
@MainActor @preconcurrency var nsSortDescriptors: [NSSortDescriptor] { get nonmutating set }
```

## Discussion

Set this value to cause the associated [Fetch Request](/documentation/swiftui/fetchrequest) to execute a fetch with a new collection of [NSSort Descriptor](/documentation/Foundation/NSSortDescriptor) instances. The order of managed objects stored in the results collection may change as a result.

If you want to use [Sort Descriptor](/documentation/Foundation/SortDescriptor) instances, set [sort Descriptors](/documentation/swiftui/fetchedresults/sortdescriptors) instead.

## Configuring the associated fetch request

- [nsPredicate](/documentation/swiftui/fetchedresults/nspredicate)
- [sortDescriptors](/documentation/swiftui/fetchedresults/sortdescriptors)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
