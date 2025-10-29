---
title: transaction(value:_:)
description: Applies the given transaction mutation function to all animations used within the view.
source: https://developer.apple.com/documentation/swiftui/view/transaction(value:_:)
timestamp: 2025-10-29T00:10:56.641Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# transaction(value:_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Applies the given transaction mutation function to all animations used within the view.

```swift
nonisolated func transaction(value: some Equatable, _ transform: @escaping (inout Transaction) -> Void) -> some View
```

## Parameters

**value**

A value to monitor for changes.



**transform**

The transformation to apply to transactions within this view.



## Return Value

A view that wraps this view and applies a transformation to all transactions used within the view whenever `value` changes.

## Discussion

Use this modifier to change or replace the animation used in a view. Consider three identical views controlled by a button that changes all three simultaneously:

- The first view animates rotating the “Rotation” [Text](/documentation/swiftui/text) view by 360 degrees.
- The second uses the `transaction(_:)` modifier to change the animation by adding a delay to the start of the animation by two seconds and then increases the rotational speed of the “Rotation\nModified” [Text](/documentation/swiftui/text) view animation by a factor of 2.
- The third uses the `transaction(_:)` modifier to disable animations affecting the “Animation\nReplaced” [Text](/documentation/swiftui/text) view.

The following code implements these animations:

```swift
struct TransactionExample: View {
    @State var flag = false

    var body: some View {
        VStack(spacing: 50) {
            HStack(spacing: 30) {
                Text("Rotation")
                    .rotationEffect(Angle(degrees: flag ? 360 : 0))

                Text("Rotation\nModified")
                    .rotationEffect(Angle(degrees: flag ? 360 : 0))
                    .transaction(value: flag) { t in
                        t.animation =
                            t.animation?.delay(2.0).speed(2)
                    }

                Text("Animation\nReplaced")
                    .rotationEffect(Angle(degrees: flag ? 360 : 0))
                    .transaction(value: flag) { t in
                        t.disableAnimations = true
                    }
            }

            Button("Animate") {
                withAnimation(.easeIn(duration: 2.0)) {
                    flag.toggle()
                }
            }
        }
    }
}
```

## Moving an animation to another view

- [withTransaction(_:_:)](/documentation/swiftui/withtransaction(_:_:))
- [withTransaction(_:_:_:)](/documentation/swiftui/withtransaction(_:_:_:))
- [transaction(_:)](/documentation/swiftui/view/transaction(_:))
- [transaction(_:body:)](/documentation/swiftui/view/transaction(_:body:))
- [Transaction](/documentation/swiftui/transaction)
- [Entry()](/documentation/swiftui/entry())
- [TransactionKey](/documentation/swiftui/transactionkey)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
