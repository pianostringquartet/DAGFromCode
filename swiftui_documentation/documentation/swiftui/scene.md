---
title: Scene
description: A part of an app’s user interface with a life cycle managed by the system.
source: https://developer.apple.com/documentation/swiftui/scene
timestamp: 2025-10-29T00:11:18.626Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# Scene

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A part of an app’s user interface with a life cycle managed by the system.

```swift
@MainActor @preconcurrency protocol Scene
```

## Overview

You create an [App](/documentation/swiftui/app) by combining one or more instances that conform to the `Scene` protocol in the app’s [body-swift.property](/documentation/swiftui/app/body-swift.property). You can use the built-in scenes that SwiftUI provides, like [Window Group](/documentation/swiftui/windowgroup), along with custom scenes that you compose from other scenes. To create a custom scene, declare a type that conforms to the `Scene` protocol. Implement the required [body-swift.property](/documentation/swiftui/scene/body-swift.property) computed property and provide the content for your custom scene:

```swift
struct MyScene: Scene {
    var body: some Scene {
        WindowGroup {
            MyRootView()
        }
    }
}
```

A scene acts as a container for a view hierarchy that you want to display to the user. The system decides when and how to present the view hierarchy in the user interface in a way that’s platform-appropriate and dependent on the current state of the app. For example, for the window group shown above, the system lets the user create or remove windows that contain `MyRootView` on platforms like macOS and iPadOS. On other platforms, the same view hierarchy might consume the entire display when active.

Read the [scene Phase](/documentation/swiftui/environmentvalues/scenephase) environment value from within a scene or one of its views to check whether a scene is active or in some other state. You can create a property that contains the scene phase, which is one of the values in the [Scene Phase](/documentation/swiftui/scenephase) enumeration, using the [Environment](/documentation/swiftui/environment) attribute:

```swift
struct MyScene: Scene {
    @Environment(\.scenePhase) private var scenePhase

    // ...
}
```

The `Scene` protocol provides scene modifiers, defined as protocol methods with default implementations, that you use to configure a scene. For example, you can use the [onChange(of:perform:)](/documentation/swiftui/scene/onchange(of:perform:)) modifier to trigger an action when a value changes. The following code empties a cache when all of the scenes in the window group have moved to the background:

```swift
struct MyScene: Scene {
    @Environment(\.scenePhase) private var scenePhase
    @StateObject private var cache = DataCache()

    var body: some Scene {
        WindowGroup {
            MyRootView()
        }
        .onChange(of: scenePhase) { newScenePhase in
            if newScenePhase == .background {
                cache.empty()
            }
        }
    }
}
```

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

- [AlertScene](/documentation/swiftui/alertscene)
- [AssistiveAccess](/documentation/swiftui/assistiveaccess)
- [DocumentGroup](/documentation/swiftui/documentgroup)
- [DocumentGroupLaunchScene](/documentation/swiftui/documentgrouplaunchscene)
- [Group](/documentation/swiftui/group)
- [ImmersiveSpace](/documentation/swiftui/immersivespace)
- [MenuBarExtra](/documentation/swiftui/menubarextra)
- [ModifiedContent](/documentation/swiftui/modifiedcontent)
- [RemoteImmersiveSpace](/documentation/swiftui/remoteimmersivespace)
- [Settings](/documentation/swiftui/settings)
- [UtilityWindow](/documentation/swiftui/utilitywindow)
- [WKNotificationScene](/documentation/swiftui/wknotificationscene)
- [Window](/documentation/swiftui/window)
- [WindowGroup](/documentation/swiftui/windowgroup)

## Creating a scene

- [body](/documentation/swiftui/scene/body-swift.property) The content and behavior of the scene.
- [Body](/documentation/swiftui/scene/body-swift.associatedtype) The type of scene that represents the body of this scene.

## Watching for changes

