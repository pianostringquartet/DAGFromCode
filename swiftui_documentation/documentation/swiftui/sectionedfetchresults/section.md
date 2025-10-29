---
title: SectionedFetchResults.Section
description: A collection of fetched results that share a specified identifier.
source: https://developer.apple.com/documentation/swiftui/sectionedfetchresults/section
timestamp: 2025-10-29T00:12:36.453Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sectionedfetchresults](/documentation/swiftui/sectionedfetchresults)

**Structure**

# SectionedFetchResults.Section

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A collection of fetched results that share a specified identifier.

```swift
@MainActor @preconcurrency struct Section
```

## Overview

Examine a `Section` instance to find the entities that satisfy a [Sectioned Fetch Request](/documentation/swiftui/sectionedfetchrequest) predicate, and that have a particular property with the value stored in the section’s [id](/documentation/swiftui/sectionedfetchresults/section/id) parameter. You specify which property by setting the fetch request’s `sectionIdentifier` parameter during initialization, or by modifying the corresponding [Sectioned Fetch Results](/documentation/swiftui/sectionedfetchresults) instance’s [section Identifier](/documentation/swiftui/sectionedfetchresults/sectionidentifier) property.

Obtain specific sections by treating the fetch results as a collection. For example, consider the following property declaration that fetches `Quake` managed objects that the [loading_and_displaying_a_large_data_feed](/documentation/swiftui/loading_and_displaying_a_large_data_feed) sample code project defines to store earthquake data:

```swift
@SectionedFetchRequest<String, Quake>(
    sectionIdentifier: \.day,
    sortDescriptors: [SortDescriptor(\.time, order: .reverse)]
)
private var quakes: SectionedFetchResults<String, Quake>
```

Get the first section using a subscript:

```swift
let firstSection = quakes[0]
```

Alternatively, you can loop over the sections to create a list of sections.

```swift
ForEach(quakes) { section in
    Text("Section \(section.id) has \(section.count) elements")
}
```

The sections also act as collections, which means you can use elements like the [count](/documentation/Swift/Collection/count-4l4qk) property in the example above.

## Conforms To

- [BidirectionalCollection](/documentation/Swift/BidirectionalCollection)
- [Collection](/documentation/Swift/Collection)
- [Identifiable](/documentation/Swift/Identifiable)
- [RandomAccessCollection](/documentation/Swift/RandomAccessCollection)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [Sequence](/documentation/Swift/Sequence)

## Identifying the section

- [id](/documentation/swiftui/sectionedfetchresults/section/id) The value that all entities in the section share for a specified key path.

## Getting indices

- [startIndex](/documentation/swiftui/sectionedfetchresults/section/startindex) The index of the first entity in the section.
- [endIndex](/documentation/swiftui/sectionedfetchresults/section/endindex) The index that’s one greater than that of the last entity in the section.

## Getting results

- [subscript(_:)](/documentation/swiftui/sectionedfetchresults/section/subscript(_:)) Gets the entity at the specified index within the section.

## Configuring the associated sectioned fetch request

- [nsPredicate](/documentation/swiftui/sectionedfetchresults/nspredicate)
- [sortDescriptors](/documentation/swiftui/sectionedfetchresults/sortdescriptors)
- [nsSortDescriptors](/documentation/swiftui/sectionedfetchresults/nssortdescriptors)
- [sectionIdentifier](/documentation/swiftui/sectionedfetchresults/sectionidentifier)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
