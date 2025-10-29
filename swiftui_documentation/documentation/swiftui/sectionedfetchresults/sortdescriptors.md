---
title: sortDescriptors
description: The request’s sort descriptors, accessed as value types.
source: https://developer.apple.com/documentation/swiftui/sectionedfetchresults/sortdescriptors
timestamp: 2025-10-29T00:15:33.522Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sectionedfetchresults](/documentation/swiftui/sectionedfetchresults)

**Instance Property**

# sortDescriptors

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The request’s sort descriptors, accessed as value types.

```swift
@MainActor @preconcurrency var sortDescriptors: [SortDescriptor<Result>] { get nonmutating set }
```

## Discussion

Set this value to cause the associated [Sectioned Fetch Request](/documentation/swiftui/sectionedfetchrequest) to execute a fetch with a new collection of [Sort Descriptor](/documentation/Foundation/SortDescriptor) instances. The order of entities stored in the results collection may change as a result. Use care to coordinate section and sort updates, as described in [Configuration](/documentation/swiftui/sectionedfetchrequest/configuration).

If you want to use [NSSort Descriptor](/documentation/Foundation/NSSortDescriptor) instances, set [ns Sort Descriptors](/documentation/swiftui/sectionedfetchresults/nssortdescriptors) instead.

## Configuring the associated sectioned fetch request

- [nsPredicate](/documentation/swiftui/sectionedfetchresults/nspredicate)
- [nsSortDescriptors](/documentation/swiftui/sectionedfetchresults/nssortdescriptors)
- [sectionIdentifier](/documentation/swiftui/sectionedfetchresults/sectionidentifier)
- [SectionedFetchResults.Section](/documentation/swiftui/sectionedfetchresults/section)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
