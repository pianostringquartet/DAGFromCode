---
title: presentationContentInteraction(_:)
description: Configures the behavior of swipe gestures on a presentation.
source: https://developer.apple.com/documentation/swiftui/view/presentationcontentinteraction(_:)
timestamp: 2025-10-29T00:12:35.573Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# presentationContentInteraction(_:)

**Available on:** iOS 16.4+, iPadOS 16.4+, Mac Catalyst 16.4+, macOS 13.3+, tvOS 16.4+, visionOS 1.0+, watchOS 9.4+

> Configures the behavior of swipe gestures on a presentation.

```swift
nonisolated func presentationContentInteraction(_ behavior: PresentationContentInteraction) -> some View
```

## Parameters

**behavior**

The requested behavior.



## Discussion

By default, when a person swipes up on a scroll view in a resizable presentation, the presentation grows to the next detent. A scroll view embedded in the presentation only scrolls after the presentation reaches its largest size. Use this modifier to control which action takes precedence.

For example, you can request that swipe gestures scroll content first, resizing the sheet only after hitting the end of the scroll view, by passing the [scrolls](/documentation/swiftui/presentationcontentinteraction/scrolls) value to this modifier:

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
                .presentationContentInteraction(.scrolls)
        }
    }
}
```

People can always resize your presentation using the drag indicator.

## Configuring a sheet’s height

- [presentationDetents(_:)](/documentation/swiftui/view/presentationdetents(_:))
- [presentationDetents(_:selection:)](/documentation/swiftui/view/presentationdetents(_:selection:))
- [presentationDragIndicator(_:)](/documentation/swiftui/view/presentationdragindicator(_:))
- [PresentationDetent](/documentation/swiftui/presentationdetent)
- [CustomPresentationDetent](/documentation/swiftui/custompresentationdetent)
- [PresentationContentInteraction](/documentation/swiftui/presentationcontentinteraction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
