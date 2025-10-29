---
title: tint(_:)
description: Sets the tint color within this control template.
source: https://developer.apple.com/documentation/swiftui/controlwidgettemplate/tint(_:)
timestamp: 2025-10-29T00:14:30.316Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [controlwidgettemplate](/documentation/swiftui/controlwidgettemplate)

**Instance Method**

# tint(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 26.0+, watchOS 26.0+

> Sets the tint color within this control template.

```swift
@MainActor @preconcurrency func tint(_ tint: Color?) -> some ControlWidgetTemplate
```

## Parameters

**tint**

The tint [Color](/documentation/swiftui/color) to apply.



## Discussion

Controls don’t respect the [tint(_:)](/documentation/swiftui/view/tint(_:)) modifier when applied to control labels, nor do controls support arbitrary tint shape styles. Instead, define a tint color for your control by applying this modifier to its template:

```swift
struct GarageDoorOpener: ControlWidget {
    var body: some ControlWidgetConfiguration {
        StaticControlConfiguration(...) {
            ControlWidgetToggle(...) {
                Label(
                    $0 ? "Open" : "Closed",
                    systemImage: $0 ? "door.open" : "door.closed"
                )
            }
            .tint(.orange)
        }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
