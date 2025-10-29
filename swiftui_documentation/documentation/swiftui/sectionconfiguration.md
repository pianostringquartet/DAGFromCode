---
title: SectionConfiguration
description: Specifies the contents of a section.
source: https://developer.apple.com/documentation/swiftui/sectionconfiguration
timestamp: 2025-10-29T00:13:20.834Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SectionConfiguration

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Specifies the contents of a section.

```swift
struct SectionConfiguration
```

## Overview

A `SectionConfiguration` includes the content of the section, as well as its header and footer.

A `SectionConfiguration` can represent either an explicit section, or groups of sibling views that are not explicitly wrapped in a section.

Notably, the `header`, `footer` and `content` properties of a `SectionConfiguration` are all `SubviewsCollection`s as they can be made up of multiple subviews. That means in most cases, the subviews collection should be treated as a collection (either indexed into, or used with a `ForEach`), or the subviews collection should be wrapped in a container view, like a layout, or other custom container:

```swift
PinboardSectionsLayout {
    ForEach(sections: content) { section in
        VStack {
            HStack { section.header }
            section.content
            HStack { section.footer }
        }
    }
}
```

Here, we want to create one view for `PinboardSectionsLayout` to place per section in content. To do that, we surround the `ForEach` body in another container, a `VStack` layout, ensuring the different subviews of section.content are treated as a single view by the surrounding layout. Additionally, surrounding the header and footer in an `HStack` layout avoids vertically stacking subviews of the header and footer which we want visually grouped together.

## Conforms To

- [Identifiable](/documentation/Swift/Identifiable)

## Structures

- [SectionConfiguration.Actions](/documentation/swiftui/sectionconfiguration/actions-swift.struct) The type-erased actions of a section.
- [SectionConfiguration.ID](/documentation/swiftui/sectionconfiguration/id-swift.struct) A unique identifier for a section.

## Instance Properties

- [actions](/documentation/swiftui/sectionconfiguration/actions-swift.property) Custom actions associated with a section.
- [containerValues](/documentation/swiftui/sectionconfiguration/containervalues) The container values associated with the given section.
- [content](/documentation/swiftui/sectionconfiguration/content) The contents of the section body.
- [footer](/documentation/swiftui/sectionconfiguration/footer) The contents of the section footer.
- [header](/documentation/swiftui/sectionconfiguration/header) The contents of the section header.
- [id](/documentation/swiftui/sectionconfiguration/id-swift.property) A unique identifier representing the section.

## Organizing views into sections

- [Section](/documentation/swiftui/section)
- [SectionCollection](/documentation/swiftui/sectioncollection)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
