---
title: View groupings
description: Present views in different kinds of purpose-driven containers, like forms or control groups.
source: https://developer.apple.com/documentation/swiftui/view-groupings
timestamp: 2025-10-29T00:14:36.617Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# View groupings

> Present views in different kinds of purpose-driven containers, like forms or control groups.

## Overview

You can create groups of views that serve different purposes.



For example, a [Group](/documentation/swiftui/group) construct treats the specified views as a unit without imposing any additional layout or appearance characteristics. A [Form](/documentation/swiftui/form) presents a group of elements with a platform-specific appearance that’s suitable for gathering input from people.

For design guidance, see [layout](/design/Human-Interface-Guidelines/layout) in the Human Interface Guidelines.

## Grouping views into a container

- [Creating custom container views](/documentation/swiftui/creating-custom-container-views) Access individual subviews to compose flexible container views.
- [Group](/documentation/swiftui/group) A type that collects multiple instances of a content type — like views, scenes, or commands — into a single unit.
- [GroupElementsOfContent](/documentation/swiftui/groupelementsofcontent) Transforms the subviews of a given view into a resulting content view.
- [GroupSectionsOfContent](/documentation/swiftui/groupsectionsofcontent) Transforms the sections of a given view into a resulting content view.

## Organizing views into sections

- [Section](/documentation/swiftui/section) A container view that you can use to add hierarchy within certain views.
- [SectionCollection](/documentation/swiftui/sectioncollection) An opaque collection representing the sections of view.
- [SectionConfiguration](/documentation/swiftui/sectionconfiguration) Specifies the contents of a section.

## Iterating over dynamic data

- [ForEach](/documentation/swiftui/foreach) A structure that computes views on demand from an underlying collection of identified data.
- [ForEachSectionCollection](/documentation/swiftui/foreachsectioncollection) A collection which allows a view to be treated as a collection of its sections in a for each loop.
- [ForEachSubviewCollection](/documentation/swiftui/foreachsubviewcollection) A collection which allows a view to be treated as a collection of its subviews in a for each loop.
- [DynamicViewContent](/documentation/swiftui/dynamicviewcontent) A type of view that generates views from an underlying collection of data.

## Accessing a container’s subviews

- [Subview](/documentation/swiftui/subview) An opaque value representing a subview of another view.
- [SubviewsCollection](/documentation/swiftui/subviewscollection) An opaque collection representing the subviews of view.
- [SubviewsCollectionSlice](/documentation/swiftui/subviewscollectionslice) A slice of a SubviewsCollection.
- [containerValue(_:_:)](/documentation/swiftui/view/containervalue(_:_:)) Sets a particular container value of a view.
- [ContainerValues](/documentation/swiftui/containervalues) A collection of container values associated with a given view.
- [ContainerValueKey](/documentation/swiftui/containervaluekey) A key for accessing container values.

## Grouping views into a box

- [GroupBox](/documentation/swiftui/groupbox) A stylized view, with an optional label, that visually collects a logical grouping of content.
- [groupBoxStyle(_:)](/documentation/swiftui/view/groupboxstyle(_:)) Sets the style for group boxes within this view.

## Grouping inputs

- [Form](/documentation/swiftui/form) A container for grouping controls used for data entry, such as in settings or inspectors.
- [formStyle(_:)](/documentation/swiftui/view/formstyle(_:)) Sets the style for forms in a view hierarchy.
- [LabeledContent](/documentation/swiftui/labeledcontent) A container for attaching a label to a value-bearing view.
- [labeledContentStyle(_:)](/documentation/swiftui/view/labeledcontentstyle(_:)) Sets a style for labeled content.

## Presenting a group of controls

- [ControlGroup](/documentation/swiftui/controlgroup) A container view that displays semantically-related controls in a visually-appropriate manner for the context
- [controlGroupStyle(_:)](/documentation/swiftui/view/controlgroupstyle(_:)) Sets the style for control groups within this view.

## View layout

- [Layout fundamentals](/documentation/swiftui/layout-fundamentals)
- [Layout adjustments](/documentation/swiftui/layout-adjustments)
- [Custom layout](/documentation/swiftui/custom-layout)
- [Lists](/documentation/swiftui/lists)
- [Tables](/documentation/swiftui/tables)
- [Scroll views](/documentation/swiftui/scroll-views)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
