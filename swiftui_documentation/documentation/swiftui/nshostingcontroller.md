---
title: NSHostingController
description: An AppKit view controller that hosts SwiftUI view hierarchy.
source: https://developer.apple.com/documentation/swiftui/nshostingcontroller
timestamp: 2025-10-29T00:12:20.007Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Class**

# NSHostingController

**Available on:** macOS 10.15+

> An AppKit view controller that hosts SwiftUI view hierarchy.

```swift
@MainActor @preconcurrency class NSHostingController<Content> where Content : View
```

## Overview

Create an `NSHostingController` object when you want to integrate SwiftUI views into an AppKit view hierarchy. At creation time, specify the SwiftUI view you want to use as the root view for this view controller; you can change that view later using the [root View](/documentation/swiftui/nshostingcontroller/rootview) property. Use the hosting controller like you would any other view controller, by presenting it or embedding it as a child view controller in your interface.

## Inherits From

- [NSViewController](/documentation/AppKit/NSViewController)

## Conforms To

- [CVarArg](/documentation/Swift/CVarArg)
- [CustomDebugStringConvertible](/documentation/Swift/CustomDebugStringConvertible)
- [CustomStringConvertible](/documentation/Swift/CustomStringConvertible)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [NSCoding](/documentation/Foundation/NSCoding)
- [NSEditor](/documentation/AppKit/NSEditor)
- [NSExtensionRequestHandling](/documentation/Foundation/NSExtensionRequestHandling)
- [NSObjectProtocol](/documentation/ObjectiveC/NSObjectProtocol)
- [NSSeguePerforming](/documentation/AppKit/NSSeguePerforming)
- [NSStandardKeyBindingResponding](/documentation/AppKit/NSStandardKeyBindingResponding)
- [NSTouchBarProvider](/documentation/AppKit/NSTouchBarProvider)
- [NSUserActivityRestoring](/documentation/AppKit/NSUserActivityRestoring)
- [NSUserInterfaceItemIdentification](/documentation/AppKit/NSUserInterfaceItemIdentification)

## Creating a hosting controller object

- [init(rootView:)](/documentation/swiftui/nshostingcontroller/init(rootview:)) Creates a hosting controller object that wraps the specified SwiftUI view.
- [init(coder:rootView:)](/documentation/swiftui/nshostingcontroller/init(coder:rootview:)) Creates a hosting controller object from an archive and the specified SwiftUI view.
- [init(coder:)](/documentation/swiftui/nshostingcontroller/init(coder:)) Creates a hosting controller object from the contents of the specified archive.

## Getting the root view

- [rootView](/documentation/swiftui/nshostingcontroller/rootview) The root view of the SwiftUI view hierarchy managed by this view controller.
- [identifier](/documentation/swiftui/nshostingcontroller/identifier)

## Configuring the controller

- [sizeThatFits(in:)](/documentation/swiftui/nshostingcontroller/sizethatfits(in:)) Calculates and returns the most appropriate size for the current view.
- [preferredContentSize](/documentation/swiftui/nshostingcontroller/preferredcontentsize)
- [sizingOptions](/documentation/swiftui/nshostingcontroller/sizingoptions) The options for how the hosting controller’s view creates and updates constraints based on the size of its SwiftUI content.
- [safeAreaRegions](/documentation/swiftui/nshostingcontroller/safearearegions) The safe area regions that this view controller adds to its view.
- [sceneBridgingOptions](/documentation/swiftui/nshostingcontroller/scenebridgingoptions) The options for which aspects of the window will be managed by this controller’s hosting view.

## Displaying SwiftUI views in AppKit

- [Unifying your app’s animations](/documentation/swiftui/unifying-your-app-s-animations)
- [NSHostingView](/documentation/swiftui/nshostingview)
- [NSHostingMenu](/documentation/swiftui/nshostingmenu)
- [NSHostingSizingOptions](/documentation/swiftui/nshostingsizingoptions)
- [NSHostingSceneRepresentation](/documentation/swiftui/nshostingscenerepresentation)
- [NSHostingSceneBridgingOptions](/documentation/swiftui/nshostingscenebridgingoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
