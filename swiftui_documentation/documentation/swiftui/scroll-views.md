---
title: Scroll views
description: Enable people to scroll to content that doesn’t fit in the current display.
source: https://developer.apple.com/documentation/swiftui/scroll-views
timestamp: 2025-10-29T00:15:25.285Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Scroll views

> Enable people to scroll to content that doesn’t fit in the current display.

## Overview

When the content of a view doesn’t fit in the display, you can wrap the view in a [Scroll View](/documentation/swiftui/scrollview) to enable people to scroll on one or more axes. Configure the scroll view using view modifiers. For example, you can set the visibility of the scroll indicators or the availability of scrolling in a given dimension.



You can put any view type in a scroll view, but you most often use a scroll view for a layout container with too many elements to fit in the display. For some container views that you put in a scroll view, like lazy stacks, the container doesn’t load views until they are visible or almost visible. For others, like regular stacks and grids, the container loads the content all at once, regardless of the state of scrolling.

[Lists](/documentation/swiftui/lists) and [Tables](/documentation/swiftui/tables) implicitly include a scroll view, so you don’t need to add scrolling to those container types. However, you can configure their implicit scroll views with the same view modifiers that apply to explicit scroll views.

For design guidance, see [scroll](/design/Human-Interface-Guidelines/scroll-views) in the Human Interface Guidelines.

## Creating a scroll view

- [ScrollView](/documentation/swiftui/scrollview) A scrollable view.
- [ScrollViewReader](/documentation/swiftui/scrollviewreader) A view that provides programmatic scrolling, by working with a proxy to scroll to known child views.
- [ScrollViewProxy](/documentation/swiftui/scrollviewproxy) A proxy value that supports programmatic scrolling of the scrollable views within a view hierarchy.

## Managing scroll position

- [scrollPosition(_:anchor:)](/documentation/swiftui/view/scrollposition(_:anchor:)) Associates a binding to a scroll position with a scroll view within this view.
- [scrollPosition(id:anchor:)](/documentation/swiftui/view/scrollposition(id:anchor:)) Associates a binding to be updated when a scroll view within this view scrolls.
- [defaultScrollAnchor(_:)](/documentation/swiftui/view/defaultscrollanchor(_:)) Associates an anchor to control which part of the scroll view’s content should be rendered by default.
- [defaultScrollAnchor(_:for:)](/documentation/swiftui/view/defaultscrollanchor(_:for:)) Associates an anchor to control the position of a scroll view in a particular circumstance.
- [ScrollAnchorRole](/documentation/swiftui/scrollanchorrole) A type defining the role of a scroll anchor.
- [ScrollPosition](/documentation/swiftui/scrollposition) A type that defines the semantic position of where a scroll view is scrolled within its content.

## Defining scroll targets

- [scrollTargetBehavior(_:)](/documentation/swiftui/view/scrolltargetbehavior(_:)) Sets the scroll behavior of views scrollable in the provided axes.
- [scrollTargetLayout(isEnabled:)](/documentation/swiftui/view/scrolltargetlayout(isenabled:)) Configures the outermost layout as a scroll target layout.
- [ScrollTarget](/documentation/swiftui/scrolltarget) A type defining the target in which a scroll view should try and scroll to.
- [ScrollTargetBehavior](/documentation/swiftui/scrolltargetbehavior) A type that defines the scroll behavior of a scrollable view.
- [ScrollTargetBehaviorContext](/documentation/swiftui/scrolltargetbehaviorcontext) The context in which a scroll target behavior updates its scroll target.
- [PagingScrollTargetBehavior](/documentation/swiftui/pagingscrolltargetbehavior) The scroll behavior that aligns scroll targets to container-based geometry.
- [ViewAlignedScrollTargetBehavior](/documentation/swiftui/viewalignedscrolltargetbehavior) The scroll behavior that aligns scroll targets to view-based geometry.
- [AnyScrollTargetBehavior](/documentation/swiftui/anyscrolltargetbehavior) A type-erased scroll target behavior.
- [ScrollTargetBehaviorProperties](/documentation/swiftui/scrolltargetbehaviorproperties) Properties influencing the scroll view a scroll target behavior applies to.
- [ScrollTargetBehaviorPropertiesContext](/documentation/swiftui/scrolltargetbehaviorpropertiescontext) The context in which a scroll target behavior can decide its properties.

## Animating scroll transitions

- [scrollTransition(_:axis:transition:)](/documentation/swiftui/view/scrolltransition(_:axis:transition:)) Applies the given transition, animating between the phases of the transition as this view appears and disappears within the visible region of the containing scroll view.
- [scrollTransition(topLeading:bottomTrailing:axis:transition:)](/documentation/swiftui/view/scrolltransition(topleading:bottomtrailing:axis:transition:)) Applies the given transition, animating between the phases of the transition as this view appears and disappears within the visible region of the containing scroll view.
- [ScrollTransitionPhase](/documentation/swiftui/scrolltransitionphase) The phases that a view transitions between when it scrolls among other views.
- [ScrollTransitionConfiguration](/documentation/swiftui/scrolltransitionconfiguration) The configuration of a scroll transition that controls how a transition is applied as a view is scrolled through the visible region of a containing scroll view or other container.

## Responding to scroll view changes

