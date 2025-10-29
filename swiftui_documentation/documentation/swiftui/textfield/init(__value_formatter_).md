---
title: init(_:value:formatter:)
description: Create an instance which binds over an arbitrary type, .
source: https://developer.apple.com/documentation/swiftui/textfield/init(_:value:formatter:)
timestamp: 2025-10-29T00:15:15.277Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textfield](/documentation/swiftui/textfield)

**Initializer**

# init(_:value:formatter:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Create an instance which binds over an arbitrary type, .

```swift
nonisolated init<S, V>(_ title: S, value: Binding<V>, formatter: Formatter) where S : StringProtocol
```

## Parameters

**title**

The title of the text view, describing its purpose.



**value**

The underlying value to edit.



**formatter**

A formatter to use when converting between the string the user edits and the underlying value of type `V`. If `formatter` can’t perform the conversion, the text field doesn’t modify `binding.value`.



## Discussion

Use this initializer to create a text field that binds to a bound optional value, using a [Formatter](/documentation/Foundation/Formatter) to convert to and from this type. Changes to the bound value update the string displayed by the text field. Editing the text field updates the bound value, as long as the formatter can parse the text. If the format style can’t parse the input, the bound value remains unchanged.

Use the [onSubmit(of:_:)](/documentation/swiftui/view/onsubmit(of:_:)) modifier to invoke an action whenever the user submits this text field.

The following example uses a [Double](/documentation/Swift/Double) as the bound value, and a [Number Formatter](/documentation/Foundation/NumberFormatter) instance to convert to and from a string representation. The formatter uses the [decimal](/documentation/Foundation/NumberFormatter/Style/decimal) style, to allow entering a fractional part. As the user types, the bound value updates, which in turn updates three [Text](/documentation/swiftui/text) views that use different format styles. If the user enters text that doesn’t represent a valid `Double`, the bound value doesn’t update.

```swift
@State private var myDouble: Double = 0.673
@State private var numberFormatter: NumberFormatter = {
    var nf = NumberFormatter()
    nf.numberStyle = .decimal
    return nf
}()

var body: some View {
    VStack {
        TextField(
            value: $myDouble,
            formatter: numberFormatter
        ) {
            Text("Double")
        }
        Text(myDouble, format: .number)
        Text(myDouble, format: .number.precision(.significantDigits(5)))
        Text(myDouble, format: .number.notation(.scientific))
    }
}
```

## Creating a text field with a value

- [init(_:value:format:prompt:)](/documentation/swiftui/textfield/init(_:value:format:prompt:))
- [init(value:format:prompt:label:)](/documentation/swiftui/textfield/init(value:format:prompt:label:))
- [init(_:value:formatter:prompt:)](/documentation/swiftui/textfield/init(_:value:formatter:prompt:))
- [init(value:formatter:prompt:label:)](/documentation/swiftui/textfield/init(value:formatter:prompt:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
