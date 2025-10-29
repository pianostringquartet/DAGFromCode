---
title: SpatialEventGesture
description: A gesture that provides information about ongoing spatial events like clicks and touches.
source: https://developer.apple.com/documentation/swiftui/spatialeventgesture
timestamp: 2025-10-29T00:12:07.589Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SpatialEventGesture

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 1.0+, watchOS 11.0+

> A gesture that provides information about ongoing spatial events like clicks and touches.

```swift
struct SpatialEventGesture
```

## Overview

Use a gesture of this type to track multiple simultaneous spatial events and gain access to detailed information about each. For example, you can place a particle emitter at every location in a [Canvas](/documentation/swiftui/canvas) that has an ongoing spatial event:

```swift
struct ParticlePlayground: View {
    @State var model = ParticlesModel()

    var body: some View {
        Canvas { context, size in
            for particle in model.particles {
                context.fill(Path(ellipseIn: particle.frame),
                             with: .color(particle.color))
            }
        }
        .gesture(
            SpatialEventGesture()
                .onChanged { events in
                    for event in events {
                        if event.phase == .active {
                            // Update particle emitters.
                            model.emitters[event.id] = ParticlesModel.Emitter(
                                location: event.location
                            )
                        } else {
                            // Remove emitters when no longer active.
                            model.emitters[event.id] = nil
                        }
                    }
                }
                .onEnded { events in
                    for event in events {
                        // Remove emitters when no longer active.
                        model.emitters[event.id] = nil
                    }
                }
        )
    }
}
```

The gesture provides a [Spatial Event Collection](/documentation/swiftui/spatialeventcollection) structure when it detects changes. The collection contains [Event](/documentation/swiftui/spatialeventcollection/event) values that represent ongoing spatial events. Each event contains a stable, unique identifier so that you can track how the event changes over time. The event also indicates its current location, a timestamp, the pose of the input device that creates it, and other useful information.

The phase of events in the collection can change to [ended](/documentation/swiftui/spatialeventcollection/event/phase-swift.enum/ended) or [cancelled](/documentation/swiftui/spatialeventcollection/event/phase-swift.enum/cancelled) while the gesture itself remains active. Individually track state for each event inside [onChanged(_:)](/documentation/swiftui/gesture/onchanged(_:)) or [updating(_:body:)](/documentation/swiftui/gesture/updating(_:body:)) and clean up all state in [onEnded(_:)](/documentation/swiftui/gesture/onended(_:)).

> [!TIP]
> Only use a spatial event gesture if you need to access low-level event information, like when you create a complex multi-touch experience. For most use cases, it’s better to rely on gestures that recognize targeted interactions, like a [Spatial Tap Gesture](/documentation/swiftui/spatialtapgesture), [Magnify Gesture](/documentation/swiftui/magnifygesture), or [Drag Gesture](/documentation/swiftui/draggesture).

## Conforms To

- [Gesture](/documentation/swiftui/gesture)

## Creating a spatial event gesture

- [init(coordinateSpace:)](/documentation/swiftui/spatialeventgesture/init(coordinatespace:)) Creates the gesture with a desired coordinate space.

## Getting gesture properties

- [coordinateSpace](/documentation/swiftui/spatialeventgesture/coordinatespace) The coordinate space of the gesture.

## Initializers

- [init(coordinateSpace3D:)](/documentation/swiftui/spatialeventgesture/init(coordinatespace3d:)) Creates the gesture with a desired coordinate space 3D.

## Recognizing spatial events

- [SpatialEventCollection](/documentation/swiftui/spatialeventcollection)
- [Chirality](/documentation/swiftui/chirality)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
