---
title: presentationCornerRadius(_:)
description: Requests that the presentation have a specific corner radius.
source: https://developer.apple.com/documentation/swiftui/view/presentationcornerradius(_:)
timestamp: 2025-10-29T00:10:03.757Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# presentationCornerRadius(_:)

**Available on:** iOS 16.4+, iPadOS 16.4+, Mac Catalyst 16.4+, macOS 13.3+, tvOS 16.4+, visionOS 1.0+, watchOS 9.4+

> Requests that the presentation have a specific corner radius.

```swift
nonisolated func presentationCornerRadius(_ cornerRadius: CGFloat?) -> some View
```

## Parameters

**cornerRadius**

The corner radius, or `nil` to use the system default.



## Discussion

Use this modifier to change the corner radius of a presentation.

```swift
struct ContentView: View {
    @State private var showSettings = false

    var body: some View {
        Button("View Settings") {
            showSettings = true
        }
        .sheet(isPresented: $showSettings) {
            SettingsView()
                .presentationDetents([.medium, .large])
                .presentationCornerRadius(21)
        }
    }
}
```

> [!NOTE]
> Configuring a corner radius is not supported on watchOS, tvOS, or macOS.

## Styling a sheet and its background

- [presentationBackground(_:)](/documentation/swiftui/view/presentationbackground(_:))
- [presentationBackground(alignment:content:)](/documentation/swiftui/view/presentationbackground(alignment:content:))
- [presentationBackgroundInteraction(_:)](/documentation/swiftui/view/presentationbackgroundinteraction(_:))
- [PresentationBackgroundInteraction](/documentation/swiftui/presentationbackgroundinteraction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
