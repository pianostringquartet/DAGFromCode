---
title: footer
description: The contents of the section footer.
source: https://developer.apple.com/documentation/swiftui/sectionconfiguration/footer
timestamp: 2025-10-29T00:15:00.923Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sectionconfiguration](/documentation/swiftui/sectionconfiguration)

**Instance Property**

# footer

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The contents of the section footer.

```swift
var footer: SubviewsCollection { get }
```

## Discussion

Notably, the section’s footer is a `SubviewsCollection`, not a `Subview`, as it can be made up of multiple subviews. That means in most cases, the subviews collection should be treated as a collection (either indexed into, or used with a `ForEach`), or the subviews collection should be wrapped in a container view, like a layout, or other custom container:

```swift
ForEach(sections: content) {
    VStack {
        HStack { section.header }
        HStack { section.footer }
    }
}
```

Here, we surround the header and footer in an `HStack` layout to avoid vertically stacking the subviews of the header and footer which we want visually grouped together. Additionally, we surround the `ForEach` body in a VStack, so it is treated as a single view by containers it gets passed to.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
