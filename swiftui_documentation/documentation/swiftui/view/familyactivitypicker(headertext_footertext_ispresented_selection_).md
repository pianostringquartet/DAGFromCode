---
title: familyActivityPicker(headerText:footerText:isPresented:selection:)
description: Presents an activity picker view as a sheet.
source: https://developer.apple.com/documentation/swiftui/view/familyactivitypicker(headertext:footertext:ispresented:selection:)
timestamp: 2025-10-29T00:15:12.787Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# familyActivityPicker(headerText:footerText:isPresented:selection:)

**Available on:** iOS 16.0+, iPadOS 16.0+

> Presents an activity picker view as a sheet.

```swift
@MainActor @preconcurrency func familyActivityPicker(headerText: String? = nil, footerText: String? = nil, isPresented: Binding<Bool>, selection: Binding<FamilyActivitySelection>) -> some View
```

## Parameters

**headerText**

An optional string that provides text for the header of the picker view.



**footerText**

An optional string that provides text for the footer of the picker view.



**isPresented**

A binding that indicates whether the app presents the picker view.



**selection**

A binding that manages the user-selected categories, apps, and web domains.



## Discussion

Use this view modifier to present a `FamilyControls/FamilyActivityPicker`.

## Configuring Family Sharing

- [FamilyActivityPicker](/documentation/FamilyControls/FamilyActivityPicker)
- [familyActivityPicker(isPresented:selection:)](/documentation/swiftui/view/familyactivitypicker(ispresented:selection:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
