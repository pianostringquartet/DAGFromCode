---
title: Scenes
description: Declare the user interface groupings that make up the parts of your app.
source: https://developer.apple.com/documentation/swiftui/scenes
timestamp: 2025-10-29T00:13:30.919Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Scenes

> Declare the user interface groupings that make up the parts of your app.

## Overview

A scene represents a part of your app’s user interface that has a life cycle that the system manages. An [App](/documentation/swiftui/app) instance presents the scenes it contains, while each [Scene](/documentation/swiftui/scene) acts as the root element of a [View](/documentation/swiftui/view) hierarchy.



The system presents scenes in different ways depending on the type of scene, the platform, and the context. A scene might fill the entire display, part of the display, a window, a tab in a window, or something else. In some cases, your app might also be able to display more than one instance of the scene at a time, like when a user simultaneously opens multiple windows based on a single [Window Group](/documentation/swiftui/windowgroup) declaration in your app. For more information about the primary built-in scene types, see [Windows](/documentation/swiftui/windows) and [Documents](/documentation/swiftui/documents).

You configure scenes using modifiers, similar to how you configure views. For example, you can adjust the appearance of the window that contains a scene — if the scene happens to appear in a window — using the [windowStyle(_:)](/documentation/swiftui/scene/windowstyle(_:)) modifier. Similarly, you can add menu commands that become available when the scene is in the foreground on certain platforms using the [commands(content:)](/documentation/swiftui/scene/commands(content:)) modifier.

## Creating scenes

- [Scene](/documentation/swiftui/scene) A part of an app’s user interface with a life cycle managed by the system.
- [SceneBuilder](/documentation/swiftui/scenebuilder) A result builder for composing a collection of scenes into a single composite scene.

## Monitoring scene life cycle

- [scenePhase](/documentation/swiftui/environmentvalues/scenephase) The current phase of the scene.
- [ScenePhase](/documentation/swiftui/scenephase) An indication of a scene’s operational state.

## Managing a settings window

- [Settings](/documentation/swiftui/settings) A scene that presents an interface for viewing and modifying an app’s settings.
- [SettingsLink](/documentation/swiftui/settingslink) A view that opens the Settings scene defined by an app.
- [OpenSettingsAction](/documentation/swiftui/opensettingsaction) An action that presents the settings scene for an app.
- [openSettings](/documentation/swiftui/environmentvalues/opensettings) A Settings presentation action stored in a view’s environment.

## Building a menu bar

- [Building and customizing the menu bar with SwiftUI](/documentation/swiftui/building-and-customizing-the-menu-bar-with-swiftui) Provide a seamless, cross-platform user experience by building a native menu bar for iPadOS and macOS.

## Creating a menu bar extra

- [MenuBarExtra](/documentation/swiftui/menubarextra) A scene that renders itself as a persistent control in the system menu bar.
- [menuBarExtraStyle(_:)](/documentation/swiftui/scene/menubarextrastyle(_:)) Sets the style for menu bar extra created by this scene.
- [MenuBarExtraStyle](/documentation/swiftui/menubarextrastyle) A specification for the appearance and behavior of a menu bar extra scene.

## Creating watch notifications

- [WKNotificationScene](/documentation/swiftui/wknotificationscene) A scene which appears in response to receiving the specified category of remote or local notifications.

## App structure

- [App organization](/documentation/swiftui/app-organization)
- [Windows](/documentation/swiftui/windows)
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
