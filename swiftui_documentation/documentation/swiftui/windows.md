---
title: Windows
description: Display user interface content in a window or a collection of windows.
source: https://developer.apple.com/documentation/swiftui/windows
timestamp: 2025-10-29T00:09:55.057Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Windows

> Display user interface content in a window or a collection of windows.

## Overview

The most common way to present a view hierarchy in your app’s interface is with a [Window Group](/documentation/swiftui/windowgroup), which produces a platform-specific behavior and appearance.



On platforms that support it, people can open multiple windows from the group simultaneously. Each window relies on the same root view definition, but retains its own view state. On some platforms, you can also supplement your app’s user interface with a single-instance window using the [Window](/documentation/swiftui/window) scene type.

Configure windows using scene modifiers that you add to the window declaration, like [windowStyle(_:)](/documentation/swiftui/scene/windowstyle(_:)) or [defaultPosition(_:)](/documentation/swiftui/scene/defaultposition(_:)). You can also indicate how to configure new windows that you present from a view hierarchy by adding the [presentedWindowStyle(_:)](/documentation/swiftui/view/presentedwindowstyle(_:)) view modifier to a view in the hierarchy.

For design guidance, see [windows](/design/Human-Interface-Guidelines/windows) in the Human Interface Guidelines.

## Essentials

- [Customizing window styles and state-restoration behavior in macOS](/documentation/swiftui/customizing-window-styles-and-state-restoration-behavior-in-macos) Configure how your app’s windows look and function in macOS to provide an engaging and more coherent experience.
- [Bringing multiple windows to your SwiftUI app](/documentation/swiftui/bringing-multiple-windows-to-your-swiftui-app) Compose rich views by reacting to state changes and customize your app’s scene presentation and behavior on iPadOS and macOS.

## Creating windows

- [WindowGroup](/documentation/swiftui/windowgroup) A scene that presents a group of identically structured windows.
- [Window](/documentation/swiftui/window) A scene that presents its content in a single, unique window.
- [UtilityWindow](/documentation/swiftui/utilitywindow) A specialized window scene that provides secondary utility to the content of the main scenes of an application.
- [WindowStyle](/documentation/swiftui/windowstyle) A specification for the appearance and interaction of a window.
- [windowStyle(_:)](/documentation/swiftui/scene/windowstyle(_:)) Sets the style for windows created by this scene.

## Styling the associated toolbar

- [windowToolbarStyle(_:)](/documentation/swiftui/scene/windowtoolbarstyle(_:)) Sets the style for the toolbar defined within this scene.
- [windowToolbarLabelStyle(_:)](/documentation/swiftui/scene/windowtoolbarlabelstyle(_:)) Sets the label style of items in a toolbar and enables user customization.
- [windowToolbarLabelStyle(fixed:)](/documentation/swiftui/scene/windowtoolbarlabelstyle(fixed:)) Sets the label style of items in a toolbar.
- [WindowToolbarStyle](/documentation/swiftui/windowtoolbarstyle) A specification for the appearance and behavior of a window’s toolbar.

## Opening windows

- [Presenting windows and spaces](/documentation/visionOS/presenting-windows-and-spaces) Open and close the scenes that make up your app’s interface.
- [supportsMultipleWindows](/documentation/swiftui/environmentvalues/supportsmultiplewindows) A Boolean value that indicates whether the current platform supports opening multiple windows.
- [openWindow](/documentation/swiftui/environmentvalues/openwindow) A window presentation action stored in a view’s environment.
- [OpenWindowAction](/documentation/swiftui/openwindowaction) An action that presents a window.
- [PushWindowAction](/documentation/swiftui/pushwindowaction) An action that opens the requested window in place of the window the action is called from.

## Closing windows

- [dismissWindow](/documentation/swiftui/environmentvalues/dismisswindow) A window dismissal action stored in a view’s environment.
- [DismissWindowAction](/documentation/swiftui/dismisswindowaction) An action that dismisses a window associated to a particular scene.
- [dismiss](/documentation/swiftui/environmentvalues/dismiss) An action that dismisses the current presentation.
- [DismissAction](/documentation/swiftui/dismissaction) An action that dismisses a presentation.
- [DismissBehavior](/documentation/swiftui/dismissbehavior) Programmatic window dismissal behaviors.

