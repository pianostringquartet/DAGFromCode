---
title: init(_:value:)
description: Creates a labeled informational view.
source: https://developer.apple.com/documentation/swiftui/labeledcontent/init(_:value:)
timestamp: 2025-10-29T00:12:52.241Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [labeledcontent](/documentation/swiftui/labeledcontent)

**Initializer**

# init(_:value:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a labeled informational view.

```swift
init<S1, S2>(_ title: S1, value: S2) where S1 : StringProtocol, S2 : StringProtocol
```

## Parameters

**title**

A string that describes the purpose of the view.



**value**

The value being labeled.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) label on your behalf, and treats the title similar to [init(_:)](/documentation/swiftui/text/init(_:)). See `Text` for more information about localizing strings.

```swift
Form {
    ForEach(person.pet) { pet in
        LabeledContent(pet.species, value: pet.name)
    }
}
```

## Creating labeled content

- [init(_:content:)](/documentation/swiftui/labeledcontent/init(_:content:))
- [init(content:label:)](/documentation/swiftui/labeledcontent/init(content:label:))
- [init(_:value:format:)](/documentation/swiftui/labeledcontent/init(_:value:format:))
- [init(_:)](/documentation/swiftui/labeledcontent/init(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
