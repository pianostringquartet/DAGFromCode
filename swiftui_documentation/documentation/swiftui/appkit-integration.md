---
title: AppKit integration
description: Add AppKit views to your SwiftUI app, or use SwiftUI views in your AppKit app.
source: https://developer.apple.com/documentation/swiftui/appkit-integration
timestamp: 2025-10-29T00:12:28.300Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# AppKit integration

> Add AppKit views to your SwiftUI app, or use SwiftUI views in your AppKit app.

## Overview

Integrate SwiftUI with your app’s existing content using hosting controllers to add SwiftUI views into AppKit interfaces. A hosting controller wraps a set of SwiftUI views in a form that you can then add to your storyboard-based app.



You can also add AppKit views and view controllers to your SwiftUI interfaces. A representable object wraps the designated view or view controller, and facilitates communication between the wrapped object and your SwiftUI views.

For design guidance, see [designing-for](/design/Human-Interface-Guidelines/designing-for-macos) in the Human Interface Guidelines.

## Displaying SwiftUI views in AppKit

- [Unifying your app’s animations](/documentation/swiftui/unifying-your-app-s-animations) Create a consistent UI animation experience across SwiftUI, UIKit, and AppKit.
- [NSHostingController](/documentation/swiftui/nshostingcontroller) An AppKit view controller that hosts SwiftUI view hierarchy.
- [NSHostingView](/documentation/swiftui/nshostingview) An AppKit view that hosts a SwiftUI view hierarchy.
- [NSHostingMenu](/documentation/swiftui/nshostingmenu) An AppKit menu with menu items that are defined by a SwiftUI View.
- [NSHostingSizingOptions](/documentation/swiftui/nshostingsizingoptions) Options for how hosting views and controllers reflect their content’s size into Auto Layout constraints.
- [NSHostingSceneRepresentation](/documentation/swiftui/nshostingscenerepresentation) An AppKit type that hosts and can present SwiftUI scenes
- [NSHostingSceneBridgingOptions](/documentation/swiftui/nshostingscenebridgingoptions) Options for how hosting views and controllers manage aspects of the associated window.

## Adding AppKit views to SwiftUI view hierarchies

- [NSViewRepresentable](/documentation/swiftui/nsviewrepresentable) A wrapper that you use to integrate an AppKit view into your SwiftUI view hierarchy.
- [NSViewRepresentableContext](/documentation/swiftui/nsviewrepresentablecontext) Contextual information about the state of the system that you use to create and update your AppKit view.
- [NSViewControllerRepresentable](/documentation/swiftui/nsviewcontrollerrepresentable) A wrapper that you use to integrate an AppKit view controller into your SwiftUI interface.
- [NSViewControllerRepresentableContext](/documentation/swiftui/nsviewcontrollerrepresentablecontext) Contextual information about the state of the system that you use to create and update your AppKit view controller.

## Adding AppKit gesture recognizers into SwiftUI view hierarchies

- [NSGestureRecognizerRepresentable](/documentation/swiftui/nsgesturerecognizerrepresentable) A wrapper for an  that you use to integrate that gesture recognizer into your SwiftUI hierarchy.
- [NSGestureRecognizerRepresentableContext](/documentation/swiftui/nsgesturerecognizerrepresentablecontext) Contextual information about the state of the system that you use to create and update a represented gesture recognizer.
- [NSGestureRecognizerRepresentableCoordinateSpaceConverter](/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter) A structure used to convert locations to and from coordinate spaces in the hierarchy of the SwiftUI view associated with an .

## Framework integration

- [UIKit integration](/documentation/swiftui/uikit-integration)
- [WatchKit integration](/documentation/swiftui/watchkit-integration)
- [Technology-specific views](/documentation/swiftui/technology-specific-views)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