## Sizing a window

- [Positioning and sizing windows](/documentation/visionOS/positioning-and-sizing-windows) Influence the initial geometry of windows that your app presents.
- [defaultSize(_:)](/documentation/swiftui/scene/defaultsize(_:)) Sets a default size for a window.
- [defaultSize(width:height:)](/documentation/swiftui/scene/defaultsize(width:height:)) Sets a default width and height for a window.
- [defaultSize(width:height:depth:)](/documentation/swiftui/scene/defaultsize(width:height:depth:)) Sets a default size for a volumetric window.
- [defaultSize(_:in:)](/documentation/swiftui/scene/defaultsize(_:in:)) Sets a default size for a volumetric window.
- [defaultSize(width:height:depth:in:)](/documentation/swiftui/scene/defaultsize(width:height:depth:in:)) Sets a default size for a volumetric window.
- [windowResizability(_:)](/documentation/swiftui/scene/windowresizability(_:)) Sets the kind of resizability to use for a window.
- [WindowResizability](/documentation/swiftui/windowresizability) The resizability of a window.
- [windowIdealSize(_:)](/documentation/swiftui/scene/windowidealsize(_:)) Specifies how windows derived form this scene should determine their size when zooming.
- [WindowIdealSize](/documentation/swiftui/windowidealsize) A type which defines the size a window should use when zooming.

## Positioning a window

- [defaultPosition(_:)](/documentation/swiftui/scene/defaultposition(_:)) Sets a default position for a window.
- [WindowLevel](/documentation/swiftui/windowlevel) The level of a window.
- [windowLevel(_:)](/documentation/swiftui/scene/windowlevel(_:)) Sets the window level of this scene.
- [WindowLayoutRoot](/documentation/swiftui/windowlayoutroot) A proxy which represents the root contents of a window.
- [WindowPlacement](/documentation/swiftui/windowplacement) A type which represents a preferred size and position for a window.
- [defaultWindowPlacement(_:)](/documentation/swiftui/scene/defaultwindowplacement(_:)) Defines a function used for determining the default placement of windows.
- [windowIdealPlacement(_:)](/documentation/swiftui/scene/windowidealplacement(_:)) Provides a function which determines a placement to use when windows of a scene zoom.
- [WindowPlacementContext](/documentation/swiftui/windowplacementcontext) A type which represents contextual information used for sizing and positioning windows.
- [WindowProxy](/documentation/swiftui/windowproxy) The proxy for an open window in the app.
- [DisplayProxy](/documentation/swiftui/displayproxy) A type which provides information about display hardware.

## Configuring window visibility

- [WindowVisibilityToggle](/documentation/swiftui/windowvisibilitytoggle) A specialized button for toggling the visibility of a window.
- [defaultLaunchBehavior(_:)](/documentation/swiftui/scene/defaultlaunchbehavior(_:)) Sets the default launch behavior for this scene.
- [restorationBehavior(_:)](/documentation/swiftui/scene/restorationbehavior(_:)) Sets the restoration behavior for this scene.
- [SceneLaunchBehavior](/documentation/swiftui/scenelaunchbehavior) The launch behavior for a scene.
- [SceneRestorationBehavior](/documentation/swiftui/scenerestorationbehavior) The restoration behavior for a scene.
- [persistentSystemOverlays(_:)](/documentation/swiftui/scene/persistentsystemoverlays(_:)) Sets the preferred visibility of the non-transient system views overlaying the app.
- [windowToolbarFullScreenVisibility(_:)](/documentation/swiftui/view/windowtoolbarfullscreenvisibility(_:)) Configures the visibility of the window toolbar when the window enters full screen mode.
- [WindowToolbarFullScreenVisibility](/documentation/swiftui/windowtoolbarfullscreenvisibility) The visibility of the window toolbar with respect to full screen mode.

