---
title: TapGesture
description: A gesture that recognizes one or more taps.
source: https://developer.apple.com/documentation/swiftui/tapgesture
timestamp: 2025-10-29T00:15:24.593Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TapGesture

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 16.0+, visionOS 1.0+, watchOS 6.0+

> A gesture that recognizes one or more taps.

```swift
struct TapGesture
```

## Overview

To recognize a tap gesture on a view, create and configure the gesture, and then add it to the view using the [gesture(_:including:)](/documentation/swiftui/view/gesture(_:including:)) modifier. The following code adds a tap gesture to a [Circle](/documentation/swiftui/circle) that toggles the color of the circle:

```swift
struct TapGestureView: View {
    @State private var tapped = false

    var tap: some Gesture {
        TapGesture(count: 1)
            .onEnded { _ in self.tapped = !self.tapped }
    }

    var body: some View {
        Circle()
            .fill(self.tapped ? Color.blue : Color.red)
            .frame(width: 100, height: 100, alignment: .center)
            .gesture(tap)
    }
}
```

## Conforms To

- [Gesture](/documentation/swiftui/gesture)

## Creating a tap gesture

- [init(count:)](/documentation/swiftui/tapgesture/init(count:)) Creates a tap gesture with the number of required taps.
- [count](/documentation/swiftui/tapgesture/count) The required number of tap events.

## Recognizing tap gestures

- [onTapGesture(count:perform:)](/documentation/swiftui/view/ontapgesture(count:perform:))
- [onTapGesture(count:coordinateSpace:perform:)](/documentation/swiftui/view/ontapgesture(count:coordinatespace:perform:))
- [SpatialTapGesture](/documentation/swiftui/spatialtapgesture)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
