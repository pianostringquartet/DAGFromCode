---
title: init(_:)
description: Creates a bindable object from an observable object.
source: https://developer.apple.com/documentation/swiftui/bindable/init(_:)
timestamp: 2025-10-29T00:09:26.578Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [bindable](/documentation/swiftui/bindable)

**Initializer**

# init(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a bindable object from an observable object.

```swift
init(_ wrappedValue: Value)
```

## Discussion

This initializer is equivalent to [init(wrappedValue:)](/documentation/swiftui/bindable/init(wrappedvalue:)), but is more succinct when when creating bindable objects nested within other expressions. For example, you can use the initializer to create a bindable object inline with code that declares a view that takes a binding as a parameter:

```swift
struct TitleEditView: View {
    @Environment(Book.self) private var book

    var body: some View {
        TextField("Title", text: Bindable(book).title)
    }
}
```

## Creating a bindable value

- [init(wrappedValue:)](/documentation/swiftui/bindable/init(wrappedvalue:))
- [init(projectedValue:)](/documentation/swiftui/bindable/init(projectedvalue:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