## Managing window behavior

- [WindowManagerRole](/documentation/swiftui/windowmanagerrole) Options for defining how a scene’s windows behave when used within a managed window context, such as full screen mode and Stage Manager.
- [windowManagerRole(_:)](/documentation/swiftui/scene/windowmanagerrole(_:)) Configures the role for windows derived from  when participating in a managed window context, such as full screen or Stage Manager.
- [WindowInteractionBehavior](/documentation/swiftui/windowinteractionbehavior) Options for enabling and disabling window interaction behaviors.
- [windowDismissBehavior(_:)](/documentation/swiftui/view/windowdismissbehavior(_:)) Configures the dismiss functionality for the window enclosing .
- [windowFullScreenBehavior(_:)](/documentation/swiftui/view/windowfullscreenbehavior(_:)) Configures the full screen functionality for the window enclosing .
- [windowMinimizeBehavior(_:)](/documentation/swiftui/view/windowminimizebehavior(_:)) Configures the minimize functionality for the window enclosing .
- [windowResizeBehavior(_:)](/documentation/swiftui/view/windowresizebehavior(_:)) Configures the resize functionality for the window enclosing .
- [windowBackgroundDragBehavior(_:)](/documentation/swiftui/scene/windowbackgrounddragbehavior(_:)) Configures the behavior of dragging a window by its background.

## Interacting with volumes

- [onVolumeViewpointChange(updateStrategy:initial:_:)](/documentation/swiftui/view/onvolumeviewpointchange(updatestrategy:initial:_:)) Adds an action to perform when the viewpoint of the volume changes.
- [supportedVolumeViewpoints(_:)](/documentation/swiftui/view/supportedvolumeviewpoints(_:)) Specifies which viewpoints are supported for the window bar and ornaments in a volume.
- [VolumeViewpointUpdateStrategy](/documentation/swiftui/volumeviewpointupdatestrategy) A type describing when the action provided to  should be called.
- [Viewpoint3D](/documentation/swiftui/viewpoint3d) A type describing what direction something is being viewed from.
- [SquareAzimuth](/documentation/swiftui/squareazimuth) A type describing what direction something is being viewed from along the horizontal plane and snapped to 4 directions.
- [WorldAlignmentBehavior](/documentation/swiftui/worldalignmentbehavior) A type representing the world alignment behavior for a scene.
- [volumeWorldAlignment(_:)](/documentation/swiftui/scene/volumeworldalignment(_:)) Specifies how a volume should be aligned when moved in the world.
- [WorldScalingBehavior](/documentation/swiftui/worldscalingbehavior) Specifies the scaling behavior a window should have within the world.
- [defaultWorldScaling(_:)](/documentation/swiftui/scene/defaultworldscaling(_:)) Specify the world scaling behavior for the window.
- [WorldScalingCompensation](/documentation/swiftui/worldscalingcompensation) Indicates whether returned metrics will take dynamic scaling into account.
- [worldTrackingLimitations](/documentation/swiftui/environmentvalues/worldtrackinglimitations) The current limitations of the device tracking the user’s surroundings.
- [WorldTrackingLimitation](/documentation/swiftui/worldtrackinglimitation) A structure to represent limitations of tracking the user’s surroundings.
- [SurfaceSnappingInfo](/documentation/swiftui/surfacesnappinginfo) A type representing information about the window scenes snap state.

## Deprecated Types

- [ControlActiveState](/documentation/swiftui/controlactivestate) The active appearance expected of controls in a window.

## App structure

- [App organization](/documentation/swiftui/app-organization)
- [Scenes](/documentation/swiftui/scenes)
- [Immersive spaces](/documentation/swiftui/immersive-spaces)
- [Documents](/documentation/swiftui/documents)
- [Navigation](/documentation/swiftui/navigation)
- [Modal presentations](/documentation/swiftui/modal-presentations)
- [Toolbars](/documentation/swiftui/toolbars)
- [Search](/documentation/swiftui/search)
- [App extensions](/documentation/swiftui/app-extensions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
