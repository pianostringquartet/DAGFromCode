---
title: privacySensitive(_:)
description: Marks the control template as containing sensitive, private user data.
source: https://developer.apple.com/documentation/swiftui/controlwidgettemplate/privacysensitive(_:)
timestamp: 2025-10-29T00:09:26.299Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [controlwidgettemplate](/documentation/swiftui/controlwidgettemplate)

**Instance Method**

# privacySensitive(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 26.0+, watchOS 26.0+

> Marks the control template as containing sensitive, private user data.

```swift
@MainActor @preconcurrency func privacySensitive(_ sensitive: Bool = true) -> some ControlWidgetTemplate
```

## Parameters

**sensitive**

A Boolean value that determines whether this control is sensitive.



## Discussion

The system redacts controls marked with this modifier when those controls are displayed on the Lock Screen and the device is locked.

Controls also respect the [privacySensitive(_:)](/documentation/swiftui/view/privacysensitive(_:)) modifier applied to the control’s label. That modifier only redacts the control content, however. To redact the content *and* the state of the control, apply this modifier to the control template:

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
            .privacySensitive()
        }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
