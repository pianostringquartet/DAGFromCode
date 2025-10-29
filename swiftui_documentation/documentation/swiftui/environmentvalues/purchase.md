---
title: purchase
description: An action that starts an in-app purchase.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/purchase
timestamp: 2025-10-29T00:12:20.721Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# purchase

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> An action that starts an in-app purchase.

```swift
@MainActor @preconcurrency var purchase: PurchaseAction { get }
```

## Discussion

Read this environment value to get an `PurchaseAction` instance for a given [Environment](/documentation/swiftui/environment). Call the instance to start an in-app purchase. You call the instance directly because it defines a `PurchaseAction/callAsFunction(_:options:)` method that Swift calls when you call the instance.

For example, you can start an in-app purchase when the user taps a button:

```swift
struct PurchaseExample: View {
    @Environment(\.purchase) private var purchase
    let product: Product
    let purchaseOptions: [Product.PurchaseOption]

    var body: some View {
        Button {
            Task {
                let purchaseResult = try? await purchase(product, options: purchaseOptions)
                // Process purchase result.
            }
        } label: {
            Text(product.displayName)
        }
    }
}
```

## Actions

- [dismiss](/documentation/swiftui/environmentvalues/dismiss)
- [dismissSearch](/documentation/swiftui/environmentvalues/dismisssearch)
- [dismissWindow](/documentation/swiftui/environmentvalues/dismisswindow)
- [openImmersiveSpace](/documentation/swiftui/environmentvalues/openimmersivespace)
- [dismissImmersiveSpace](/documentation/swiftui/environmentvalues/dismissimmersivespace)
- [newDocument](/documentation/swiftui/environmentvalues/newdocument)
- [openDocument](/documentation/swiftui/environmentvalues/opendocument)
- [openURL](/documentation/swiftui/environmentvalues/openurl)
- [openWindow](/documentation/swiftui/environmentvalues/openwindow)
- [pushWindow](/documentation/swiftui/environmentvalues/pushwindow)
- [refresh](/documentation/swiftui/environmentvalues/refresh)
- [rename](/documentation/swiftui/environmentvalues/rename)
- [resetFocus](/documentation/swiftui/environmentvalues/resetfocus)
- [openSettings](/documentation/swiftui/environmentvalues/opensettings)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
