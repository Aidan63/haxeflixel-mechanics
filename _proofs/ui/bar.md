---
title: bar
concept: UI
order: 3
tags: [bar, UI]
complexity: 2
sourcefiles: source/PlayState.hx source/Tracker.hx
---
Use {% api flixel.ui.FlxBar %} to create a bar which can track a variable in an object for the bars filled value.
Block colours, gradients and images can be used for the bar design.

```haxe
var bar = new FlxBar(x, y, FlxBarFillDirection, width, height, objToTrack, "varToTrack", minVal, maxVal, showBorder)
```