- [onChange(of:initial:_:)](/documentation/swiftui/scene/onchange(of:initial:_:)) Adds an action to perform when the given value changes.
- [handlesExternalEvents(matching:)](/documentation/swiftui/scene/handlesexternalevents(matching:)) Specifies the external events for which SwiftUI opens a new instance of the modified scene.

## Creating background tasks

- [backgroundTask(_:action:)](/documentation/swiftui/scene/backgroundtask(_:action:)) Runs the specified action when the system provides a background task.

## Managing app storage

- [defaultAppStorage(_:)](/documentation/swiftui/scene/defaultappstorage(_:)) The default store used by  contained within the scene and its view content.

## Setting commands

- [commands(content:)](/documentation/swiftui/scene/commands(content:)) Adds commands to the scene.
- [commandsRemoved()](/documentation/swiftui/scene/commandsremoved()) Removes all commands defined by the modified scene.
- [commandsReplaced(content:)](/documentation/swiftui/scene/commandsreplaced(content:)) Replaces all commands defined by the modified scene with the commands from the builder.
- [keyboardShortcut(_:)](/documentation/swiftui/scene/keyboardshortcut(_:)) Defines a keyboard shortcut for opening new scene windows.
- [keyboardShortcut(_:modifiers:localization:)](/documentation/swiftui/scene/keyboardshortcut(_:modifiers:localization:)) Defines a keyboard shortcut for opening new scene windows.

## Sizing and positioning the scene

- [defaultPosition(_:)](/documentation/swiftui/scene/defaultposition(_:)) Sets a default position for a window.
- [defaultSize(_:)](/documentation/swiftui/scene/defaultsize(_:)) Sets a default size for a window.
- [defaultSize(width:height:)](/documentation/swiftui/scene/defaultsize(width:height:)) Sets a default width and height for a window.
- [defaultSize(width:height:depth:)](/documentation/swiftui/scene/defaultsize(width:height:depth:)) Sets a default size for a volumetric window.
- [defaultSize(_:in:)](/documentation/swiftui/scene/defaultsize(_:in:)) Sets a default size for a volumetric window.
- [defaultSize(width:height:depth:in:)](/documentation/swiftui/scene/defaultsize(width:height:depth:in:)) Sets a default size for a volumetric window.
- [defaultWindowPlacement(_:)](/documentation/swiftui/scene/defaultwindowplacement(_:)) Defines a function used for determining the default placement of windows.
- [windowResizability(_:)](/documentation/swiftui/scene/windowresizability(_:)) Sets the kind of resizability to use for a window.
- [windowIdealSize(_:)](/documentation/swiftui/scene/windowidealsize(_:)) Specifies how windows derived form this scene should determine their size when zooming.
- [windowIdealPlacement(_:)](/documentation/swiftui/scene/windowidealplacement(_:)) Provides a function which determines a placement to use when windows of a scene zoom.
- [windowManagerRole(_:)](/documentation/swiftui/scene/windowmanagerrole(_:)) Configures the role for windows derived from  when participating in a managed window context, such as full screen or Stage Manager.

## Interacting with volumes

- [volumeWorldAlignment(_:)](/documentation/swiftui/scene/volumeworldalignment(_:)) Specifies how a volume should be aligned when moved in the world.
- [defaultWorldScaling(_:)](/documentation/swiftui/scene/defaultworldscaling(_:)) Specify the world scaling behavior for the window.

## Configuring scene visibility

- [defaultLaunchBehavior(_:)](/documentation/swiftui/scene/defaultlaunchbehavior(_:)) Sets the default launch behavior for this scene.
- [restorationBehavior(_:)](/documentation/swiftui/scene/restorationbehavior(_:)) Sets the restoration behavior for this scene.
- [persistentSystemOverlays(_:)](/documentation/swiftui/scene/persistentsystemoverlays(_:)) Sets the preferred visibility of the non-transient system views overlaying the app.

## Styling the scene

