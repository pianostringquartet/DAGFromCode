---
title: Search modifiers
description: Enable people to search for content in your app.
source: https://developer.apple.com/documentation/swiftui/view-search
timestamp: 2025-10-29T00:11:44.353Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Search modifiers

> Enable people to search for content in your app.

## Overview

Use search view modifiers to add search capability to your app. For more information, see [Search](/documentation/swiftui/search).

## Displaying a search interface

- [searchable(text:placement:prompt:)](/documentation/swiftui/view/searchable(text:placement:prompt:)) Marks this view as searchable, which configures the display of a search field.
- [searchable(text:isPresented:placement:prompt:)](/documentation/swiftui/view/searchable(text:ispresented:placement:prompt:)) Marks this view as searchable with programmatic presentation of the search field.
- [searchPresentationToolbarBehavior(_:)](/documentation/swiftui/view/searchpresentationtoolbarbehavior(_:)) Configures the search toolbar presentation behavior for any searchable modifiers within this view.

## Searching with tokens

- [searchable(text:tokens:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:placement:prompt:token:)) Marks this view as searchable with text and tokens.
- [searchable(text:tokens:isPresented:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:ispresented:placement:prompt:token:)) Marks this view as searchable with text and tokens, as well as programmatic presentation.

## Searching with editable tokens

- [searchable(text:editableTokens:isPresented:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:editabletokens:ispresented:placement:prompt:token:)) Marks this view as searchable, which configures the display of a search field.
- [searchable(text:editableTokens:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:editabletokens:placement:prompt:token:)) Marks this view as searchable, which configures the display of a search field.

## Making search suggestions

- [searchSuggestions(_:)](/documentation/swiftui/view/searchsuggestions(_:)) Configures the search suggestions for this view.
- [searchSuggestions(_:for:)](/documentation/swiftui/view/searchsuggestions(_:for:)) Configures how to display search suggestions within this view.
- [searchCompletion(_:)](/documentation/swiftui/view/searchcompletion(_:)) Associates a fully formed string with the value of this view when used as a search suggestion.
- [searchable(text:tokens:suggestedTokens:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:suggestedtokens:placement:prompt:token:)) Marks this view as searchable with text, tokens, and suggestions.
- [searchable(text:tokens:suggestedTokens:isPresented:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:suggestedtokens:ispresented:placement:prompt:token:)) Marks this view as searchable with text, tokens, and suggestions, as well as programmatic presentation.

## Limiting search scope

- [searchScopes(_:scopes:)](/documentation/swiftui/view/searchscopes(_:scopes:)) Configures the search scopes for this view.
- [searchScopes(_:activation:_:)](/documentation/swiftui/view/searchscopes(_:activation:_:)) Configures the search scopes for this view with the specified activation strategy.

## Searching through dictation

- [searchDictationBehavior(_:)](/documentation/swiftui/view/searchdictationbehavior(_:)) Configures the dictation behavior for any search fields configured by the searchable modifier.

## Providing interactivity

- [Input and event modifiers](/documentation/swiftui/view-input-and-events)
- [Presentation modifiers](/documentation/swiftui/view-presentation)
- [State modifiers](/documentation/swiftui/view-state)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
