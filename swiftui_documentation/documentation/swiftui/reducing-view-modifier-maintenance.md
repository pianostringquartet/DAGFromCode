---
title: Reducing view modifier maintenance
description: Bundle view modifiers that you regularly reuse into a custom view modifier.
source: https://developer.apple.com/documentation/swiftui/reducing-view-modifier-maintenance
timestamp: 2025-10-29T00:10:15.914Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Article**

# Reducing view modifier maintenance

> Bundle view modifiers that you regularly reuse into a custom view modifier.

## Overview

To create consistent views, you might reuse the same view modifier or group of modifiers repeatedly across your views. For example, you might apply the same font and foreground color to many text instances throughout your app, so they all match. Unfortunately, this can lead to maintenance challenges, because even a small change in format, like a different font size, requires changes in many different parts of your code.

To avoid this overhead, collect a set of modifiers into a single location using an instance of the [View Modifier](/documentation/swiftui/viewmodifier) protocol. Then, extend the [View](/documentation/swiftui/view) protocol with a method that uses your modifier, making it easy to use and understand. Collecting the modifiers together provides a single location to update when you want to change them.

### Create a custom view modifier

When you create your custom modifier, name it to reflect the purpose of the collection. For example, if you repeatedly apply the [caption](/documentation/swiftui/font/caption) font style and a secondary color scheme to views to represent a secondary styling, collect them together as `CaptionTextFormat`:

```swift
struct CaptionTextFormat: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.caption)
            .foregroundColor(.secondary)
    }
}
```

Apply your modifier using the [modifier(_:)](/documentation/swiftui/view/modifier(_:)) method. The following code applies the above example to a [Text](/documentation/swiftui/text) instance:

```swift
Text("Some additional information...")
    .modifier(CaptionTextFormat())
```

### Extend the view protocol to provide fluent modifier access

To make your custom view modifier conveniently accessible, extend the [View](/documentation/swiftui/view) protocol with a function that applies your modifier:

```swift
extension View {
    func captionTextFormat() -> some View {
        modifier(CaptionTextFormat())
    }
}
```

Apply the modifier to a text view by including this extension:

```swift
Text("Some additional information...")
    .captionTextFormat()
```

## Modifying a view

- [Configuring views](/documentation/swiftui/configuring-views)
- [modifier(_:)](/documentation/swiftui/view/modifier(_:))
- [ViewModifier](/documentation/swiftui/viewmodifier)
- [EmptyModifier](/documentation/swiftui/emptymodifier)
- [ModifiedContent](/documentation/swiftui/modifiedcontent)
- [EnvironmentalModifier](/documentation/swiftui/environmentalmodifier)
- [ManipulableModifier](/documentation/swiftui/manipulablemodifier)
- [ManipulableResponderModifier](/documentation/swiftui/manipulablerespondermodifier)
- [ManipulableTransformBindingModifier](/documentation/swiftui/manipulabletransformbindingmodifier)
- [ManipulationGeometryModifier](/documentation/swiftui/manipulationgeometrymodifier)
- [ManipulationGestureModifier](/documentation/swiftui/manipulationgesturemodifier)
- [ManipulationUsingGestureStateModifier](/documentation/swiftui/manipulationusinggesturestatemodifier)
- [Manipulable](/documentation/swiftui/manipulable)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
