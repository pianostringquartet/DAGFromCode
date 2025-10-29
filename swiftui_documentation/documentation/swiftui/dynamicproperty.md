---
title: DynamicProperty
description: An interface for a stored variable that updates an external property of a view.
source: https://developer.apple.com/documentation/swiftui/dynamicproperty
timestamp: 2025-10-29T00:09:13.116Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# DynamicProperty

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An interface for a stored variable that updates an external property of a view.

```swift
protocol DynamicProperty
```

## Overview

The view gives values to these properties prior to recomputing the view’s [body](/documentation/swiftui/view/body-8kl5o).

## Conforming Types

- [AccessibilityFocusState](/documentation/swiftui/accessibilityfocusstate)
- [AppStorage](/documentation/swiftui/appstorage)
- [Binding](/documentation/swiftui/binding)
- [Environment](/documentation/swiftui/environment)
- [EnvironmentObject](/documentation/swiftui/environmentobject)
- [FetchRequest](/documentation/swiftui/fetchrequest)
- [FocusState](/documentation/swiftui/focusstate)
- [FocusedBinding](/documentation/swiftui/focusedbinding)
- [FocusedObject](/documentation/swiftui/focusedobject)
- [FocusedValue](/documentation/swiftui/focusedvalue)
- [GestureState](/documentation/swiftui/gesturestate)
- [NSApplicationDelegateAdaptor](/documentation/swiftui/nsapplicationdelegateadaptor)
- [Namespace](/documentation/swiftui/namespace)
- [ObservedObject](/documentation/swiftui/observedobject)
- [PhysicalMetric](/documentation/swiftui/physicalmetric)
- [ScaledMetric](/documentation/swiftui/scaledmetric)
- [SceneStorage](/documentation/swiftui/scenestorage)
- [SectionedFetchRequest](/documentation/swiftui/sectionedfetchrequest)
- [State](/documentation/swiftui/state)
- [StateObject](/documentation/swiftui/stateobject)
- [UIApplicationDelegateAdaptor](/documentation/swiftui/uiapplicationdelegateadaptor)
- [WKApplicationDelegateAdaptor](/documentation/swiftui/wkapplicationdelegateadaptor)
- [WKExtensionDelegateAdaptor](/documentation/swiftui/wkextensiondelegateadaptor)

## Updating the value

- [update()](/documentation/swiftui/dynamicproperty/update()) Updates the underlying value of the stored value.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
