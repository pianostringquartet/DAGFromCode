---
title: wrappedValue
description: The underlying value referenced by the binding variable.
source: https://developer.apple.com/documentation/swiftui/binding/wrappedvalue
timestamp: 2025-10-29T00:10:42.022Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [binding](/documentation/swiftui/binding)

**Instance Property**

# wrappedValue

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The underlying value referenced by the binding variable.

```swift
var wrappedValue: Value { get nonmutating set }
```

## Discussion

This property provides primary access to the value’s data. However, you don’t access `wrappedValue` directly. Instead, you use the property variable created with the [Binding](/documentation/swiftui/binding) attribute. In the following code example, the binding variable `isPlaying` returns the value of `wrappedValue`:

```swift
struct PlayButton: View {
    @Binding var isPlaying: Bool

    var body: some View {
        Button(isPlaying ? "Pause" : "Play") {
            isPlaying.toggle()
        }
    }
}
```

When a mutable binding value changes, the new value is immediately available. However, updates to a view displaying the value happens asynchronously, so the view may not show the change immediately.

## Getting the value

- [projectedValue](/documentation/swiftui/binding/projectedvalue)
- [subscript(dynamicMember:)](/documentation/swiftui/binding/subscript(dynamicmember:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
