---
title: ViewModifier
description: A modifier that you apply to a view or another view modifier, producing a different version of the original value.
source: https://developer.apple.com/documentation/swiftui/viewmodifier
timestamp: 2025-10-29T00:13:48.885Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# ViewModifier

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A modifier that you apply to a view or another view modifier, producing a different version of the original value.

```swift
@MainActor @preconcurrency protocol ViewModifier
```

## Overview

Adopt the [View Modifier](/documentation/swiftui/viewmodifier) protocol when you want to create a reusable modifier that you can apply to any view. The example below combines several modifiers to create a new modifier that you can use to create blue caption text surrounded by a rounded rectangle:

```swift
struct BorderedCaption: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.caption2)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 1)
            )
            .foregroundColor(Color.blue)
    }
}
```

You can apply [modifier(_:)](/documentation/swiftui/view/modifier(_:)) directly to a view, but a more common and idiomatic approach uses [modifier(_:)](/documentation/swiftui/view/modifier(_:)) to define an extension to [View](/documentation/swiftui/view) itself that incorporates the view modifier:

```swift
extension View {
    func borderedCaption() -> some View {
        modifier(BorderedCaption())
    }
}
```

You can then apply the bordered caption to any view, similar to this:

```swift
Image(systemName: "bus")
    .resizable()
    .frame(width:50, height:50)
Text("Downtown Bus")
    .borderedCaption()
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

## Inherited By

- [AnimatableModifier](/documentation/swiftui/animatablemodifier)
- [EnvironmentalModifier](/documentation/swiftui/environmentalmodifier)
- [GeometryEffect](/documentation/swiftui/geometryeffect)

## Conforming Types

- [AccessibilityAttachmentModifier](/documentation/swiftui/accessibilityattachmentmodifier)
- [EmptyModifier](/documentation/swiftui/emptymodifier)
- [LayoutRotationUnaryLayout](/documentation/swiftui/layoutrotationunarylayout)
- [ManipulableModifier](/documentation/swiftui/manipulablemodifier)
- [ManipulableResponderModifier](/documentation/swiftui/manipulablerespondermodifier)
- [ManipulableTransformBindingModifier](/documentation/swiftui/manipulabletransformbindingmodifier)
- [ManipulationGeometryModifier](/documentation/swiftui/manipulationgeometrymodifier)
- [ManipulationGestureModifier](/documentation/swiftui/manipulationgesturemodifier)
- [ManipulationUsingGestureStateModifier](/documentation/swiftui/manipulationusinggesturestatemodifier)
- [ModifiedContent](/documentation/swiftui/modifiedcontent)

## Creating a view modifier

- [body(content:)](/documentation/swiftui/viewmodifier/body(content:)) Gets the current body of the caller.
- [Body](/documentation/swiftui/viewmodifier/body) The type of view representing the body.
- [ViewModifier.Content](/documentation/swiftui/viewmodifier/content) The content view type passed to .

## Adding animations to a view

- [animation(_:)](/documentation/swiftui/viewmodifier/animation(_:)) Returns a new version of the modifier that will apply  to all animatable values within the modifier.
- [concat(_:)](/documentation/swiftui/viewmodifier/concat(_:)) Returns a new modifier that is the result of concatenating  with .

## Handling view taps and gestures

- [transaction(_:)](/documentation/swiftui/viewmodifier/transaction(_:)) Returns a new version of the modifier that will apply the transaction mutation function  to all transactions within the modifier.

## Modifying a view

- [Configuring views](/documentation/swiftui/configuring-views)
- [Reducing view modifier maintenance](/documentation/swiftui/reducing-view-modifier-maintenance)
- [modifier(_:)](/documentation/swiftui/view/modifier(_:))
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
