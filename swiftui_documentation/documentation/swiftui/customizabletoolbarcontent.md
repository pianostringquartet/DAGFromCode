---
title: CustomizableToolbarContent
description: Conforming types represent items that can be placed in various locations in a customizable toolbar.
source: https://developer.apple.com/documentation/swiftui/customizabletoolbarcontent
timestamp: 2025-10-29T00:10:37.812Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# CustomizableToolbarContent

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Conforming types represent items that can be placed in various locations in a customizable toolbar.

```swift
protocol CustomizableToolbarContent : ToolbarContent where Self.Body : CustomizableToolbarContent
```

## Inherits From

- [ToolbarContent](/documentation/swiftui/toolbarcontent)

## Conforming Types

- [Group](/documentation/swiftui/group)
- [ToolbarItem](/documentation/swiftui/toolbaritem)
- [ToolbarSpacer](/documentation/swiftui/toolbarspacer)
- [ToolbarTitleMenu](/documentation/swiftui/toolbartitlemenu)

## Using default options

- [defaultCustomization()](/documentation/swiftui/customizabletoolbarcontent/defaultcustomization()) Configures customizable toolbar content with the default visibility and options.
- [defaultCustomization(_:options:)](/documentation/swiftui/customizabletoolbarcontent/defaultcustomization(_:options:)) Configures the way customizable toolbar items with the default behavior behave.

## Customizing the behavior

- [customizationBehavior(_:)](/documentation/swiftui/customizabletoolbarcontent/customizationbehavior(_:)) Configures the customization behavior of customizable toolbar content.

## Instance Methods

- [hidden(_:)](/documentation/swiftui/customizabletoolbarcontent/hidden(_:)) Hides a toolbar item within its toolbar.
- [matchedTransitionSource(id:in:)](/documentation/swiftui/customizabletoolbarcontent/matchedtransitionsource(id:in:)) Identifies this toolbar content as the source of a navigation transition, such as a zoom transition.
- [sharedBackgroundVisibility(_:)](/documentation/swiftui/customizabletoolbarcontent/sharedbackgroundvisibility(_:)) Controls the visibility of the glass background effect on items in the toolbar. In certain contexts, such as the navigation bar on iOS and the window toolbar on macOS, toolbar items will be given a glass background effect that is shared with other items in the same logical grouping.

## Populating a customizable toolbar

- [toolbar(id:content:)](/documentation/swiftui/view/toolbar(id:content:))
- [ToolbarCustomizationBehavior](/documentation/swiftui/toolbarcustomizationbehavior)
- [ToolbarCustomizationOptions](/documentation/swiftui/toolbarcustomizationoptions)
- [SearchToolbarBehavior](/documentation/swiftui/searchtoolbarbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