- [immersionStyle(selection:in:)](/documentation/swiftui/scene/immersionstyle(selection:in:)) Sets the style for an immersive space.
- [upperLimbVisibility(_:)](/documentation/swiftui/scene/upperlimbvisibility(_:)) Sets the preferred visibility of the user’s upper limbs, while an  scene is presented.
- [windowStyle(_:)](/documentation/swiftui/scene/windowstyle(_:)) Sets the style for windows created by this scene.
- [windowLevel(_:)](/documentation/swiftui/scene/windowlevel(_:)) Sets the window level of this scene.
- [windowToolbarStyle(_:)](/documentation/swiftui/scene/windowtoolbarstyle(_:)) Sets the style for the toolbar defined within this scene.
- [windowToolbarLabelStyle(_:)](/documentation/swiftui/scene/windowtoolbarlabelstyle(_:)) Sets the label style of items in a toolbar and enables user customization.
- [windowToolbarLabelStyle(fixed:)](/documentation/swiftui/scene/windowtoolbarlabelstyle(fixed:)) Sets the label style of items in a toolbar.

## Configuring a data model

- [modelContext(_:)](/documentation/swiftui/scene/modelcontext(_:)) Sets the model context in this scene’s environment.
- [modelContainer(_:)](/documentation/swiftui/scene/modelcontainer(_:)) Sets the model container and associated model context in this scene’s environment.
- [modelContainer(for:inMemory:isAutosaveEnabled:isUndoEnabled:onSetup:)](/documentation/swiftui/scene/modelcontainer(for:inmemory:isautosaveenabled:isundoenabled:onsetup:)) Sets the model container in this scene for storing the provided model type, creating a new container if necessary, and also sets a model context for that container in this scene’s environment.

## Managing the environment

- [environment(_:)](/documentation/swiftui/scene/environment(_:)) Places an observable object in the scene’s environment.
- [environment(_:_:)](/documentation/swiftui/scene/environment(_:_:)) Sets the environment value of the specified key path to the given value.
- [environmentObject(_:)](/documentation/swiftui/scene/environmentobject(_:)) Supplies an  to a view subhierarchy.
- [transformEnvironment(_:transform:)](/documentation/swiftui/scene/transformenvironment(_:transform:)) Transforms the environment value of the specified key path with the given function.

## Interacting with dialogs

- [dialogIcon(_:)](/documentation/swiftui/scene/dialogicon(_:)) Configures the icon used by alerts.
- [dialogSeverity(_:)](/documentation/swiftui/scene/dialogseverity(_:)) Sets the severity for alerts.
- [dialogSuppressionToggle(isSuppressed:)](/documentation/swiftui/scene/dialogsuppressiontoggle(issuppressed:)) Enables user suppression of an alert with a custom suppression message.
- [dialogSuppressionToggle(_:isSuppressed:)](/documentation/swiftui/scene/dialogsuppressiontoggle(_:issuppressed:)) Enables user suppression of an alert with a custom suppression message.

## Supporting drag behavior

- [windowBackgroundDragBehavior(_:)](/documentation/swiftui/scene/windowbackgrounddragbehavior(_:)) Configures the behavior of dragging a window by its background.

## Deprecated symbols

- [onChange(of:perform:)](/documentation/swiftui/scene/onchange(of:perform:)) Adds an action to perform when the given value changes.

## Instance Methods

- [documentBrowserContextMenu(_:)](/documentation/swiftui/scene/documentbrowsercontextmenu(_:)) Adds to a  actions that accept a list of selected files as their parameter.
- [immersiveContentBrightness(_:)](/documentation/swiftui/scene/immersivecontentbrightness(_:)) Sets the content brightness of an immersive space.
- [immersiveEnvironmentBehavior(_:)](/documentation/swiftui/scene/immersiveenvironmentbehavior(_:)) Sets the immersive environment behavior that should apply when this scene opens.
- [menuBarExtraStyle(_:)](/documentation/swiftui/scene/menubarextrastyle(_:)) Sets the style for menu bar extra created by this scene.

## Creating scenes

- [SceneBuilder](/documentation/swiftui/scenebuilder)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
