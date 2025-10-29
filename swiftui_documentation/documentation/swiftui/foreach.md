---
title: ForEach
description: A structure that computes views on demand from an underlying collection of identified data.
source: https://developer.apple.com/documentation/swiftui/foreach
timestamp: 2025-10-29T00:11:41.670Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ForEach

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A structure that computes views on demand from an underlying collection of identified data.

```swift
struct ForEach<Data, ID, Content> where Data : RandomAccessCollection, ID : Hashable
```

## Overview

Use `ForEach` to provide views based on a [Random Access Collection](/documentation/Swift/RandomAccessCollection) of some data type. Either the collection’s elements must conform to [Identifiable](/documentation/Swift/Identifiable) or you need to provide an `id` parameter to the `ForEach` initializer.

The following example creates a `NamedFont` type that conforms to [Identifiable](/documentation/Swift/Identifiable), and an array of this type called `namedFonts`. A `ForEach` instance iterates over the array, producing new [Text](/documentation/swiftui/text) instances that display examples of each SwiftUI [Font](/documentation/swiftui/font) style provided in the array.

```swift
private struct NamedFont: Identifiable {
    let name: String
    let font: Font
    var id: String { name }
}

private let namedFonts: [NamedFont] = [
    NamedFont(name: "Large Title", font: .largeTitle),
    NamedFont(name: "Title", font: .title),
    NamedFont(name: "Headline", font: .headline),
    NamedFont(name: "Body", font: .body),
    NamedFont(name: "Caption", font: .caption)
]

var body: some View {
    ForEach(namedFonts) { namedFont in
        Text(namedFont.name)
            .font(namedFont.font)
    }
}
```



Some containers like [List](/documentation/swiftui/list) or [Lazy VStack](/documentation/swiftui/lazyvstack) will query the elements within a for each lazily. To obtain maximal performance, ensure that the view created from each element in the collection represents a constant number of views.

For example, the following view uses an if statement which means each element of the collection can represent either 1 or 0 views, a non-constant number.

```swift
ForEach(namedFonts) { namedFont in
    if namedFont.name.count != 2 {
        Text(namedFont.name)
    }
}
```

You can make the above view represent a constant number of views by wrapping the condition in a [VStack](/documentation/swiftui/vstack), an [HStack](/documentation/swiftui/hstack), or a [ZStack](/documentation/swiftui/zstack).

```swift
ForEach(namedFonts) { namedFont in
    VStack {
        if namedFont.name.count != 2 {
            Text(namedFont.name)
        }
    }
}
```

When enabling the following launch argument, SwiftUI will log when it encounters a view that produces a non-constant number of views in these containers:

```swift
-LogForEachSlowPath YES
```

## Conforms To

- [AccessibilityRotorContent](/documentation/swiftui/accessibilityrotorcontent)
- [AttachmentContent](/documentation/RealityKit/AttachmentContent)
- [Chart3DContent](/documentation/Charts/Chart3DContent)
- [ChartContent](/documentation/Charts/ChartContent)
- [Copyable](/documentation/Swift/Copyable)
- [DynamicMapContent](/documentation/MapKit/DynamicMapContent)
- [DynamicTableRowContent](/documentation/swiftui/dynamictablerowcontent)
- [DynamicViewContent](/documentation/swiftui/dynamicviewcontent)
- [MapContent](/documentation/MapKit/MapContent)
- [TabContent](/documentation/swiftui/tabcontent)
- [TableRowContent](/documentation/swiftui/tablerowcontent)
- [View](/documentation/swiftui/view)

## Creating a collection

- [init(_:)](/documentation/swiftui/foreach/init(_:)) Creates an instance that uniquely identifies and creates table rows across updates based on the identity of the underlying data.
- [init(_:content:)](/documentation/swiftui/foreach/init(_:content:)) Creates an instance that uniquely identifies and creates map content across updates based on the identity of the underlying data.
- [init(_:id:content:)](/documentation/swiftui/foreach/init(_:id:content:)) Creates an instance that uniquely identifies and creates map content across updates based on the provided key path to the underlying data’s identifier.

## Creating an editable collection

- [init(_:editActions:content:)](/documentation/swiftui/foreach/init(_:editactions:content:)) Creates an instance that uniquely identifies and creates views across updates based on the identity of the underlying data.
- [init(_:id:editActions:content:)](/documentation/swiftui/foreach/init(_:id:editactions:content:)) Creates an instance that uniquely identifies and creates views across updates based on the identity of the underlying data.

## Accessing content

- [content](/documentation/swiftui/foreach/content) A function to create content on demand using the underlying data.
- [data](/documentation/swiftui/foreach/data) The collection of underlying identified data that SwiftUI uses to create views dynamically.

## Initializers

- [init(sections:content:)](/documentation/swiftui/foreach/init(sections:content:)) Creates an instance that uniquely identifies and creates views across updates based on the sections of a given view.
- [init(subviews:content:)](/documentation/swiftui/foreach/init(subviews:content:)) Creates an instance that uniquely identifies and creates views across updates based on the subviews of a given view.

## Iterating over dynamic data

- [ForEachSectionCollection](/documentation/swiftui/foreachsectioncollection)
- [ForEachSubviewCollection](/documentation/swiftui/foreachsubviewcollection)
- [DynamicViewContent](/documentation/swiftui/dynamicviewcontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
