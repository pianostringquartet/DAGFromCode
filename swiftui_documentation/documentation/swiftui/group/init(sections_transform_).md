---
title: init(sections:transform:)
description: Constructs a group from the sections of the given view.
source: https://developer.apple.com/documentation/swiftui/group/init(sections:transform:)
timestamp: 2025-10-29T00:10:51.671Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [group](/documentation/swiftui/group)

**Initializer**

# init(sections:transform:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Constructs a group from the sections of the given view.

```swift
init<Base, Result>(sections view: Base, @ViewBuilder transform: @escaping (SectionCollection) -> Result) where Content == GroupSectionsOfContent<Base, Result>, Base : View, Result : View
```

## Parameters

**view**

The view to extract the sections of.



## Discussion

Sections are constructed lazily, on demand, so access only as much of this collection as is necessary to create the resulting content.

```swift
struct SectionedStack<Content: View>: View {
    var content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        VStack {
            Group(sections: content) { sections in
                ForEach(sections) { section in
                    SectionChrome {
                        section.content
                    } header: {
                        section.header
                    } footer: {
                        section.footer
                    }
                }
            }
        }
    }
}
```

This can then be used by creating a `SectionedStack` with it’s view builder-based initializer.

```swift
SectionedStack {
    Section("Header A") {
        Text("Hello")
        Text("World")
    } footer: {
        Text("Footer A")
    }
    Section("Header B") {
        Text("Foo")
        Text("Bar")
    } footer: {
        Text("Footer B")
    }
}
```

Any content of the given view which is not explicitly specified as a section is grouped with its sibling content to form implicit sections, meaning the minimum number of sections in a `SectionCollection` is one. For example in the following `SectionedStack`, there is one explicit section, and two implicit sections containing the content before, and after the explicit section:

```swift
SectionedStack {
    Text("First implicit section")
    Section("Explicit section") {
        Text("Content")
    }
    Text("Second implicit section")
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
