---
title: Immersive spaces
description: Display unbounded content in a person’s surroundings.
source: https://developer.apple.com/documentation/swiftui/immersive-spaces
timestamp: 2025-10-29T00:14:31.349Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Immersive spaces

> Display unbounded content in a person’s surroundings.

## Overview

Use an immersive space in visionOS to present SwiftUI views outside of any containers. You can include any views in a space, although you typically use a [Reality View](/documentation/RealityKit/RealityView) to present RealityKit content.



You can request one of three styles of spaces with the [immersionStyle(selection:in:)](/documentation/swiftui/scene/immersionstyle(selection:in:)) scene modifier:

- The [mixed](/documentation/swiftui/immersionstyle/mixed) style blends your content with passthrough. This enables you to place virtual objects in a person’s surroundings.
- The [full](/documentation/swiftui/immersionstyle/full) style displays only your content, with passthrough turned off. This enables you to completely control the visual experience, like when you want to transport people to a new world.
- The [progressive](/documentation/swiftui/immersionstyle/progressive) style completely replaces passthrough in a portion of the display. You might use this style to keep people grounded in the real world while displaying a view into another world.

When you open an immersive space, the system continues to display all of your app’s windows, but hides windows from other apps. The system supports displaying only one space at a time across all apps, so your app can only open a space if one isn’t already open.

## Creating an immersive space

- [ImmersiveSpace](/documentation/swiftui/immersivespace) A scene that presents its content in an unbounded space.
- [ImmersiveSpaceContentBuilder](/documentation/swiftui/immersivespacecontentbuilder) A result builder for composing a collection of immersive space elements.
- [immersionStyle(selection:in:)](/documentation/swiftui/scene/immersionstyle(selection:in:)) Sets the style for an immersive space.
- [ImmersionStyle](/documentation/swiftui/immersionstyle) The styles that an immersive space can have.
- [immersiveSpaceDisplacement](/documentation/swiftui/environmentvalues/immersivespacedisplacement) The displacement that the system applies to the immersive space when moving the space away from its default position, in meters.
- [ImmersiveEnvironmentBehavior](/documentation/swiftui/immersiveenvironmentbehavior) The behavior of the system-provided immersive environments when a scene is opened by your app.
- [ProgressiveImmersionAspectRatio](/documentation/swiftui/progressiveimmersionaspectratio)

## Opening an immersive space

- [openImmersiveSpace](/documentation/swiftui/environmentvalues/openimmersivespace) An action that presents an immersive space.
- [OpenImmersiveSpaceAction](/documentation/swiftui/openimmersivespaceaction) An action that presents an immersive space.

## Closing the immersive space

- [dismissImmersiveSpace](/documentation/swiftui/environmentvalues/dismissimmersivespace) An immersive space dismissal action stored in a view’s environment.
- [DismissImmersiveSpaceAction](/documentation/swiftui/dismissimmersivespaceaction) An action that dismisses an immersive space.

## Hiding upper limbs during immersion

- [upperLimbVisibility(_:)](/documentation/swiftui/scene/upperlimbvisibility(_:)) Sets the preferred visibility of the user’s upper limbs, while an  scene is presented.
- [upperLimbVisibility(_:)](/documentation/swiftui/view/upperlimbvisibility(_:)) Sets the preferred visibility of the user’s upper limbs, while an  scene is presented.

## Adjusting content brightness

- [immersiveContentBrightness(_:)](/documentation/swiftui/scene/immersivecontentbrightness(_:)) Sets the content brightness of an immersive space.
- [ImmersiveContentBrightness](/documentation/swiftui/immersivecontentbrightness) The content brightness of an immersive space.

## Responding to immersion changes

- [onImmersionChange(initial:_:)](/documentation/swiftui/view/onimmersionchange(initial:_:)) Performs an action when the immersion state of your app changes.
- [ImmersionChangeContext](/documentation/swiftui/immersionchangecontext) A structure that represents a state of immersion of your app.

## Adding menu items to an immersive space

- [immersiveEnvironmentPicker(content:)](/documentation/swiftui/view/immersiveenvironmentpicker(content:)) Add menu items to open immersive spaces from a media player’s environment picker.

## Handling remote immersive spaces

- [RemoteImmersiveSpace](/documentation/swiftui/remoteimmersivespace) A scene that presents its content in an unbounded space on a remote device.
- [RemoteDeviceIdentifier](/documentation/swiftui/remotedeviceidentifier) An opaque type that identifies a remote device displaying scene content in a .

## App structure

- [App organization](/documentation/swiftui/app-organization)
- [Scenes](/documentation/swiftui/scenes)
- [Windows](/documentation/swiftui/windows)
- [Documents](/documentation/swiftui/documents)
- [Navigation](/documentation/swiftui/navigation)
- [Modal presentations](/documentation/swiftui/modal-presentations)
- [Toolbars](/documentation/swiftui/toolbars)
- [Search](/documentation/swiftui/search)
- [App extensions](/documentation/swiftui/app-extensions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
