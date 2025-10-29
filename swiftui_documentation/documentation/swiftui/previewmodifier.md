---
title: PreviewModifier
description: A type that defines an environment in which previews can appear.
source: https://developer.apple.com/documentation/swiftui/previewmodifier
timestamp: 2025-10-29T00:13:30.404Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# PreviewModifier

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A type that defines an environment in which previews can appear.

```swift
@MainActor protocol PreviewModifier
```

## Overview

Conforming types can define shared contexts that will be cached by the preview system, then reused across participating previews. For example, you might create a model container here and populate it with sample data; in your `body` method you would then apply it to the preview using the `.modelContainer` view modifier.

```swift
struct SampleData: PreviewModifier {
    static func makeSharedContext() throws -> ModelContainer {
        let container = try ModelContainer(for: Snack.self)
        container.mainContext.insert(Snack.potatoChips)
        return container
    }

    func body(content: Content, context: ModelContainer) -> some View {
        content.modelContainer(context)
    }
 }
```

Use the `.modifier` preview trait to attach modifiers to a preview.

```swift
#Preview(traits: .modifier(SampleData())) {
    @Previewable @Query var snacks: [Snack]
    return SnackView(snack: snacks.first!)
}
```

## Associated Types

- [Body](/documentation/swiftui/previewmodifier/body)
- [Context](/documentation/swiftui/previewmodifier/context)

## Instance Methods

- [body(content:context:)](/documentation/swiftui/previewmodifier/body(content:context:)) Modify a preview by applying the shared context.

## Type Aliases

- [PreviewModifier.Content](/documentation/swiftui/previewmodifier/content) The type-erased content of a preview.

## Type Methods

- [makeSharedContext()](/documentation/swiftui/previewmodifier/makesharedcontext()) Create shared context to apply to previews. The context returned here will be cached and passed into the  method for every preview that applies a modifier of this type.

## Defining a preview

- [Previewable()](/documentation/swiftui/previewable())
- [PreviewProvider](/documentation/swiftui/previewprovider)
- [PreviewPlatform](/documentation/swiftui/previewplatform)
- [previewDisplayName(_:)](/documentation/swiftui/view/previewdisplayname(_:))
- [PreviewModifierContent](/documentation/swiftui/previewmodifiercontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
