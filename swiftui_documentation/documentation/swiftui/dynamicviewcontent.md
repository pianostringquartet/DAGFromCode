---
title: DynamicViewContent
description: A type of view that generates views from an underlying collection of data.
source: https://developer.apple.com/documentation/swiftui/dynamicviewcontent
timestamp: 2025-10-29T00:14:22.721Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# DynamicViewContent

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A type of view that generates views from an underlying collection of data.

```swift
protocol DynamicViewContent<Data> : View
```

## Inherits From

- [View](/documentation/swiftui/view)

## Conforming Types

- [ForEach](/documentation/swiftui/foreach)
- [ModifiedContent](/documentation/swiftui/modifiedcontent)

## Managing the data

- [data](/documentation/swiftui/dynamicviewcontent/data-swift.property) The collection of underlying data.
- [Data](/documentation/swiftui/dynamicviewcontent/data-swift.associatedtype) The type of the underlying collection of data.

## Responding to updates

- [onDelete(perform:)](/documentation/swiftui/dynamicviewcontent/ondelete(perform:)) Sets the deletion action for the dynamic view. You must delete the corresponding item within , as it will be called after the row has already been removed from the .
- [onInsert(of:perform:)](/documentation/swiftui/dynamicviewcontent/oninsert(of:perform:)-418bq) Sets the insert action for the dynamic view.
- [onMove(perform:)](/documentation/swiftui/dynamicviewcontent/onmove(perform:)) Sets the move action for the dynamic view.
- [dropDestination(for:action:)](/documentation/swiftui/dynamicviewcontent/dropdestination(for:action:)) Sets the insert action for the dynamic view.

## Deprecated symbols

- [onInsert(of:perform:)](/documentation/swiftui/dynamicviewcontent/oninsert(of:perform:)-40hwa) Sets the insert action for the dynamic view.

## Instance Methods

- [onInsert(of:perform:)](/documentation/swiftui/dynamicviewcontent/oninsert(of:perform:)) Sets the insert action for the dynamic view.

## Iterating over dynamic data

- [ForEach](/documentation/swiftui/foreach)
- [ForEachSectionCollection](/documentation/swiftui/foreachsectioncollection)
- [ForEachSubviewCollection](/documentation/swiftui/foreachsubviewcollection)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
