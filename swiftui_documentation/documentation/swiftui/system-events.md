---
title: System events
description: React to system events, like opening a URL.
source: https://developer.apple.com/documentation/swiftui/system-events
timestamp: 2025-10-29T00:10:38.902Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# System events

> React to system events, like opening a URL.

## Overview

Specify view and scene modifiers to indicate how your app responds to certain system events. For example, you can use the [onOpenURL(perform:)](/documentation/swiftui/view/onopenurl(perform:)) view modifier to define an action to take when your app receives a universal link, or use the [backgroundTask(_:action:)](/documentation/swiftui/scene/backgroundtask(_:action:)) scene modifier to specify an asynchronous task to carry out in response to a background task event, like the completion of a background URL session.



## Sending and receiving user activities

- [Restoring your app’s state with SwiftUI](/documentation/swiftui/restoring-your-app-s-state-with-swiftui) Provide app continuity for users by preserving their current activities.
- [userActivity(_:element:_:)](/documentation/swiftui/view/useractivity(_:element:_:)) Advertises a user activity type.
- [userActivity(_:isActive:_:)](/documentation/swiftui/view/useractivity(_:isactive:_:)) Advertises a user activity type.
- [onContinueUserActivity(_:perform:)](/documentation/swiftui/view/oncontinueuseractivity(_:perform:)) Registers a handler to invoke in response to a user activity that your app receives.

## Sending and receiving URLs

- [openURL](/documentation/swiftui/environmentvalues/openurl) An action that opens a URL.
- [OpenURLAction](/documentation/swiftui/openurlaction) An action that opens a URL.
- [onOpenURL(perform:)](/documentation/swiftui/view/onopenurl(perform:)) Registers a handler to invoke in response to a URL that your app receives.

## Handling external events

- [handlesExternalEvents(matching:)](/documentation/swiftui/scene/handlesexternalevents(matching:)) Specifies the external events for which SwiftUI opens a new instance of the modified scene.
- [handlesExternalEvents(preferring:allowing:)](/documentation/swiftui/view/handlesexternalevents(preferring:allowing:)) Specifies the external events that the view’s scene handles if the scene is already open.

## Handling background tasks

- [backgroundTask(_:action:)](/documentation/swiftui/scene/backgroundtask(_:action:)) Runs the specified action when the system provides a background task.
- [BackgroundTask](/documentation/swiftui/backgroundtask) The kinds of background tasks that your app or extension can handle.
- [SnapshotData](/documentation/swiftui/snapshotdata) The associated data of a snapshot background task.
- [SnapshotResponse](/documentation/swiftui/snapshotresponse) Your application’s response to a snapshot background task.

## Importing and exporting transferable items

- [importableFromServices(for:action:)](/documentation/swiftui/view/importablefromservices(for:action:)) Enables importing items from services, such as Continuity Camera on macOS.
- [exportableToServices(_:)](/documentation/swiftui/view/exportabletoservices(_:)) Exports items for consumption by shortcuts, quick actions, and services.
- [exportableToServices(_:onEdit:)](/documentation/swiftui/view/exportabletoservices(_:onedit:)) Exports read-write items for consumption by shortcuts, quick actions, and services.

## Importing and exporting using item providers

- [importsItemProviders(_:onImport:)](/documentation/swiftui/view/importsitemproviders(_:onimport:)) Enables importing item providers from services, such as Continuity Camera on macOS.
- [exportsItemProviders(_:onExport:)](/documentation/swiftui/view/exportsitemproviders(_:onexport:)) Exports a read-only item provider for consumption by shortcuts, quick actions, and services.
- [exportsItemProviders(_:onExport:onEdit:)](/documentation/swiftui/view/exportsitemproviders(_:onexport:onedit:)) Exports a read-write item provider for consumption by shortcuts, quick actions, and services.

## Event handling

- [Gestures](/documentation/swiftui/gestures)
- [Input events](/documentation/swiftui/input-events)
- [Clipboard](/documentation/swiftui/clipboard)
- [Drag and drop](/documentation/swiftui/drag-and-drop)
- [Focus](/documentation/swiftui/focus)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
