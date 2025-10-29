---
title: EmptyModifier
description: An empty, or identity, modifier, used during development to switch modifiers at compile time.
source: https://developer.apple.com/documentation/swiftui/emptymodifier
timestamp: 2025-10-29T00:13:27.242Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# EmptyModifier

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An empty, or identity, modifier, used during development to switch modifiers at compile time.

```swift
@frozen struct EmptyModifier
```

## Overview

Use the empty modifier to switch modifiers at compile time during development. In the example below, in a debug build the [Text](/documentation/swiftui/text) view inside `ContentView` has a yellow background and a red border. A non-debug build reflects the default system, or container supplied appearance.

```swift
struct EmphasizedLayout: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.yellow)
            .border(Color.red)
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .modifier(modifier)
    }

    var modifier: some ViewModifier {
        #if DEBUG
            return EmphasizedLayout()
        #else
            return EmptyModifier()
        #endif
    }
}
```

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [ViewModifier](/documentation/swiftui/viewmodifier)

## Creating an empty modifier

- [init()](/documentation/swiftui/emptymodifier/init())

## Getting the identity modifier

- [identity](/documentation/swiftui/emptymodifier/identity)

## Modifying a view

- [Configuring views](/documentation/swiftui/configuring-views)
- [Reducing view modifier maintenance](/documentation/swiftui/reducing-view-modifier-maintenance)
- [modifier(_:)](/documentation/swiftui/view/modifier(_:))
- [ViewModifier](/documentation/swiftui/viewmodifier)
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
