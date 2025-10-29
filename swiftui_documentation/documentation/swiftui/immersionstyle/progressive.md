---
title: progressive
description: An immersion style that displays unbounded content that partially replaces passthrough video.
source: https://developer.apple.com/documentation/swiftui/immersionstyle/progressive
timestamp: 2025-10-29T00:10:14.811Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [immersionstyle](/documentation/swiftui/immersionstyle)

**Type Property**

# progressive

**Available on:** macOS 26.0+, visionOS 1.0+

> An immersion style that displays unbounded content that partially replaces passthrough video.

```swift
static var progressive: ProgressiveImmersionStyle { get }
```

## Discussion

The system initially uses a radial portal effect that replaces passthrough in a portion of the field of view. People can interactively adjust the size of the portal by turning the Digital Crown, including down to a minimum amount of immersion defined by the system and up to the point where the portal fully covers passthrough. If someone tries to reduce the portal size below the minimum value, the portal smoothly bounces back to the minimum size. The portal’s behavior at the maximum size matches the behavior of the [full](/documentation/swiftui/immersionstyle/full) immersion style, including the configurable visibility of the viewer’s upper limbs.

When this immersion style is selected, the immersion amount reported by the closure of [onImmersionChange(initial:_:)](/documentation/swiftui/view/onimmersionchange(initial:_:)) is within the range of the immersion that this style uses.

Use the [immersionStyle(selection:in:)](/documentation/swiftui/scene/immersionstyle(selection:in:)) scene modifier to specify this style for an [Immersive Space](/documentation/swiftui/immersivespace):

```swift
@main
struct ImmersiveApp: App {
    @State private var immersionStyle: ImmersionStyle = .progressive
    var body: some Scene {
        ImmersiveSpace { ... }
        .immersionStyle(selection: $immersionStyle, in: .progressive))
    }
}
```

The immersion style affects how windows interact with virtual objects in the environment. In `progressive` immersion, windows always render in front of virtual content, no matter how someone positions the window or the content. This helps people avoid losing track of windows behind virtual content when passthrough is off.

## Getting built-in styles

- [automatic](/documentation/swiftui/immersionstyle/automatic)
- [full](/documentation/swiftui/immersionstyle/full)
- [mixed](/documentation/swiftui/immersionstyle/mixed)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
