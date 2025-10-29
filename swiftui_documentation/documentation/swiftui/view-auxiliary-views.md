---
title: Auxiliary view modifiers
description: Add and configure supporting views, like toolbars and context menus.
source: https://developer.apple.com/documentation/swiftui/view-auxiliary-views
timestamp: 2025-10-29T00:11:03.206Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Auxiliary view modifiers

> Add and configure supporting views, like toolbars and context menus.

## Overview

Use these modifiers to manage supplemental views that present context-specific controls and information. For example, you can add titles and buttons to navigation bars, manage the status bar, create context menus, and add badges many different kinds of views.

## Navigation titles

- [Configure your apps navigation titles](/documentation/swiftui/configure-your-apps-navigation-titles) Use a navigation title to display the current navigation state of an interface.
- [navigationTitle(_:)](/documentation/swiftui/view/navigationtitle(_:)) Configures the view’s title for purposes of navigation, using a string binding.
- [navigationSubtitle(_:)](/documentation/swiftui/view/navigationsubtitle(_:)) Configures the view’s subtitle for purposes of navigation.

## Navigation title configuration

- [navigationDocument(_:)](/documentation/swiftui/view/navigationdocument(_:)) Configures the view’s document for purposes of navigation.
- [navigationDocument(_:preview:)](/documentation/swiftui/view/navigationdocument(_:preview:)) Configures the view’s document for purposes of navigation.

## Navigation bars

- [navigationBarBackButtonHidden(_:)](/documentation/swiftui/view/navigationbarbackbuttonhidden(_:)) Hides the navigation bar back button for the view.
- [navigationBarTitleDisplayMode(_:)](/documentation/swiftui/view/navigationbartitledisplaymode(_:)) Configures the title display mode for this view.

## Navigation stacks and columns

- [navigationDestination(for:destination:)](/documentation/swiftui/view/navigationdestination(for:destination:)) Associates a destination view with a presented data type for use within a navigation stack.
- [navigationDestination(isPresented:destination:)](/documentation/swiftui/view/navigationdestination(ispresented:destination:)) Associates a destination view with a binding that can be used to push the view onto a .
- [navigationDestination(item:destination:)](/documentation/swiftui/view/navigationdestination(item:destination:)) Associates a destination view with a bound value for use within a navigation stack or navigation split view
- [navigationSplitViewColumnWidth(_:)](/documentation/swiftui/view/navigationsplitviewcolumnwidth(_:)) Sets a fixed, preferred width for the column containing this view.
- [navigationSplitViewColumnWidth(min:ideal:max:)](/documentation/swiftui/view/navigationsplitviewcolumnwidth(min:ideal:max:)) Sets a flexible, preferred width for the column containing this view.

## Tab views

- [tabViewCustomization(_:)](/documentation/swiftui/view/tabviewcustomization(_:)) Specifies the customizations to apply to the sidebar representation of the tab view.
- [defaultAdaptableTabBarPlacement(_:)](/documentation/swiftui/view/defaultadaptabletabbarplacement(_:)) Specifies the default placement for the tabs in a tab view using the adaptable sidebar style.
- [tabViewSidebarHeader(content:)](/documentation/swiftui/view/tabviewsidebarheader(content:)) Adds a custom header to the sidebar of a tab view.
- [tabViewSidebarFooter(content:)](/documentation/swiftui/view/tabviewsidebarfooter(content:)) Adds a custom footer to the sidebar of a tab view.
- [tabViewSidebarBottomBar(content:)](/documentation/swiftui/view/tabviewsidebarbottombar(content:)) Adds a custom bottom bar to the sidebar of a tab view.
- [sectionActions(content:)](/documentation/swiftui/view/sectionactions(content:)) Adds custom actions to a section.

## Toolbars

