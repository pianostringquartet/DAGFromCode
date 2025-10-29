---
title: presentationDetents(_:)
description: Sets the available detents for the enclosing sheet.
source: https://developer.apple.com/documentation/swiftui/view/presentationdetents(_:)
timestamp: 2025-10-29T00:09:50.409Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# presentationDetents(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Sets the available detents for the enclosing sheet.

```swift
nonisolated func presentationDetents(_ detents: Set<PresentationDetent>) -> some View
```

## Parameters

**detents**

A set of supported detents for the sheet. If you provide more that one detent, people can drag the sheet to resize it.



## Discussion

By default, sheets support the [large](/documentation/swiftui/presentationdetent/large) detent.

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
        }
    }
}
```

## Configuring a sheet’s height

- [presentationDetents(_:selection:)](/documentation/swiftui/view/presentationdetents(_:selection:))
- [presentationContentInteraction(_:)](/documentation/swiftui/view/presentationcontentinteraction(_:))
- [presentationDragIndicator(_:)](/documentation/swiftui/view/presentationdragindicator(_:))
- [PresentationDetent](/documentation/swiftui/presentationdetent)
- [CustomPresentationDetent](/documentation/swiftui/custompresentationdetent)
- [PresentationContentInteraction](/documentation/swiftui/presentationcontentinteraction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
