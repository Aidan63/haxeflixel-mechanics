---
title: sprite button
concept: UI
order: 2
tags: [UI, Button]
complexity: 1
sourcefiles: source/PlayState.hx
---
A button which can contain any {% api flixel.FlxSprite %} as a label. This could be a {% api flixel.group.FlxSpriteGroup %} for complex labels.

```haxe
var button = new FlxSpriteButton(x, y, spriteLabel, onClickedFunction);
```