---
title: init(_:)
description: Creates labeled content based on a labeled content style configuration.
source: https://developer.apple.com/documentation/swiftui/labeledcontent/init(_:)
timestamp: 2025-10-29T00:11:01.117Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [labeledcontent](/documentation/swiftui/labeledcontent)

**Initializer**

# init(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates labeled content based on a labeled content style configuration.

```swift
init(_ configuration: LabeledContentStyleConfiguration)
```

## Parameters

**configuration**

The properties of the labeled content



## Discussion

You can use this initializer within the [makeBody(configuration:)](/documentation/swiftui/labeledcontentstyle/makebody(configuration:)) method of a [Labeled Content Style](/documentation/swiftui/labeledcontentstyle) to create a labeled content instance. This is useful for custom styles that only modify the current style, as opposed to implementing a brand new style.

For example, the following style adds a red border around the labeled content, but otherwise preserves the current style:

```swift
struct RedBorderLabeledContentStyle: LabeledContentStyle {
    func makeBody(configuration: Configuration) -> some View {
        LabeledContent(configuration)
            .border(.red)
    }
}
```

## Creating labeled content

- [init(_:content:)](/documentation/swiftui/labeledcontent/init(_:content:))
- [init(content:label:)](/documentation/swiftui/labeledcontent/init(content:label:))
- [init(_:value:)](/documentation/swiftui/labeledcontent/init(_:value:))
- [init(_:value:format:)](/documentation/swiftui/labeledcontent/init(_:value:format:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
