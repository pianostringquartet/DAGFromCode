---
title: presentationBackground(_:)
description: Sets the presentation background of the enclosing sheet using a shape style.
source: https://developer.apple.com/documentation/swiftui/view/presentationbackground(_:)
timestamp: 2025-10-29T00:12:14.849Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# presentationBackground(_:)

**Available on:** iOS 16.4+, iPadOS 16.4+, Mac Catalyst 16.4+, macOS 13.3+, tvOS 16.4+, visionOS 1.0+, watchOS 9.4+

> Sets the presentation background of the enclosing sheet using a shape style.

```swift
nonisolated func presentationBackground<S>(_ style: S) -> some View where S : ShapeStyle
```

## Parameters

**style**

The shape style to use as the presentation background.



## Discussion

The following example uses the [thick](/documentation/swiftui/material/thick) material as the sheet background:

```swift
struct ContentView: View {
    @State private var showSettings = false

    var body: some View {
        Button("View Settings") {
            showSettings = true
        }
        .sheet(isPresented: $showSettings) {
            SettingsView()
                .presentationBackground(.thickMaterial)
        }
    }
}
```

The `presentationBackground(_:)` modifier differs from the [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:)) modifier in several key ways. A presentation background:

- Automatically fills the entire presentation.
- Allows views behind the presentation to show through translucent styles on supported platforms.

> [!NOTE]
> Sheet presentations on macOS do not support translucency or transparency — the background is always opaque.

## Styling a sheet and its background

- [presentationCornerRadius(_:)](/documentation/swiftui/view/presentationcornerradius(_:))
- [presentationBackground(alignment:content:)](/documentation/swiftui/view/presentationbackground(alignment:content:))
- [presentationBackgroundInteraction(_:)](/documentation/swiftui/view/presentationbackgroundinteraction(_:))
- [PresentationBackgroundInteraction](/documentation/swiftui/presentationbackgroundinteraction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
