---
title: init(value:formatter:prompt:label:)
description: Creates a text field that applies a formatter to a bound optional value, with a label generated from a view builder.
source: https://developer.apple.com/documentation/swiftui/textfield/init(value:formatter:prompt:label:)
timestamp: 2025-10-29T00:12:32.787Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textfield](/documentation/swiftui/textfield)

**Initializer**

# init(value:formatter:prompt:label:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Creates a text field that applies a formatter to a bound optional value, with a label generated from a view builder.

```swift
nonisolated init<V>(value: Binding<V>, formatter: Formatter, prompt: Text? = nil, @ViewBuilder label: () -> Label)
```

## Parameters

**value**

The underlying value to edit.



**formatter**

A formatter to use when converting between the string the user edits and the underlying value of type `V`. If `formatter` can’t perform the conversion, the text field doesn’t modify `binding.value`.



**prompt**

A `Text` which provides users with guidance on what to enter into the text field.



**label**

A view that describes the purpose of the text field.



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
- [init(_:value:formatter:)](/documentation/swiftui/textfield/init(_:value:formatter:))
- [init(_:value:formatter:prompt:)](/documentation/swiftui/textfield/init(_:value:formatter:prompt:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
