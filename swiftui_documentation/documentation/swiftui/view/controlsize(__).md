---
title: controlSize(_:)
description: Sets the size for controls within this view.
source: https://developer.apple.com/documentation/swiftui/view/controlsize(_:)
timestamp: 2025-10-29T00:10:54.813Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# controlSize(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 10.15+, tvOS 15.0+, visionOS 1.0+, watchOS 9.0+

> Sets the size for controls within this view.

```swift
nonisolated func controlSize(_ controlSize: ControlSize) -> some View
```

## Parameters

**controlSize**

One of the control sizes specified in the [Control Size](/documentation/swiftui/controlsize) enumeration.



## Discussion

Use `controlSize(_:)` to override the system default size for controls in this view. In this example, a view displays several typical controls at `.mini`, `.small` and `.regular` sizes.

```swift
struct ControlSize: View {
    var body: some View {
        VStack {
            MyControls(label: "Mini")
                .controlSize(.mini)
            MyControls(label: "Small")
                .controlSize(.small)
            MyControls(label: "Regular")
                .controlSize(.regular)
        }
        .padding()
        .frame(width: 450)
        .border(Color.gray)
    }
}

struct MyControls: View {
    var label: String
    @State private var value = 3.0
    @State private var selected = 1
    var body: some View {
        HStack {
            Text(label + ":")
            Picker("Selection", selection: $selected) {
                Text("option 1").tag(1)
                Text("option 2").tag(2)
                Text("option 3").tag(3)
            }
            Slider(value: $value, in: 1...10)
            Button("OK") { }
        }
    }
}
```



## Sizing controls

- [controlSize](/documentation/swiftui/environmentvalues/controlsize)
- [ControlSize](/documentation/swiftui/controlsize)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
