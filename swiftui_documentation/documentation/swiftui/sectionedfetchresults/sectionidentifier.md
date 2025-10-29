---
title: sectionIdentifier
description: The key path that the system uses to group fetched results into sections.
source: https://developer.apple.com/documentation/swiftui/sectionedfetchresults/sectionidentifier
timestamp: 2025-10-29T00:14:05.188Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sectionedfetchresults](/documentation/swiftui/sectionedfetchresults)

**Instance Property**

# sectionIdentifier

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The key path that the system uses to group fetched results into sections.

```swift
@MainActor @preconcurrency var sectionIdentifier: KeyPath<Result, SectionIdentifier> { get nonmutating set }
```

## Discussion

Set this value to cause the associated [Sectioned Fetch Request](/documentation/swiftui/sectionedfetchrequest) to execute a fetch with a new section identifier, producing an updated collection of results. Changing this value produces a new set of sections. Use care to coordinate section and sort updates, as described in [Configuration](/documentation/swiftui/sectionedfetchrequest/configuration).

## Configuring the associated sectioned fetch request

- [nsPredicate](/documentation/swiftui/sectionedfetchresults/nspredicate)
- [sortDescriptors](/documentation/swiftui/sectionedfetchresults/sortdescriptors)
- [nsSortDescriptors](/documentation/swiftui/sectionedfetchresults/nssortdescriptors)
- [SectionedFetchResults.Section](/documentation/swiftui/sectionedfetchresults/section)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
