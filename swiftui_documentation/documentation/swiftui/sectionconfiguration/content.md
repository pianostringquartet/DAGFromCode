---
title: content
description: The contents of the section body.
source: https://developer.apple.com/documentation/swiftui/sectionconfiguration/content
timestamp: 2025-10-29T00:10:47.192Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sectionconfiguration](/documentation/swiftui/sectionconfiguration)

**Instance Property**

# content

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The contents of the section body.

```swift
var content: SubviewsCollection { get }
```

## Discussion

Notably, the section’s content is a `SubviewsCollection`, not a `Subview`, as it can be made up of multiple subviews. That means in most cases, the subviews collection should be treated as a collection (either indexed into, or used with a `ForEach`), or the subviews collection should be wrapped in a container view, like a layout, or other custom container:

```swift
PinboardSectionsLayout {
    ForEach(sections: content) { section in
        VStack {
            section.content
        }
    }
}
```

Here, we want to create one view for `PinboardSectionsLayout` to place per section in content. To do that, we surround the `ForEach` body in another container, a `VStack` layout, ensuring the different subviews of section.content are treated as a single view by the surrounding layout.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