- [onScrollGeometryChange(for:of:action:)](/documentation/swiftui/view/onscrollgeometrychange(for:of:action:)) Adds an action to be performed when a value, created from a scroll geometry, changes.
- [onScrollTargetVisibilityChange(idType:threshold:_:)](/documentation/swiftui/view/onscrolltargetvisibilitychange(idtype:threshold:_:)) Adds an action to be called with information about what views would be considered visible.
- [onScrollVisibilityChange(threshold:_:)](/documentation/swiftui/view/onscrollvisibilitychange(threshold:_:)) Adds an action to be called when the view crosses the threshold to be considered on/off screen.
- [onScrollPhaseChange(_:)](/documentation/swiftui/view/onscrollphasechange(_:)) Adds an action to perform when the scroll phase of the first scroll view in the hierarchy changes.
- [ScrollGeometry](/documentation/swiftui/scrollgeometry) A type that defines the geometry of a scroll view.
- [ScrollPhase](/documentation/swiftui/scrollphase) A type that describes the state of a scroll gesture of a scrollable view like a scroll view.
- [ScrollPhaseChangeContext](/documentation/swiftui/scrollphasechangecontext) A type that provides you with more content when the phase of a scroll view changes.

## Showing scroll indicators

- [scrollIndicatorsFlash(onAppear:)](/documentation/swiftui/view/scrollindicatorsflash(onappear:)) Flashes the scroll indicators of a scrollable view when it appears.
- [scrollIndicatorsFlash(trigger:)](/documentation/swiftui/view/scrollindicatorsflash(trigger:)) Flashes the scroll indicators of scrollable views when a value changes.
- [scrollIndicators(_:axes:)](/documentation/swiftui/view/scrollindicators(_:axes:)) Sets the visibility of scroll indicators within this view.
- [horizontalScrollIndicatorVisibility](/documentation/swiftui/environmentvalues/horizontalscrollindicatorvisibility) The visibility to apply to scroll indicators of any horizontally scrollable content.
- [verticalScrollIndicatorVisibility](/documentation/swiftui/environmentvalues/verticalscrollindicatorvisibility) The visiblity to apply to scroll indicators of any vertically scrollable content.
- [ScrollIndicatorVisibility](/documentation/swiftui/scrollindicatorvisibility) The visibility of scroll indicators of a UI element.

## Managing content visibility

- [scrollContentBackground(_:)](/documentation/swiftui/view/scrollcontentbackground(_:)) Specifies the visibility of the background for scrollable views within this view.
- [scrollClipDisabled(_:)](/documentation/swiftui/view/scrollclipdisabled(_:)) Sets whether a scroll view clips its content to its bounds.
- [ScrollContentOffsetAdjustmentBehavior](/documentation/swiftui/scrollcontentoffsetadjustmentbehavior) A type that defines the different kinds of content offset adjusting behaviors a scroll view can have.

## Disabling scrolling

- [scrollDisabled(_:)](/documentation/swiftui/view/scrolldisabled(_:)) Disables or enables scrolling in scrollable views.
- [isScrollEnabled](/documentation/swiftui/environmentvalues/isscrollenabled) A Boolean value that indicates whether any scroll views associated with this environment allow scrolling to occur.

## Configuring scroll bounce behavior

- [scrollBounceBehavior(_:axes:)](/documentation/swiftui/view/scrollbouncebehavior(_:axes:)) Configures the bounce behavior of scrollable views along the specified axis.
- [horizontalScrollBounceBehavior](/documentation/swiftui/environmentvalues/horizontalscrollbouncebehavior) The scroll bounce mode for the horizontal axis of scrollable views.
- [verticalScrollBounceBehavior](/documentation/swiftui/environmentvalues/verticalscrollbouncebehavior) The scroll bounce mode for the vertical axis of scrollable views.
- [ScrollBounceBehavior](/documentation/swiftui/scrollbouncebehavior) The ways that a scrollable view can bounce when it reaches the end of its content.

## Configuring scroll edge effects

- [scrollEdgeEffectStyle(_:for:)](/documentation/swiftui/view/scrolledgeeffectstyle(_:for:)) Configures the scroll edge effect style for scroll views within this hierarchy.
- [ScrollEdgeEffectStyle](/documentation/swiftui/scrolledgeeffectstyle) A structure that defines the style of pocket a scroll view will have.
- [safeAreaBar(edge:alignment:spacing:content:)](/documentation/swiftui/view/safeareabar(edge:alignment:spacing:content:)) Shows the specified content as a custom bar beside the modified view.

## Interacting with a software keyboard

- [scrollDismissesKeyboard(_:)](/documentation/swiftui/view/scrolldismisseskeyboard(_:)) Configures the behavior in which scrollable content interacts with the software keyboard.
- [scrollDismissesKeyboardMode](/documentation/swiftui/environmentvalues/scrolldismisseskeyboardmode) The way that scrollable content interacts with the software keyboard.
- [ScrollDismissesKeyboardMode](/documentation/swiftui/scrolldismisseskeyboardmode) The ways that scrollable content can interact with the software keyboard.

## Managing scrolling for different inputs

- [scrollInputBehavior(_:for:)](/documentation/swiftui/view/scrollinputbehavior(_:for:)) Enables or disables scrolling in scrollable views when using particular inputs.
- [ScrollInputKind](/documentation/swiftui/scrollinputkind) Inputs used to scroll views.
- [ScrollInputBehavior](/documentation/swiftui/scrollinputbehavior) A type that defines whether input should scroll a view.

## View layout

- [Layout fundamentals](/documentation/swiftui/layout-fundamentals)
- [Layout adjustments](/documentation/swiftui/layout-adjustments)
- [Custom layout](/documentation/swiftui/custom-layout)
- [Lists](/documentation/swiftui/lists)
- [Tables](/documentation/swiftui/tables)
- [View groupings](/documentation/swiftui/view-groupings)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
