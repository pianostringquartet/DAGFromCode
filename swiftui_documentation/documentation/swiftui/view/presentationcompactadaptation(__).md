---
title: presentationCompactAdaptation(_:)
description: Specifies how to adapt a presentation to compact size classes.
source: https://developer.apple.com/documentation/swiftui/view/presentationcompactadaptation(_:)
timestamp: 2025-10-29T00:12:12.621Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# presentationCompactAdaptation(_:)

**Available on:** iOS 16.4+, iPadOS 16.4+, Mac Catalyst 16.4+, macOS 13.3+, tvOS 16.4+, visionOS 1.0+, watchOS 9.4+

> Specifies how to adapt a presentation to compact size classes.

```swift
nonisolated func presentationCompactAdaptation(_ adaptation: PresentationAdaptation) -> some View
```

## Parameters

**adaptation**

The adaptation to use in either a horizontally or vertically compact size class.



## Discussion

Some presentations adapt their appearance depending on the context. For example, a sheet presentation over a vertically-compact view uses a full-screen-cover appearance by default. Use this modifier to indicate a custom adaptation preference. For example, the following code uses a presentation adaptation value of [none](/documentation/swiftui/presentationadaptation/none) to request that the system not adapt the sheet in compact size classes:

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
                .presentationCompactAdaptation(.none)
        }
    }
}
```

If you want to specify different adaptations for each dimension, use the [presentationCompactAdaptation(horizontal:vertical:)](/documentation/swiftui/view/presentationcompactadaptation(horizontal:vertical:)) method instead.

## Adapting a presentation size

- [presentationCompactAdaptation(horizontal:vertical:)](/documentation/swiftui/view/presentationcompactadaptation(horizontal:vertical:))
- [PresentationAdaptation](/documentation/swiftui/presentationadaptation)
- [presentationSizing(_:)](/documentation/swiftui/view/presentationsizing(_:))
- [PresentationSizing](/documentation/swiftui/presentationsizing)
- [PresentationSizingRoot](/documentation/swiftui/presentationsizingroot)
- [PresentationSizingContext](/documentation/swiftui/presentationsizingcontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
