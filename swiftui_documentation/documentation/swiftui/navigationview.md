---
title: NavigationView
description: A view for presenting a stack of views that represents a visible path in a navigation hierarchy.
source: https://developer.apple.com/documentation/swiftui/navigationview
timestamp: 2025-10-29T00:11:19.211Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# NavigationView

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 7.0+

> A view for presenting a stack of views that represents a visible path in a navigation hierarchy.

```swift
struct NavigationView<Content> where Content : View
```

## Overview

Use a `NavigationView` to create a navigation-based app in which the user can traverse a collection of views. Users navigate to a destination view by selecting a [Navigation Link](/documentation/swiftui/navigationlink) that you provide. On iPadOS and macOS, the destination content appears in the next column. Other platforms push a new view onto the stack, and enable removing items from the stack with platform-specific controls, like a Back button or a swipe gesture.



Use the [init(content:)](/documentation/swiftui/navigationview/init(content:)) initializer to create a navigation view that directly associates navigation links and their destination views:

```swift
NavigationView {
    List(model.notes) { note in
        NavigationLink(note.title, destination: NoteEditor(id: note.id))
    }
    Text("Select a Note")
}
```

Style a navigation view by modifying it with the [navigationViewStyle(_:)](/documentation/swiftui/view/navigationviewstyle(_:)) view modifier. Use other modifiers, like [navigationTitle(_:)](/documentation/swiftui/view/navigationtitle(_:)-avgj), on views presented by the navigation view to customize the navigation interface for the presented view.

## Conforms To

- [View](/documentation/swiftui/view)

## Creating a navigation view

- [init(content:)](/documentation/swiftui/navigationview/init(content:)) Creates a destination-based navigation view.

## Styling navigation views

- [navigationViewStyle(_:)](/documentation/swiftui/view/navigationviewstyle(_:)) Sets the style for navigation views within this view.
- [NavigationViewStyle](/documentation/swiftui/navigationviewstyle) A specification for the appearance and interaction of a navigation view.

## Deprecated Types

- [tabItem(_:)](/documentation/swiftui/view/tabitem(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
