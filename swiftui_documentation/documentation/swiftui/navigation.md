---
title: Navigation
description: Enable people to move between different parts of your app’s view hierarchy within a scene.
source: https://developer.apple.com/documentation/swiftui/navigation
timestamp: 2025-10-29T00:14:51.510Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Navigation

> Enable people to move between different parts of your app’s view hierarchy within a scene.

## Overview

Use navigation containers to provide structure to your app’s user interface, enabling people to easily move among the parts of your app.



For example, people can move forward and backward through a stack of views using a [Navigation Stack](/documentation/swiftui/navigationstack), or choose which view to display from a tab bar using a [Tab View](/documentation/swiftui/tabview).

Configure navigation containers by adding view modifiers like [navigationSplitViewStyle(_:)](/documentation/swiftui/view/navigationsplitviewstyle(_:)) to the container. Use other modifiers on the views inside the container to affect the container’s behavior when showing that view. For example, you can use [navigationTitle(_:)](/documentation/swiftui/view/navigationtitle(_:)) on a view to provide a toolbar title to display when showing that view.

## Essentials

- [Understanding the navigation stack](/documentation/swiftui/understanding-the-composition-of-navigation-stack) Learn about the navigation stack, links, and how to manage navigation types in your app’s structure.

## Presenting views in columns

- [Bringing robust navigation structure to your SwiftUI app](/documentation/swiftui/bringing-robust-navigation-structure-to-your-swiftui-app) Use navigation links, stacks, destinations, and paths to provide a streamlined experience for all platforms, as well as behaviors such as deep linking and state restoration.
- [Migrating to new navigation types](/documentation/swiftui/migrating-to-new-navigation-types) Improve navigation behavior in your app by replacing navigation views with navigation stacks and navigation split views.
- [NavigationSplitView](/documentation/swiftui/navigationsplitview) A view that presents views in two or three columns, where selections in leading columns control presentations in subsequent columns.
- [navigationSplitViewStyle(_:)](/documentation/swiftui/view/navigationsplitviewstyle(_:)) Sets the style for navigation split views within this view.
- [navigationSplitViewColumnWidth(_:)](/documentation/swiftui/view/navigationsplitviewcolumnwidth(_:)) Sets a fixed, preferred width for the column containing this view.
- [navigationSplitViewColumnWidth(min:ideal:max:)](/documentation/swiftui/view/navigationsplitviewcolumnwidth(min:ideal:max:)) Sets a flexible, preferred width for the column containing this view.
- [NavigationSplitViewVisibility](/documentation/swiftui/navigationsplitviewvisibility) The visibility of the leading columns in a navigation split view.
- [NavigationLink](/documentation/swiftui/navigationlink) A view that controls a navigation presentation.

## Stacking views in one column

- [NavigationStack](/documentation/swiftui/navigationstack) A view that displays a root view and enables you to present additional views over the root view.
- [NavigationPath](/documentation/swiftui/navigationpath) A type-erased list of data representing the content of a navigation stack.
- [navigationDestination(for:destination:)](/documentation/swiftui/view/navigationdestination(for:destination:)) Associates a destination view with a presented data type for use within a navigation stack.
- [navigationDestination(isPresented:destination:)](/documentation/swiftui/view/navigationdestination(ispresented:destination:)) Associates a destination view with a binding that can be used to push the view onto a .
- [navigationDestination(item:destination:)](/documentation/swiftui/view/navigationdestination(item:destination:)) Associates a destination view with a bound value for use within a navigation stack or navigation split view

## Managing column collapse

- [NavigationSplitViewColumn](/documentation/swiftui/navigationsplitviewcolumn) A view that represents a column in a navigation split view.

## Setting titles for navigation content

- [navigationTitle(_:)](/documentation/swiftui/view/navigationtitle(_:)) Configures the view’s title for purposes of navigation, using a string binding.
- [navigationSubtitle(_:)](/documentation/swiftui/view/navigationsubtitle(_:)) Configures the view’s subtitle for purposes of navigation.
- [navigationDocument(_:)](/documentation/swiftui/view/navigationdocument(_:)) Configures the view’s document for purposes of navigation.
- [navigationDocument(_:preview:)](/documentation/swiftui/view/navigationdocument(_:preview:)) Configures the view’s document for purposes of navigation.

## Configuring the navigation bar

- [navigationBarBackButtonHidden(_:)](/documentation/swiftui/view/navigationbarbackbuttonhidden(_:)) Hides the navigation bar back button for the view.
- [navigationBarTitleDisplayMode(_:)](/documentation/swiftui/view/navigationbartitledisplaymode(_:)) Configures the title display mode for this view.
- [NavigationBarItem](/documentation/swiftui/navigationbaritem) A configuration for a navigation bar that represents a view at the top of a navigation stack.

