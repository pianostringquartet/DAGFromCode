---
title: presentationDragIndicator(_:)
description: Sets the visibility of the drag indicator on top of a sheet.
source: https://developer.apple.com/documentation/swiftui/view/presentationdragindicator(_:)
timestamp: 2025-10-29T00:09:47.171Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# presentationDragIndicator(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Sets the visibility of the drag indicator on top of a sheet.

```swift
nonisolated func presentationDragIndicator(_ visibility: Visibility) -> some View
```

## Parameters

**visibility**

The preferred visibility of the drag indicator.



## Discussion

You can show a drag indicator when it isn’t apparent that a sheet can resize or when the sheet can’t dismiss interactively.

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
                .presentationDragIndicator(.visible)
        }
    }
}
```

## Configuring a sheet’s height

- [presentationDetents(_:)](/documentation/swiftui/view/presentationdetents(_:))
- [presentationDetents(_:selection:)](/documentation/swiftui/view/presentationdetents(_:selection:))
- [presentationContentInteraction(_:)](/documentation/swiftui/view/presentationcontentinteraction(_:))
- [PresentationDetent](/documentation/swiftui/presentationdetent)
- [CustomPresentationDetent](/documentation/swiftui/custompresentationdetent)
- [PresentationContentInteraction](/documentation/swiftui/presentationcontentinteraction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
