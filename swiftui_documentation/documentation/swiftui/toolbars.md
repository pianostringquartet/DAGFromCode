---
title: Toolbars
description: Provide immediate access to frequently used commands and controls.
source: https://developer.apple.com/documentation/swiftui/toolbars
timestamp: 2025-10-29T00:13:02.261Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Toolbars

> Provide immediate access to frequently used commands and controls.

## Overview

The system might present toolbars above or below your app’s content, depending on the platform and the context.



Add items to a toolbar by applying the [toolbar(content:)](/documentation/swiftui/view/toolbar(content:)) view modifier to a view in your app. You can also configure the toolbar using view modifiers. For example, you can set the visibility of a toolbar with the [toolbar(_:for:)](/documentation/swiftui/view/toolbar(_:for:)) modifier.

For design guidance, see [toolbars](/design/Human-Interface-Guidelines/toolbars) in the Human Interface Guidelines.

## Populating a toolbar

- [toolbar(content:)](/documentation/swiftui/view/toolbar(content:)) Populates the toolbar or navigation bar with the specified items.
- [ToolbarItem](/documentation/swiftui/toolbaritem) A model that represents an item which can be placed in the toolbar or navigation bar.
- [ToolbarItemGroup](/documentation/swiftui/toolbaritemgroup) A model that represents a group of s which can be placed in the toolbar or navigation bar.
- [ToolbarItemPlacement](/documentation/swiftui/toolbaritemplacement) A structure that defines the placement of a toolbar item.
- [ToolbarContent](/documentation/swiftui/toolbarcontent) Conforming types represent items that can be placed in various locations in a toolbar.
- [ToolbarContentBuilder](/documentation/swiftui/toolbarcontentbuilder) Constructs a toolbar item set from multi-expression closures.
- [ToolbarSpacer](/documentation/swiftui/toolbarspacer) A standard space item in toolbars.
- [DefaultToolbarItem](/documentation/swiftui/defaulttoolbaritem) A toolbar item that represents a system component.

## Populating a customizable toolbar

- [toolbar(id:content:)](/documentation/swiftui/view/toolbar(id:content:)) Populates the toolbar or navigation bar with the specified items, allowing for user customization.
- [CustomizableToolbarContent](/documentation/swiftui/customizabletoolbarcontent) Conforming types represent items that can be placed in various locations in a customizable toolbar.
- [ToolbarCustomizationBehavior](/documentation/swiftui/toolbarcustomizationbehavior) The customization behavior of customizable toolbar content.
- [ToolbarCustomizationOptions](/documentation/swiftui/toolbarcustomizationoptions) Options that influence the default customization behavior of customizable toolbar content.
- [SearchToolbarBehavior](/documentation/swiftui/searchtoolbarbehavior) The behavior of a search field in a toolbar.

## Removing default items

- [toolbar(removing:)](/documentation/swiftui/view/toolbar(removing:)) Remove a toolbar item present by default
- [ToolbarDefaultItemKind](/documentation/swiftui/toolbardefaultitemkind) A kind of toolbar item a  adds by default.

## Setting toolbar visibility

- [toolbar(_:for:)](/documentation/swiftui/view/toolbar(_:for:)) Specifies the visibility of a bar managed by SwiftUI.
- [toolbarVisibility(_:for:)](/documentation/swiftui/view/toolbarvisibility(_:for:)) Specifies the visibility of a bar managed by SwiftUI.
- [toolbarBackgroundVisibility(_:for:)](/documentation/swiftui/view/toolbarbackgroundvisibility(_:for:)) Specifies the preferred visibility of backgrounds on a bar managed by SwiftUI.
- [ToolbarPlacement](/documentation/swiftui/toolbarplacement) The placement of a toolbar.
- [ContentToolbarPlacement](/documentation/swiftui/contenttoolbarplacement)

## Specifying the role of toolbar content

- [toolbarRole(_:)](/documentation/swiftui/view/toolbarrole(_:)) Configures the semantic role for the content populating the toolbar.
- [ToolbarRole](/documentation/swiftui/toolbarrole) The purpose of content that populates the toolbar.

## Styling a toolbar

- [toolbarBackground(_:for:)](/documentation/swiftui/view/toolbarbackground(_:for:)) Specifies the preferred shape style of the background of a bar managed by SwiftUI.
- [toolbarColorScheme(_:for:)](/documentation/swiftui/view/toolbarcolorscheme(_:for:)) Specifies the preferred color scheme of a bar managed by SwiftUI.
- [toolbarForegroundStyle(_:for:)](/documentation/swiftui/view/toolbarforegroundstyle(_:for:)) Specifies the preferred foreground style of bars managed by SwiftUI.
- [windowToolbarStyle(_:)](/documentation/swiftui/scene/windowtoolbarstyle(_:)) Sets the style for the toolbar defined within this scene.
- [WindowToolbarStyle](/documentation/swiftui/windowtoolbarstyle) A specification for the appearance and behavior of a window’s toolbar.
- [toolbarLabelStyle](/documentation/swiftui/environmentvalues/toolbarlabelstyle) The label style to apply to controls within a toolbar.
- [ToolbarLabelStyle](/documentation/swiftui/toolbarlabelstyle) The label style of a toolbar.
- [SpacerSizing](/documentation/swiftui/spacersizing) A type which defines how spacers should size themselves.

## Configuring the toolbar title display mode

- [toolbarTitleDisplayMode(_:)](/documentation/swiftui/view/toolbartitledisplaymode(_:)) Configures the toolbar title display mode for this view.
- [ToolbarTitleDisplayMode](/documentation/swiftui/toolbartitledisplaymode) A type that defines the behavior of title of a toolbar.

## Setting the toolbar title menu

- [toolbarTitleMenu(content:)](/documentation/swiftui/view/toolbartitlemenu(content:)) Configure the title menu of a toolbar.
- [ToolbarTitleMenu](/documentation/swiftui/toolbartitlemenu) The title menu of a toolbar.

## Creating an ornament

- [ornament(visibility:attachmentAnchor:contentAlignment:ornament:)](/documentation/swiftui/view/ornament(visibility:attachmentanchor:contentalignment:ornament:)) Presents an ornament.
- [OrnamentAttachmentAnchor](/documentation/swiftui/ornamentattachmentanchor) An attachment anchor for an ornament.

## App structure

- [App organization](/documentation/swiftui/app-organization)
- [Scenes](/documentation/swiftui/scenes)
- [Windows](/documentation/swiftui/windows)
- [Immersive spaces](/documentation/swiftui/immersive-spaces)
- [Documents](/documentation/swiftui/documents)
- [Navigation](/documentation/swiftui/navigation)
- [Modal presentations](/documentation/swiftui/modal-presentations)
- [Search](/documentation/swiftui/search)
- [App extensions](/documentation/swiftui/app-extensions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
