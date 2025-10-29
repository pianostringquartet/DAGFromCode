---
title: init(_:)
description: Creates a custom horizontal alignment of the specified type.
source: https://developer.apple.com/documentation/swiftui/horizontalalignment/init(_:)
timestamp: 2025-10-29T00:15:13.631Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [horizontalalignment](/documentation/swiftui/horizontalalignment)

**Initializer**

# init(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a custom horizontal alignment of the specified type.

```swift
init(_ id: any AlignmentID.Type)
```

## Parameters

**id**

The type of an identifier that uniquely identifies a horizontal alignment.



## Discussion

Use this initializer to create a custom horizontal alignment. Define an [Alignment ID](/documentation/swiftui/alignmentid) type, and then use that type to create a new static property on [Horizontal Alignment](/documentation/swiftui/horizontalalignment):

```swift
private struct OneQuarterAlignment: AlignmentID {
    static func defaultValue(in context: ViewDimensions) -> CGFloat {
        context.width / 4
    }
}

extension HorizontalAlignment {
    static let oneQuarter = HorizontalAlignment(OneQuarterAlignment.self)
}
```

Every horizontal alignment instance that you create needs a unique identifier. For more information, see [Alignment ID](/documentation/swiftui/alignmentid).

## Creating a custom alignment

- [combineExplicit(_:)](/documentation/swiftui/horizontalalignment/combineexplicit(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
