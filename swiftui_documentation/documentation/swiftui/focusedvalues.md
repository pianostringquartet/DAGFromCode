---
title: FocusedValues
description: A collection of state exported by the focused scene or view and its ancestors.
source: https://developer.apple.com/documentation/swiftui/focusedvalues
timestamp: 2025-10-29T00:11:59.620Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# FocusedValues

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A collection of state exported by the focused scene or view and its ancestors.

```swift
struct FocusedValues
```

## Creating Custom Focused Values

Use the `Entry` macro to create custom focused values by extending `FocusedValues` with new properties:

```swift
extension FocusedValues {
    @Entry var focusedDocument: Binding<MyDocument>?
}
```

The `Entry` macro automatically generates the underlying key type and provides the getter and setter for the focused value. Since the default value for focused values is always `nil`, all focused values must be optional.

### Publishing Values in Your Views

Views publish focused values using the [focusedValue(_:_:)](/documentation/swiftui/view/focusedvalue(_:_:)) modifier:

```swift
struct DocumentCellView: View {
    @Binding var document: MyDocument

    var body: some View {
        Text("Document Content")
            .focusedValue(\.focusedDocument, $document)
    }
}
```

For scene-wide values that should be available depending on the focused scene, use [focusedSceneValue(_:_:)](/documentation/swiftui/view/focusedscenevalue(_:_:)):

```swift
struct DocumentViewer: View {
    @Binding var document: MyDocument

    var body: some View {
        Text("Document Content")
            .focusedSceneValue(\.focusedDocument, $document)
    }
}
```

### Accessing the current focused value

Use the [Focused Value](/documentation/swiftui/focusedvalue) property wrapper in your [App](/documentation/swiftui/app) or [View](/documentation/swiftui/view) to read the current value in the `body`. The [Focused Binding](/documentation/swiftui/focusedbinding) can be used as a convenient way to access the `wrappedValue` if the value type of the focused value is a `Binding`:

```swift
@main
struct DocumentApp: App {
    @FocusedBinding(\.focusedDocument) var currentDocument: MyDocument?

    var body: some Scene {
        DocumentGroup(newDocument: MyDocument()) { file in
            ContentView(document: file.$document)
                .focusedValue(\.focusedDocument, file.$document)
        }
        .commands {
            CommandGroup(after: .undoRedo) {
                Button("Increment") {
                    currentDocument?.value += 1
                }.disabled(currentDocument == nil)
            }
        }
    }
}
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)

## Getting the value for a key

- [subscript(_:)](/documentation/swiftui/focusedvalues/subscript(_:)) Reads and writes values associated with a given focused value key.

## Exposing value types to focused views

- [focusedValue(_:)](/documentation/swiftui/view/focusedvalue(_:))
- [focusedValue(_:_:)](/documentation/swiftui/view/focusedvalue(_:_:))
- [focusedSceneValue(_:)](/documentation/swiftui/view/focusedscenevalue(_:))
- [focusedSceneValue(_:_:)](/documentation/swiftui/view/focusedscenevalue(_:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
