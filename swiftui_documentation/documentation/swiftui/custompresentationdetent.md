---
title: CustomPresentationDetent
description: The definition of a custom detent with a calculated height.
source: https://developer.apple.com/documentation/swiftui/custompresentationdetent
timestamp: 2025-10-29T00:09:30.908Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# CustomPresentationDetent

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The definition of a custom detent with a calculated height.

```swift
protocol CustomPresentationDetent
```

## Overview

You can create and use a custom detent with built-in detents.

```swift
extension PresentationDetent {
    static let bar = Self.custom(BarDetent.self)
    static let small = Self.height(100)
    static let extraLarge = Self.fraction(0.75)
}

private struct BarDetent: CustomPresentationDetent {
    static func height(in context: Context) -> CGFloat? {
        max(44, context.maxDetentValue * 0.1)
    }
}

struct ContentView: View {
    @State private var showSettings = false
    @State private var selectedDetent = PresentationDetent.bar

    var body: some View {
        Button("View Settings") {
            showSettings = true
        }
        .sheet(isPresented: $showSettings) {
            SettingsView(selectedDetent: $selectedDetent)
                .presentationDetents(
                    [.bar, .small, .medium, .large, .extraLarge],
                    selection: $selectedDetent)
        }
    }
}
```

## Getting the height

- [height(in:)](/documentation/swiftui/custompresentationdetent/height(in:)) Calculates and returns a height based on the context.
- [CustomPresentationDetent.Context](/documentation/swiftui/custompresentationdetent/context) Information that you can use to calculate the height of a custom detent.

## Configuring a sheet’s height

- [presentationDetents(_:)](/documentation/swiftui/view/presentationdetents(_:))
- [presentationDetents(_:selection:)](/documentation/swiftui/view/presentationdetents(_:selection:))
- [presentationContentInteraction(_:)](/documentation/swiftui/view/presentationcontentinteraction(_:))
- [presentationDragIndicator(_:)](/documentation/swiftui/view/presentationdragindicator(_:))
- [PresentationDetent](/documentation/swiftui/presentationdetent)
- [PresentationContentInteraction](/documentation/swiftui/presentationcontentinteraction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
