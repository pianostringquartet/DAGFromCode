---
title: transactionPicker(isPresented:selection:)
description: Presents a picker that selects a collection of transactions.
source: https://developer.apple.com/documentation/swiftui/view/transactionpicker(ispresented:selection:)
timestamp: 2025-10-29T00:15:33.257Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# transactionPicker(isPresented:selection:)

**Available on:** iOS 18.0+, iPadOS 18.0+

> Presents a picker that selects a collection of transactions.

```swift
@MainActor @preconcurrency func transactionPicker(isPresented: Binding<Bool>, selection: Binding<[Transaction]>) -> some View
```

## Parameters

**isPresented**

The binding to whether the transaction picker should be shown.



**selection**

The selection of transactions from the transaction picker.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
