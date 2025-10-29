---
title: presentationBackground(alignment:content:)
description: Sets the presentation background of the enclosing sheet to a custom view.
source: https://developer.apple.com/documentation/swiftui/view/presentationbackground(alignment:content:)
timestamp: 2025-10-29T00:11:29.671Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# presentationBackground(alignment:content:)

**Available on:** iOS 16.4+, iPadOS 16.4+, Mac Catalyst 16.4+, macOS 13.3+, tvOS 16.4+, visionOS 1.0+, watchOS 9.4+

> Sets the presentation background of the enclosing sheet to a custom view.

```swift
nonisolated func presentationBackground<V>(alignment: Alignment = .center, @ViewBuilder content: () -> V) -> some View where V : View
```

## Parameters

**alignment**

The alignment that the modifier uses to position the implicit [ZStack](/documentation/swiftui/zstack) that groups the background views. The default is [center](/documentation/swiftui/alignment/center).



**content**

The view to use as the background of the presentation.



## Discussion

The following example uses a yellow view as the sheet background:

```swift
struct ContentView: View {
    @State private var showSettings = false

    var body: some View {
        Button("View Settings") {
            showSettings = true
        }
        .sheet(isPresented: $showSettings) {
            SettingsView()
                .presentationBackground {
                    Color.yellow
                }
        }
    }
}
```

The `presentationBackground(alignment:content:)` modifier differs from the [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:)) modifier in several key ways. A presentation background:

- Automatically fills the entire presentation.
- Allows views behind the presentation to show through translucent areas of the `content` on supported platforms.

> [!NOTE]
> Sheet presentations on macOS do not support translucency or transparency — the background is always opaque.

## Styling a sheet and its background

- [presentationCornerRadius(_:)](/documentation/swiftui/view/presentationcornerradius(_:))
- [presentationBackground(_:)](/documentation/swiftui/view/presentationbackground(_:))
- [presentationBackgroundInteraction(_:)](/documentation/swiftui/view/presentationbackgroundinteraction(_:))
- [PresentationBackgroundInteraction](/documentation/swiftui/presentationbackgroundinteraction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
