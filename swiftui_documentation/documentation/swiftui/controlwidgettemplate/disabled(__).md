---
title: disabled(_:)
description: Determines whether people can interact with this control.
source: https://developer.apple.com/documentation/swiftui/controlwidgettemplate/disabled(_:)
timestamp: 2025-10-29T00:12:06.802Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [controlwidgettemplate](/documentation/swiftui/controlwidgettemplate)

**Instance Method**

# disabled(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 26.0+, watchOS 26.0+

> Determines whether people can interact with this control.

```swift
@MainActor @preconcurrency func disabled(_ disabled: Bool) -> some ControlWidgetTemplate
```

## Parameters

**disabled**

A Boolean value that determines whether users can interact with this control.



## Discussion

Controls also respect the [disabled(_:)](/documentation/swiftui/view/disabled(_:)) modifier applied to the control’s label. That modifier only disables the label, however. To disable the control overall, apply this modifier to the control template:

```swift
struct GarageDoorOpener: ControlWidget {
    var body: some ControlWidgetConfiguration {
        StaticControlConfiguration(
            kind: "com.myapp.garagedooropener",
            provider: DoorValueProvider()
        ) { door in
            ControlWidgetToggle(...) {
                Label(
                    $0 ? "Open" : "Closed",
                    systemImage: $0 ? "door.open" : "door.closed"
                )
            }
            .disabled(door.isSafetyLockEngaged)
        }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
