---
title: button
concept: UI
order: 1
tags: [UI, Button]
complexity: 1
sourcefiles: source/PlayState.hx
---
Use {% api flixel.ui.FlxButton %} to create a simple button with a text label which can call a function when pressed.

```haxe
var button = new FlxButton(x, y, "Button Text", onClickedFunction);
```