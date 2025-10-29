---
title: Lists
description: Display a structured, scrollable column of information.
source: https://developer.apple.com/documentation/swiftui/lists
timestamp: 2025-10-29T00:14:18.009Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Lists

> Display a structured, scrollable column of information.

## Overview

Use a list to display a one-dimensional vertical collection of views.



The list is a complex container type that automatically provides scrolling when it grows too large for the current display. You build a list by providing it with individual views for the rows in the list, or by using a [For Each](/documentation/swiftui/foreach) to enumerate a group of rows. You can also mix these strategies, blending any number of individual views and `ForEach` constructs.

Use view modifiers to configure the appearance and behavior of a list and its rows, headers, sections, and separators. For example, you can apply a style to the list, add swipe gestures to individual rows, or make the list refreshable with a pull-down gesture. You can also use the configuration associated with [Scroll](/documentation/swiftui/scroll-views) to control the list’s implicit scrolling behavior.

For design guidance, see [lists-and](/design/Human-Interface-Guidelines/lists-and-tables) in the Human Interface Guidelines.

## Creating a list

- [Displaying data in lists](/documentation/swiftui/displaying-data-in-lists) Visualize collections of data with platform-appropriate appearance.
- [List](/documentation/swiftui/list) A container that presents rows of data arranged in a single column, optionally providing the ability to select one or more members.
- [listStyle(_:)](/documentation/swiftui/view/liststyle(_:)) Sets the style for lists within this view.

## Disclosing information progressively

- [OutlineGroup](/documentation/swiftui/outlinegroup) A structure that computes views and disclosure groups on demand from an underlying collection of tree-structured, identified data.
- [DisclosureGroup](/documentation/swiftui/disclosuregroup) A view that shows or hides another content view, based on the state of a disclosure control.
- [disclosureGroupStyle(_:)](/documentation/swiftui/view/disclosuregroupstyle(_:)) Sets the style for disclosure groups within this view.

## Configuring a list’s layout

- [listRowInsets(_:)](/documentation/swiftui/view/listrowinsets(_:)) Applies an inset to the rows in a list.
- [defaultMinListRowHeight](/documentation/swiftui/environmentvalues/defaultminlistrowheight) The default minimum height of rows in a list.
- [defaultMinListHeaderHeight](/documentation/swiftui/environmentvalues/defaultminlistheaderheight) The default minimum height of a header in a list.
- [listRowSpacing(_:)](/documentation/swiftui/view/listrowspacing(_:)) Sets the vertical spacing between two adjacent rows in a List.
- [listSectionSpacing(_:)](/documentation/swiftui/view/listsectionspacing(_:)) Sets the spacing between adjacent sections in a  to a custom value.
- [ListSectionSpacing](/documentation/swiftui/listsectionspacing) The spacing options between two adjacent sections in a list.
- [listSectionMargins(_:_:)](/documentation/swiftui/view/listsectionmargins(_:_:)) Set the section margins for the specific edges.

## Configuring rows

- [listItemTint(_:)](/documentation/swiftui/view/listitemtint(_:)) Sets a fixed tint color for content in a list.
- [ListItemTint](/documentation/swiftui/listitemtint) A tint effect configuration that you can apply to content in a list.

## Configuring headers

- [headerProminence(_:)](/documentation/swiftui/view/headerprominence(_:)) Sets the header prominence for this view.
- [headerProminence](/documentation/swiftui/environmentvalues/headerprominence) The prominence to apply to section headers within a view.
- [Prominence](/documentation/swiftui/prominence) A type indicating the prominence of a view hierarchy.

## Configuring separators

- [listRowSeparatorTint(_:edges:)](/documentation/swiftui/view/listrowseparatortint(_:edges:)) Sets the tint color associated with a row.
- [listSectionSeparatorTint(_:edges:)](/documentation/swiftui/view/listsectionseparatortint(_:edges:)) Sets the tint color associated with a section.
- [listRowSeparator(_:edges:)](/documentation/swiftui/view/listrowseparator(_:edges:)) Sets the display mode for the separator associated with this specific row.
- [listSectionSeparator(_:edges:)](/documentation/swiftui/view/listsectionseparator(_:edges:)) Sets whether to hide the separator associated with a list section.

