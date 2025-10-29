---
title: background(_:alignment:)
description: Layers the given view behind this view.
source: https://developer.apple.com/documentation/swiftui/view/background(_:alignment:)
timestamp: 2025-10-29T00:13:54.690Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# background(_:alignment:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Layers the given view behind this view.

```swift
nonisolated func background<Background>(_ background: Background, alignment: Alignment = .center) -> some View where Background : View
```

## Parameters

**background**

The view to draw behind this view.



**alignment**

The alignment with a default value of [center](/documentation/swiftui/alignment/center) that you use to position the background view.



## Discussion

Use `background(_:alignment:)` when you need to place one view behind another, with the background view optionally aligned with a specified edge of the frontmost view.

The example below creates two views: the `Frontmost` view, and the `DiamondBackground` view. The `Frontmost` view uses the `DiamondBackground` view for the background of the image element inside the `Frontmost` view’s [VStack](/documentation/swiftui/vstack).

```swift
struct DiamondBackground: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.gray)
                .frame(width: 250, height: 250, alignment: .center)
                .rotationEffect(.degrees(45.0))
        }
    }
}

struct Frontmost: View {
    var body: some View {
        VStack {
            Image(systemName: "folder")
                .font(.system(size: 128, weight: .ultraLight))
                .background(DiamondBackground())
        }
    }
}
```



## Appearance modifiers

- [colorScheme(_:)](/documentation/swiftui/view/colorscheme(_:))
- [listRowPlatterColor(_:)](/documentation/swiftui/view/listrowplattercolor(_:))
- [overlay(_:alignment:)](/documentation/swiftui/view/overlay(_:alignment:))
- [foregroundColor(_:)](/documentation/swiftui/view/foregroundcolor(_:))
- [complicationForeground()](/documentation/swiftui/view/complicationforeground())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
