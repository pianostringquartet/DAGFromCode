---
title: SectionCollection
description: An opaque collection representing the sections of view.
source: https://developer.apple.com/documentation/swiftui/sectioncollection
timestamp: 2025-10-29T00:11:50.919Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SectionCollection

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> An opaque collection representing the sections of view.

```swift
struct SectionCollection
```

## Overview

Sections are constructed lazily, on demand, so access only as much of this collection as is necessary to create the resulting content.

You can get access to a view’s [Section Collection](/documentation/swiftui/sectioncollection) by using the `Group/init(sectionsOf:transform:)` initializer.

Any content of the given view which is not explicitly specified as a section is grouped with its sibling content to form implicit sections, meaning the minimum number of sections in a `SectionCollection` is one.

## Conforms To

- [BidirectionalCollection](/documentation/Swift/BidirectionalCollection)
- [Collection](/documentation/Swift/Collection)
- [RandomAccessCollection](/documentation/Swift/RandomAccessCollection)
- [Sequence](/documentation/Swift/Sequence)

## Organizing views into sections

- [Section](/documentation/swiftui/section)
- [SectionConfiguration](/documentation/swiftui/sectionconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
