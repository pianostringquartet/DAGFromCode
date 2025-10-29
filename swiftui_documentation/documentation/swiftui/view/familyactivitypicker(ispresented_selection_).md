---
title: familyActivityPicker(isPresented:selection:)
description: Presents an activity picker view as a sheet.
source: https://developer.apple.com/documentation/swiftui/view/familyactivitypicker(ispresented:selection:)
timestamp: 2025-10-29T00:13:28.963Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# familyActivityPicker(isPresented:selection:)

**Available on:** iOS 15.0+, iPadOS 15.0+

> Presents an activity picker view as a sheet.

```swift
@MainActor @preconcurrency func familyActivityPicker(isPresented: Binding<Bool>, selection: Binding<FamilyActivitySelection>) -> some View
```

## Parameters

**isPresented**

A binding that indicates whether the app presents the picker view.



**selection**

A binding that manages the user-selected categories, apps, and web domains.



## Discussion

Use this view modifier to present a `FamilyControls/FamilyActivityPicker`.

```swift
struct ExampleView: View {
    @State var selection = FamilyActivitySelection()
    @State var isPresented = false

   var body: some View {
       Button("Present FamilyActivityPicker") { isPresented = true }
       .familyActivityPicker(isPresented: $isPresented,
                             selection: $selection)
       .onChange(of: selection) { newSelection in
           let applications = selection.applications
           let categories = selection.categories
           let webDomains = selection.webDomains
       }
   }
}
```

## Configuring Family Sharing

- [FamilyActivityPicker](/documentation/FamilyControls/FamilyActivityPicker)
- [familyActivityPicker(headerText:footerText:isPresented:selection:)](/documentation/swiftui/view/familyactivitypicker(headertext:footertext:ispresented:selection:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
