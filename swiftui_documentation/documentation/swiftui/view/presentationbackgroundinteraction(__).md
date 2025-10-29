---
title: presentationBackgroundInteraction(_:)
description: Controls whether people can interact with the view behind a presentation.
source: https://developer.apple.com/documentation/swiftui/view/presentationbackgroundinteraction(_:)
timestamp: 2025-10-29T00:10:06.931Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# presentationBackgroundInteraction(_:)

**Available on:** iOS 16.4+, iPadOS 16.4+, Mac Catalyst 16.4+, macOS 13.3+, tvOS 16.4+, visionOS 1.0+, watchOS 9.4+

> Controls whether people can interact with the view behind a presentation.

```swift
nonisolated func presentationBackgroundInteraction(_ interaction: PresentationBackgroundInteraction) -> some View
```

## Parameters

**interaction**

A specification of how people can interact with the view behind a presentation.



## Discussion

On many platforms, SwiftUI automatically disables the view behind a sheet that you present, so that people can’t interact with the backing view until they dismiss the sheet. Use this modifier if you want to enable interaction.

The following example enables people to interact with the view behind the sheet when the sheet is at the smallest detent, but not at the other detents:

```swift
struct ContentView: View {
    @State private var showSettings = false

    var body: some View {
        Button("View Settings") {
            showSettings = true
        }
        .sheet(isPresented: $showSettings) {
            SettingsView()
                .presentationDetents(
                    [.height(120), .medium, .large])
                .presentationBackgroundInteraction(
                    .enabled(upThrough: .height(120)))
        }
    }
}
```

## Styling a sheet and its background

- [presentationCornerRadius(_:)](/documentation/swiftui/view/presentationcornerradius(_:))
- [presentationBackground(_:)](/documentation/swiftui/view/presentationbackground(_:))
- [presentationBackground(alignment:content:)](/documentation/swiftui/view/presentationbackground(alignment:content:))
- [PresentationBackgroundInteraction](/documentation/swiftui/presentationbackgroundinteraction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
