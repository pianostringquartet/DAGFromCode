---
title: init(selection:content:label:currentValueLabel:)
description: Creates a picker that displays a custom label and a custom value label where applicable.
source: https://developer.apple.com/documentation/swiftui/picker/init(selection:content:label:currentvaluelabel:)
timestamp: 2025-10-29T00:14:11.029Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [picker](/documentation/swiftui/picker)

**Initializer**

# init(selection:content:label:currentValueLabel:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a picker that displays a custom label and a custom value label where applicable.

```swift
nonisolated init(selection: Binding<SelectionValue>, @ViewBuilder content: () -> Content, @ViewBuilder label: () -> Label, @ViewBuilder currentValueLabel: () -> some View)
```

## Parameters

**selection**

A binding to a property that determines the currently-selected option.



**content**

A view that contains the set of options.



**label**

A view that describes the purpose of selecting an option.



**currentValueLabel**

A view that represents the current value of the picker.



## Discussion

The following example shows a picker with a current value label that only displays the title of the currently selected song:

```swift
struct Song: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let artist: String
    let genre: String
}

private let songs: [Song] = [ /* songs */]

@State private var selectedSong: Song? = nil

var body: some View {
    NavigationStack {
        List {
            Picker(selection: $selectedSong) {
                ForEach(songs) { song in
                    VStack(alignment: .leading) {
                        Text(song.title)
                            .bold()
                        Text(song.artist)
                        Text(song.genre)
                            .foregroundColor(.secondary)
                            .font(.caption)
                    }
                    .tag(song as Song?)
                }
            } label: {
                Text("Request a song")
            } currentValueLabel: {
                Text(selectedSong?.title ?? "No selection")
            }
        }
        .pickerStyle(.navigationLink)
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
