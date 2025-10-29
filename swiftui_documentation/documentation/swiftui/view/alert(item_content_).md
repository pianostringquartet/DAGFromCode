---
title: alert(item:content:)
description: Presents an alert to the user.
source: https://developer.apple.com/documentation/swiftui/view/alert(item:content:)
timestamp: 2025-10-29T00:12:57.035Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# alert(item:content:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Presents an alert to the user.

```swift
nonisolated func alert<Item>(item: Binding<Item?>, content: (Item) -> Alert) -> some View where Item : Identifiable
```

## Parameters

**item**

A binding to an optional source of truth for the alert. if `item` is non-`nil`, the system passes the contents to the modifier’s closure. You use this content to populate the fields of an alert that you create that the system displays to the user. If `item` changes, the system dismisses the currently displayed alert and replaces it with a new one using the same process.



**content**

A closure returning the alert to present.



## Discussion

Use this method when you need to show an alert that contains information from a binding to an optional data source that you provide. The example below shows a custom data source `FileInfo` whose properties configure the alert’s `message` field:

```swift
struct FileInfo: Identifiable {
    var id: String { name }
    let name: String
    let fileType: UTType
}

struct ConfirmImportAlert: View {
    @State private var alertDetails: FileInfo?
    var body: some View {
        Button("Show Alert") {
            alertDetails = FileInfo(name: "MyImageFile.png",
                                    fileType: .png)
        }
        .alert(item: $alertDetails) { details in
            Alert(title: Text("Import Complete"),
                  message: Text("""
                    Imported \(details.name) \n File
                    type: \(details.fileType.description).
                    """),
                  dismissButton: .default(Text("Dismiss")))
        }
    }
}
```



## View presentation modifiers

- [actionSheet(isPresented:content:)](/documentation/swiftui/view/actionsheet(ispresented:content:))
- [actionSheet(item:content:)](/documentation/swiftui/view/actionsheet(item:content:))
- [alert(isPresented:content:)](/documentation/swiftui/view/alert(ispresented:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
