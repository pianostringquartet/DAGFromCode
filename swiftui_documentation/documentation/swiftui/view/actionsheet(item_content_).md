---
title: actionSheet(item:content:)
description: Presents an action sheet using the given item as a data source for the sheet’s content.
source: https://developer.apple.com/documentation/swiftui/view/actionsheet(item:content:)
timestamp: 2025-10-29T00:14:28.279Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# actionSheet(item:content:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Presents an action sheet using the given item as a data source for the sheet’s content.

```swift
nonisolated func actionSheet<T>(item: Binding<T?>, content: (T) -> ActionSheet) -> some View where T : Identifiable
```

## Parameters

**item**

A binding to an optional source of truth for the action sheet. When `item` is non-`nil`, the system passes the contents to the modifier’s closure. You use this content to populate the fields of an action sheet that you create that the system displays to the user. If `item` changes, the system dismisses the currently displayed action sheet and replaces it with a new one using the same process.



**content**

A closure returning the [Action Sheet](/documentation/swiftui/actionsheet) you create.



## Discussion

Use this method when you need to populate the fields of an action sheet with content from a data source. The example below shows a custom data source, `FileDetails`, that provides data to populate the action sheet:

```swift
struct FileDetails: Identifiable {
    var id: String { name }
    let name: String
    let fileType: UTType
}
struct ConfirmFileImport: View {
    @State private var sheetDetail: FileDetails?
    var body: some View {
        Button("Show Action Sheet") {
            sheetDetail = FileDetails(name: "MyImageFile.png",
                                      fileType: .png)
        }
        .actionSheet(item: $sheetDetail) { detail in
            ActionSheet(
                title: Text("File Import"),
                message: Text("""
                         Import \(detail.name)?
                         File Type: \(detail.fileType.description)
                         """),
                buttons: [
                    .destructive(Text("Import"),
                                 action: importFile),
                    .cancel()
                ])
        }
    }

    func importFile() {
        // Handle import action.
    }
}
```



## View presentation modifiers

- [actionSheet(isPresented:content:)](/documentation/swiftui/view/actionsheet(ispresented:content:))
- [alert(isPresented:content:)](/documentation/swiftui/view/alert(ispresented:content:))
- [alert(item:content:)](/documentation/swiftui/view/alert(item:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