- [toolbar(content:)](/documentation/swiftui/view/toolbar(content:)) Populates the toolbar or navigation bar with the specified items.
- [toolbar(id:content:)](/documentation/swiftui/view/toolbar(id:content:)) Populates the toolbar or navigation bar with the specified items, allowing for user customization.
- [toolbar(_:for:)](/documentation/swiftui/view/toolbar(_:for:)) Specifies the visibility of a bar managed by SwiftUI.
- [toolbar(removing:)](/documentation/swiftui/view/toolbar(removing:)) Remove a toolbar item present by default
- [toolbarVisibility(_:for:)](/documentation/swiftui/view/toolbarvisibility(_:for:)) Specifies the visibility of a bar managed by SwiftUI.
- [toolbarBackground(_:for:)](/documentation/swiftui/view/toolbarbackground(_:for:)) Specifies the preferred shape style of the background of a bar managed by SwiftUI.
- [toolbarBackgroundVisibility(_:for:)](/documentation/swiftui/view/toolbarbackgroundvisibility(_:for:)) Specifies the preferred visibility of backgrounds on a bar managed by SwiftUI.
- [toolbarForegroundStyle(_:for:)](/documentation/swiftui/view/toolbarforegroundstyle(_:for:)) Specifies the preferred foreground style of bars managed by SwiftUI.
- [toolbarColorScheme(_:for:)](/documentation/swiftui/view/toolbarcolorscheme(_:for:)) Specifies the preferred color scheme of a bar managed by SwiftUI.
- [toolbarRole(_:)](/documentation/swiftui/view/toolbarrole(_:)) Configures the semantic role for the content populating the toolbar.
- [toolbarTitleMenu(content:)](/documentation/swiftui/view/toolbartitlemenu(content:)) Configure the title menu of a toolbar.
- [toolbarTitleDisplayMode(_:)](/documentation/swiftui/view/toolbartitledisplaymode(_:)) Configures the toolbar title display mode for this view.
- [ornament(visibility:attachmentAnchor:contentAlignment:ornament:)](/documentation/swiftui/view/ornament(visibility:attachmentanchor:contentalignment:ornament:)) Presents an ornament.

## Context menus

- [contextMenu(menuItems:)](/documentation/swiftui/view/contextmenu(menuitems:)) Adds a context menu to a view.
- [contextMenu(menuItems:preview:)](/documentation/swiftui/view/contextmenu(menuitems:preview:)) Adds a context menu with a custom preview to a view.
- [contextMenu(forSelectionType:menu:primaryAction:)](/documentation/swiftui/view/contextmenu(forselectiontype:menu:primaryaction:)) Adds an item-based context menu to a view.

## Badges

- [badge(_:)](/documentation/swiftui/view/badge(_:)) Generates a badge for the view from an integer value.
- [badgeProminence(_:)](/documentation/swiftui/view/badgeprominence(_:)) Specifies the prominence of badges created by this view.

## Help text

- [help(_:)](/documentation/swiftui/view/help(_:)) Adds help text to a view using a text view that you provide.

## Status bar

- [statusBarHidden(_:)](/documentation/swiftui/view/statusbarhidden(_:)) Sets the visibility of the status bar.

## Touch Bar

- [touchBar(content:)](/documentation/swiftui/view/touchbar(content:)) Sets the content that the Touch Bar displays.
- [touchBar(_:)](/documentation/swiftui/view/touchbar(_:)) Sets the Touch Bar content to be shown in the Touch Bar when applicable.
- [touchBarItemPrincipal(_:)](/documentation/swiftui/view/touchbaritemprincipal(_:)) Sets principal views that have special significance to this Touch Bar.
- [touchBarCustomizationLabel(_:)](/documentation/swiftui/view/touchbarcustomizationlabel(_:)) Sets a user-visible string that identifies the view’s functionality.
- [touchBarItemPresence(_:)](/documentation/swiftui/view/touchbaritempresence(_:)) Sets the behavior of the user-customized view.

## Configuring view elements

- [Accessibility modifiers](/documentation/swiftui/view-accessibility)
- [Appearance modifiers](/documentation/swiftui/view-appearance)
- [Text and symbol modifiers](/documentation/swiftui/view-text-and-symbols)
- [Chart view modifiers](/documentation/swiftui/view-chart-view)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