## Configuring the sidebar

- [sidebarRowSize](/documentation/swiftui/environmentvalues/sidebarrowsize) The current size of sidebar rows.
- [SidebarRowSize](/documentation/swiftui/sidebarrowsize) The standard sizes of sidebar rows.

## Presenting views in tabs

- [Enhancing your app’s content with tab navigation](/documentation/swiftui/enhancing-your-app-content-with-tab-navigation) Keep your app content front and center while providing quick access to navigation using the tab bar.
- [TabView](/documentation/swiftui/tabview) A view that switches between multiple child views using interactive user interface elements.
- [Tab](/documentation/swiftui/tab) The content for a tab and the tab’s associated tab item in a tab view.
- [TabRole](/documentation/swiftui/tabrole) A value that defines the purpose of the tab.
- [TabSection](/documentation/swiftui/tabsection) A container that you can use to add hierarchy within a tab view.
- [tabViewStyle(_:)](/documentation/swiftui/view/tabviewstyle(_:)) Sets the style for the tab view within the current environment.

## Configuring a tab bar

- [tabViewSidebarHeader(content:)](/documentation/swiftui/view/tabviewsidebarheader(content:)) Adds a custom header to the sidebar of a tab view.
- [tabViewSidebarFooter(content:)](/documentation/swiftui/view/tabviewsidebarfooter(content:)) Adds a custom footer to the sidebar of a tab view.
- [tabViewSidebarBottomBar(content:)](/documentation/swiftui/view/tabviewsidebarbottombar(content:)) Adds a custom bottom bar to the sidebar of a tab view.
- [AdaptableTabBarPlacement](/documentation/swiftui/adaptabletabbarplacement) A placement for tabs in a tab view using the adaptable sidebar style.
- [tabBarPlacement](/documentation/swiftui/environmentvalues/tabbarplacement) The current placement of the tab bar.
- [TabBarPlacement](/documentation/swiftui/tabbarplacement) A placement for tabs in a tab view.
- [isTabBarShowingSections](/documentation/swiftui/environmentvalues/istabbarshowingsections) A Boolean value that determines whether a tab view shows the expanded contents of a tab section.
- [TabBarMinimizeBehavior](/documentation/swiftui/tabbarminimizebehavior)
- [TabViewBottomAccessoryPlacement](/documentation/swiftui/tabviewbottomaccessoryplacement) A placement of the bottom accessory in a tab view. You can use this to adjust the content of the accessory view based on the placement.

## Configuring a tab

- [sectionActions(content:)](/documentation/swiftui/view/sectionactions(content:)) Adds custom actions to a section.
- [TabPlacement](/documentation/swiftui/tabplacement) A place that a tab can appear.
- [TabContentBuilder](/documentation/swiftui/tabcontentbuilder) A result builder that constructs tabs for a tab view that supports programmatic selection. This builder requires that all tabs in the tab view have the same selection type.
- [TabContent](/documentation/swiftui/tabcontent) A type that provides content for programmatically selectable tabs in a tab view.
- [AnyTabContent](/documentation/swiftui/anytabcontent) Type erased tab content.

## Enabling tab customization

- [tabViewCustomization(_:)](/documentation/swiftui/view/tabviewcustomization(_:)) Specifies the customizations to apply to the sidebar representation of the tab view.
- [TabViewCustomization](/documentation/swiftui/tabviewcustomization) The customizations a person makes to an adaptable sidebar tab view.
- [TabCustomizationBehavior](/documentation/swiftui/tabcustomizationbehavior) The customization behavior of customizable tab view content.

## Displaying views in multiple panes

- [HSplitView](/documentation/swiftui/hsplitview) A layout container that arranges its children in a horizontal line and allows the user to resize them using dividers placed between them.
- [VSplitView](/documentation/swiftui/vsplitview) A layout container that arranges its children in a vertical line and allows the user to resize them using dividers placed between them.

## Deprecated Types

- [NavigationView](/documentation/swiftui/navigationview) A view for presenting a stack of views that represents a visible path in a navigation hierarchy.
- [tabItem(_:)](/documentation/swiftui/view/tabitem(_:)) Sets the tab bar item associated with this view.

## App structure

- [App organization](/documentation/swiftui/app-organization)
- [Scenes](/documentation/swiftui/scenes)
- [Windows](/documentation/swiftui/windows)
- [Immersive spaces](/documentation/swiftui/immersive-spaces)
- [Documents](/documentation/swiftui/documents)
- [Modal presentations](/documentation/swiftui/modal-presentations)
- [Toolbars](/documentation/swiftui/toolbars)
- [Search](/documentation/swiftui/search)
- [App extensions](/documentation/swiftui/app-extensions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
