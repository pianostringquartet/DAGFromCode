---
title: init(wrappedValue:_:)
description: Creates a property that can save and restore an integer, transforming it to a  data type.
source: https://developer.apple.com/documentation/swiftui/scenestorage/init(wrappedvalue:_:)
timestamp: 2025-10-29T00:14:31.346Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scenestorage](/documentation/swiftui/scenestorage)

**Initializer**

# init(wrappedValue:_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates a property that can save and restore an integer, transforming it to a  data type.

```swift
init(wrappedValue: Value, _ key: String) where Value : RawRepresentable, Value.RawValue == Int
```

## Parameters

**wrappedValue**

The default value if an integer value is not available for the given key.



**key**

A key used to save and restore the value.



## Discussion

A common usage is with enumerations:

```swift
enum MyEnum: Int {
    case a
    case b
    case c
}
struct MyView: View {
    @SceneStorage("MyEnumValue") private var value = MyEnum.a
    var body: some View { ... }
}
```

## Storing a value

- [init(_:)](/documentation/swiftui/scenestorage/init(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
