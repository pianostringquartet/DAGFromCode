---
title: inspector(isPresented:content:)
description: Inserts an inspector at the applied position in the view hierarchy.
source: https://developer.apple.com/documentation/swiftui/view/inspector(ispresented:content:)
timestamp: 2025-10-29T00:10:34.725Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# inspector(isPresented:content:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+

> Inserts an inspector at the applied position in the view hierarchy.

```swift
nonisolated func inspector<V>(isPresented: Binding<Bool>, @ViewBuilder content: () -> V) -> some View where V : View
```

## Parameters

**isPresented**

A binding to `Bool` controlling the presented state.



**content**

The inspector content.



## Discussion

Apply this modifier to declare an inspector with a context-dependent presentation. For example, an inspector can present as a trailing column in a horizontally regular size class, but adapt to a sheet in a horizontally compact size class.

```swift
struct ShapeEditor: View {
    @State var presented: Bool = false
    var body: some View {
        MyEditorView()
            .inspector(isPresented: $presented) {
                TextTraitsInspectorView()
            }
    }
}
```

> [!NOTE]
> Trailing column inspectors have their presentation state restored by the framework.

> [!NOTE]
> [Inspector Commands](/documentation/swiftui/inspectorcommands) for including the default inspector commands and keyboard shortcuts.

## Presenting an inspector

- [inspectorColumnWidth(_:)](/documentation/swiftui/view/inspectorcolumnwidth(_:))
- [inspectorColumnWidth(min:ideal:max:)](/documentation/swiftui/view/inspectorcolumnwidth(min:ideal:max:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
