---
title: WKApplicationDelegateAdaptor
description: A property wrapper that is used in  to provide a delegate from WatchKit.
source: https://developer.apple.com/documentation/swiftui/wkapplicationdelegateadaptor
timestamp: 2025-10-29T00:10:24.426Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# WKApplicationDelegateAdaptor

**Available on:** watchOS 7.0+

> A property wrapper that is used in  to provide a delegate from WatchKit.

```swift
@MainActor @preconcurrency @propertyWrapper struct WKApplicationDelegateAdaptor<DelegateType> where DelegateType : NSObject, DelegateType : WKApplicationDelegate
```

## Conforms To

- [DynamicProperty](/documentation/swiftui/dynamicproperty)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a delegate adaptor

- [init(_:)](/documentation/swiftui/wkapplicationdelegateadaptor/init(_:)) Creates an  using a WatchKit Application Delegate.

## Getting the delegate adaptor

- [projectedValue](/documentation/swiftui/wkapplicationdelegateadaptor/projectedvalue) A projection of the observed object that creates bindings to its properties using dynamic member lookup.
- [wrappedValue](/documentation/swiftui/wkapplicationdelegateadaptor/wrappedvalue) The underlying delegate.

## Targeting watchOS

- [WKExtensionDelegateAdaptor](/documentation/swiftui/wkextensiondelegateadaptor)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
