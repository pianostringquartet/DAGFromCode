---
title: handlesExternalEvents(matching:)
description: Specifies the external events for which SwiftUI opens a new instance of the modified scene.
source: https://developer.apple.com/documentation/swiftui/scene/handlesexternalevents(matching:)
timestamp: 2025-10-29T00:15:17.652Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# handlesExternalEvents(matching:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Specifies the external events for which SwiftUI opens a new instance of the modified scene.

```swift
nonisolated func handlesExternalEvents(matching conditions: Set<String>) -> some Scene
```

## Parameters

**conditions**

A set of strings that SwiftUI compares against the incoming user activity or URL to see if SwiftUI can open a new scene instance to handle the external event.



## Return Value

A scene type that limits the kinds of external events for which SwiftUI opens a new instance.

## Discussion

When your app receives an external event like a user activity or a URL, SwiftUI routes the event to a scene for processing. SwiftUI selects the scene that receives the event according to the following rules, which it evaluates in order until it finds a destination scene:

- On platforms that support only a single scene per app, send the event to the one open scene.
- Find an open scene that indicates it prefers to or can handle the event, if any, and send the event to that scene. You use the [handlesExternalEvents(preferring:allowing:)](/documentation/swiftui/view/handlesexternalevents(preferring:allowing:)) view modifier on a view inside the scene to register this preference.
- Find a scene declaration with a `handlesExternalEvents(matching:)` scene modifier containing `conditions` that match the external event. Create a new instance of the first scene that matches and route the event there.
- Find the first scene declaration that doesn’t have the scene modifier. Create a new instance of this scene and route the event there.

Make sure that at least one of these rules succeeds in your app for all events that your app claims to handle. Also, make sure that the scene that receives an event actually handles it. For example, be sure that a scene that receives user activities handles them with an appropriate [onContinueUserActivity(_:perform:)](/documentation/swiftui/view/oncontinueuseractivity(_:perform:)) view modifier.

Don’t confuse the `handlesExternalEvents(matching:)` scene modifier with the [handlesExternalEvents(preferring:allowing:)](/documentation/swiftui/view/handlesexternalevents(preferring:allowing:)) *view* modifier. You use the scene modifier to help SwiftUI choose a new scene to open when no open scene handles an external event, whereas you use the view modifier to indicate that an open scene can or prefers to handle certain events.

### Matching an event

To find a scene type that handles a particular external event, SwiftUI compares a property of the event against the strings that you specify in the `conditions` set. SwiftUI examines the following event properties to perform the comparison:

- For an [NSUser Activity](/documentation/Foundation/NSUserActivity), like when your app handles Handoff, SwiftUI uses the activity’s [target Content Identifier](/documentation/Foundation/NSUserActivity/targetContentIdentifier) property, or if that’s `nil`, its [webpage URL](/documentation/Foundation/NSUserActivity/webpageURL) property rendered as an [absolute String](/documentation/Foundation/URL/absoluteString).
- For a [URL](/documentation/Foundation/URL), like when another process opens a URL that your app handles, SwiftUI uses the URL’s [absolute String](/documentation/Foundation/URL/absoluteString).

An empty set of strings never matches. Similarly, empty strings never match. Conversely, as a special case, the string that contains only an asterisk (`*`) matches anything. The modifier performs string comparisons that are case and diacritic insensitive.

> [!IMPORTANT]
> [Document Group](/documentation/swiftui/documentgroup) scenes ignore this modifier. Instead, document scenes decide whether to open a new scene to handle an external event by comparing the incoming URL or user activity’s [webpage URL](/documentation/Foundation/NSUserActivity/webpageURL) against the document group’s supported types.

### Choosing a window to open

The following example shows an app with a photo browser scene that displays a collection of photos, and a photo detail scene that enables closer examination of a particular photo:

```swift
@main
struct MyPhotos: App {
    var body: some Scene {
        WindowGroup {
            PhotosBrowser()
        }

        WindowGroup("Photo") {
            PhotoDetail()
        }
        .handlesExternalEvents(matching: ["photoIdentifier="])
    }
}
```

The app uses the `handlesExternalEvents(matching:)` modifier on the second scene to ensure that an external event with an identifier that contains the string `photoIdentifier=` creates a new scene of the second type. Other events, if not handled by an open scene, cause the creation of a new browser window instead.

## Handling external events

- [handlesExternalEvents(preferring:allowing:)](/documentation/swiftui/view/handlesexternalevents(preferring:allowing:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