## Configuring backgrounds

- [listRowBackground(_:)](/documentation/swiftui/view/listrowbackground(_:)) Places a custom background view behind a list row item.
- [alternatingRowBackgrounds(_:)](/documentation/swiftui/view/alternatingrowbackgrounds(_:)) Overrides whether lists and tables in this view have alternating row backgrounds.
- [AlternatingRowBackgroundBehavior](/documentation/swiftui/alternatingrowbackgroundbehavior) The styling of views with respect to alternating row backgrounds.
- [backgroundProminence](/documentation/swiftui/environmentvalues/backgroundprominence) The prominence of the background underneath views associated with this environment.
- [BackgroundProminence](/documentation/swiftui/backgroundprominence) The prominence of backgrounds underneath other views.

## Displaying a badge on a list item

- [badge(_:)](/documentation/swiftui/view/badge(_:)) Generates a badge for the view from an integer value.
- [badgeProminence(_:)](/documentation/swiftui/view/badgeprominence(_:)) Specifies the prominence of badges created by this view.
- [badgeProminence](/documentation/swiftui/environmentvalues/badgeprominence) The prominence to apply to badges associated with this environment.
- [BadgeProminence](/documentation/swiftui/badgeprominence) The visual prominence of a badge.

## Configuring interaction

- [swipeActions(edge:allowsFullSwipe:content:)](/documentation/swiftui/view/swipeactions(edge:allowsfullswipe:content:)) Adds custom swipe actions to a row in a list.
- [selectionDisabled(_:)](/documentation/swiftui/view/selectiondisabled(_:)) Adds a condition that controls whether users can select this view.
- [listRowHoverEffect(_:)](/documentation/swiftui/view/listrowhovereffect(_:)) Requests that the containing list row use the provided hover effect.
- [listRowHoverEffectDisabled(_:)](/documentation/swiftui/view/listrowhovereffectdisabled(_:)) Requests that the containing list row have its hover effect disabled.

## Refreshing a list’s content

- [refreshable(action:)](/documentation/swiftui/view/refreshable(action:)) Marks this view as refreshable.
- [refresh](/documentation/swiftui/environmentvalues/refresh) A refresh action stored in a view’s environment.
- [RefreshAction](/documentation/swiftui/refreshaction) An action that initiates a refresh operation.

## Editing a list

- [moveDisabled(_:)](/documentation/swiftui/view/movedisabled(_:)) Adds a condition for whether the view’s view hierarchy is movable.
- [deleteDisabled(_:)](/documentation/swiftui/view/deletedisabled(_:)) Adds a condition for whether the view’s view hierarchy is deletable.
- [editMode](/documentation/swiftui/environmentvalues/editmode) An indication of whether the user can edit the contents of a view associated with this environment.
- [EditMode](/documentation/swiftui/editmode) A mode that indicates whether the user can edit a view’s content.
- [EditActions](/documentation/swiftui/editactions) A set of edit actions on a collection of data that a view can offer to a user.
- [EditableCollectionContent](/documentation/swiftui/editablecollectioncontent) An opaque wrapper view that adds editing capabilities to a row in a list.
- [IndexedIdentifierCollection](/documentation/swiftui/indexedidentifiercollection) A collection wrapper that iterates over the indices and identifiers of a collection together.

## Configuring a section index

- [listSectionIndexVisibility(_:)](/documentation/swiftui/view/listsectionindexvisibility(_:)) Changes the visibility of the list section index.
- [sectionIndexLabel(_:)](/documentation/swiftui/view/sectionindexlabel(_:)) Sets the label that is used in a section index to point to this section, typically only a single character long.

## View layout

- [Layout fundamentals](/documentation/swiftui/layout-fundamentals)
- [Layout adjustments](/documentation/swiftui/layout-adjustments)
- [Custom layout](/documentation/swiftui/custom-layout)
- [Tables](/documentation/swiftui/tables)
- [View groupings](/documentation/swiftui/view-groupings)
- [Scroll views](/documentation/swiftui/scroll-views)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
