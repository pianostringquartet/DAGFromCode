---
title: IndexedIdentifierCollection
description: A collection wrapper that iterates over the indices and identifiers of a collection together.
source: https://developer.apple.com/documentation/swiftui/indexedidentifiercollection
timestamp: 2025-10-29T00:10:31.917Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# IndexedIdentifierCollection

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A collection wrapper that iterates over the indices and identifiers of a collection together.

```swift
struct IndexedIdentifierCollection<Base, ID> where Base : Collection, ID : Hashable
```

## Overview

You don’t use this type directly. Instead SwiftUI creates this type on your behalf.

## Conforms To

- [BidirectionalCollection](/documentation/Swift/BidirectionalCollection)
- [Collection](/documentation/Swift/Collection)
- [Copyable](/documentation/Swift/Copyable)
- [RandomAccessCollection](/documentation/Swift/RandomAccessCollection)
- [Sequence](/documentation/Swift/Sequence)

## Editing a list

- [moveDisabled(_:)](/documentation/swiftui/view/movedisabled(_:))
- [deleteDisabled(_:)](/documentation/swiftui/view/deletedisabled(_:))
- [editMode](/documentation/swiftui/environmentvalues/editmode)
- [EditMode](/documentation/swiftui/editmode)
- [EditActions](/documentation/swiftui/editactions)
- [EditableCollectionContent](/documentation/swiftui/editablecollectioncontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
