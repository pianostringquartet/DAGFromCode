---
title: TabContent
description: A type that provides content for programmatically selectable tabs in a tab view.
source: https://developer.apple.com/documentation/swiftui/tabcontent
timestamp: 2025-10-29T00:09:42.972Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# TabContent

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A type that provides content for programmatically selectable tabs in a tab view.

```swift
@MainActor @preconcurrency protocol TabContent<TabValue>
```

## Overview

A type conforming to this protocol inherits `@preconcurrency @MainActor` isolation from the protocol if the conformance is included in the type’s base declaration:

```swift
struct MyCustomType: Transition {
    // `@preconcurrency @MainActor` isolation by default
}
```

Isolation to the main actor is the default, but it’s not required. Declare the conformance in an extension to opt out of main actor isolation:

```swift
extension MyCustomType: Transition {
    // `nonisolated` by default
}
```

## Conforming Types

- [AnyTabContent](/documentation/swiftui/anytabcontent)
- [ForEach](/documentation/swiftui/foreach)
- [Group](/documentation/swiftui/group)
- [Tab](/documentation/swiftui/tab)
- [TabSection](/documentation/swiftui/tabsection)

## Associated Types

- [Body](/documentation/swiftui/tabcontent/body-swift.associatedtype) The type of content representing the body of this content type.
- [TabValue](/documentation/swiftui/tabcontent/tabvalue) The type used to drive selection for the containing tab view.

## Instance Properties

- [body](/documentation/swiftui/tabcontent/body-swift.property) The value of this type’s nested content.

## Instance Methods

- [accessibilityHint(_:isEnabled:)](/documentation/swiftui/tabcontent/accessibilityhint(_:isenabled:)) Communicates to the user what happens after selecting the tab.
- [accessibilityIdentifier(_:isEnabled:)](/documentation/swiftui/tabcontent/accessibilityidentifier(_:isenabled:)) Uses the string you specify to identify the view. Use this value for testing. It isn’t visible to the user.
- [accessibilityInputLabels(_:isEnabled:)](/documentation/swiftui/tabcontent/accessibilityinputlabels(_:isenabled:)) Sets alternate input labels with which users identify a tab.
- [accessibilityLabel(_:isEnabled:)](/documentation/swiftui/tabcontent/accessibilitylabel(_:isenabled:)) Adds a label to the tab that describes its contents.
- [accessibilityValue(_:isEnabled:)](/documentation/swiftui/tabcontent/accessibilityvalue(_:isenabled:)) Adds a textual description of the value that the tab contains.
- [badge(_:)](/documentation/swiftui/tabcontent/badge(_:)) Generates a badge for a tab from an integer value.
- [contextMenu(menuItems:)](/documentation/swiftui/tabcontent/contextmenu(menuitems:)) Adds a context menu to a tab.
- [customizationBehavior(_:for:)](/documentation/swiftui/tabcontent/customizationbehavior(_:for:)) Configures the customization behavior of customizable tab view content.
- [customizationID(_:)](/documentation/swiftui/tabcontent/customizationid(_:)) Sets the identifier for a tab to persist its state.
- [defaultVisibility(_:for:)](/documentation/swiftui/tabcontent/defaultvisibility(_:for:)) Configures the default visibility of a tab in customizable contexts.
- [disabled(_:)](/documentation/swiftui/tabcontent/disabled(_:)) Controls whether users can interact with this tab.
- [draggable(_:)](/documentation/swiftui/tabcontent/draggable(_:)) Activates this tab as the source of a drag and drop operation. This tab can only be dragged when in the sidebar.
- [dropDestination(for:action:)](/documentation/swiftui/tabcontent/dropdestination(for:action:)) Defines the destination of a drag and drop operation that handles the dropped content with a closure that you specify.
- [hidden(_:)](/documentation/swiftui/tabcontent/hidden(_:)) Hides the tab from the user.
- [popover(isPresented:attachmentAnchor:arrowEdge:content:)](/documentation/swiftui/tabcontent/popover(ispresented:attachmentanchor:arrowedge:content:)) Presents a popover when a given condition is true.
- [popover(item:attachmentAnchor:arrowEdge:content:)](/documentation/swiftui/tabcontent/popover(item:attachmentanchor:arrowedge:content:)) Presents a popover using the given item as a data source for the popover’s content.
- [sectionActions(content:)](/documentation/swiftui/tabcontent/sectionactions(content:)) Adds custom actions to a tab section.
- [springLoadingBehavior(_:)](/documentation/swiftui/tabcontent/springloadingbehavior(_:)) Sets the spring loading behavior for the tab.
- [swipeActions(edge:allowsFullSwipe:content:)](/documentation/swiftui/tabcontent/swipeactions(edge:allowsfullswipe:content:)) Adds custom swipe actions to a tab in a tab view.
- [tabPlacement(_:)](/documentation/swiftui/tabcontent/tabplacement(_:)) Specifies the placement of a tab.

## Configuring a tab

- [sectionActions(content:)](/documentation/swiftui/view/sectionactions(content:))
- [TabPlacement](/documentation/swiftui/tabplacement)
- [TabContentBuilder](/documentation/swiftui/tabcontentbuilder)
- [AnyTabContent](/documentation/swiftui/anytabcontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
