---
title: callAsFunction(contentType:prepareDocument:)
description: Presents a new document window with preset contents.
source: https://developer.apple.com/documentation/swiftui/newdocumentaction/callasfunction(contenttype:preparedocument:)
timestamp: 2025-10-29T00:15:05.427Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [newdocumentaction](/documentation/swiftui/newdocumentaction)

**Instance Method**

# callAsFunction(contentType:prepareDocument:)

**Available on:** macOS 14.0+

> Presents a new document window with preset contents.

```swift
@MainActor @preconcurrency func callAsFunction(contentType: UTType, prepareDocument: @escaping (ModelContext) -> Void)
```

## Parameters

**contentType**

The content type of the document.



**prepareDocument**

The closure that accepts `ModelContext` associated with the new document. Use this closure to set the document’s initial contents before it is displayed: insert preconfigured models in the provided `ModelContext`.



## Discussion

Don’t call this method directly. SwiftUI calls it when you call the [new Document](/documentation/swiftui/environmentvalues/newdocument) action.

For example, a Todo app might have a way to create a sample prepopulated Todo list as a part of onboarding experience:

```swift
newDocument(contentType: .todoList) { modelContext in
    let todoList = TodoList(
        title: "🎬 Movie night",
        items: [
            TodoItem(title: "🍿 Buy popcorn"),
            TodoItem(title: "🍨 Make some ice cream",
            TodoItem(title: "💡 Hang a string of lights")
        ]
    )
    modelContext.insert(todoList)
}
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [Declarations.html#ID622](https://docs.swift.org/swift-book/ReferenceManual/Declarations.html#ID622) in *The Swift Programming Language*.

## Calling the action

- [callAsFunction(_:)](/documentation/swiftui/newdocumentaction/callasfunction(_:))
- [callAsFunction(contentType:)](/documentation/swiftui/newdocumentaction/callasfunction(contenttype:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
