---
linkTitle: config_folder.yml
title: config_folder.yml
weight: 2
---

### Folder Structure

In MUOS You can name your rom folders by anything you like, a common structure is for example

{{< filetree/container >}}
{{< filetree/folder name="my_romset" >}}
{{< filetree/folder name="ARCADE" >}}
{{< filetree/file name="1941.zip" >}}
{{< filetree/file name="1942.zip" >}}
{{< filetree/file name="1943.zip" >}}
{{< /filetree/folder >}}

{{< filetree/folder name="ATARI" >}}
{{< filetree/file name="Adventure (USA).zip" >}}
{{< filetree/file name="Asteroids (Japan, USA).zip" >}}
{{< filetree/file name="Atlantis (USA).zip" >}}

{{< /filetree/folder >}}
{{< filetree/folder name="GB" >}}
{{< filetree/file name="Adventures of Star Saver, The (USA, Europe).zip" >}}
{{< filetree/file name="Aerostar (USA, Europe).zip" >}}
{{< filetree/file name="Amazing Penguin (USA, Europe).zip" >}}

{{< /filetree/folder >}}
{{< filetree/folder name="GBA" >}}
{{< filetree/file name="Advance Wars (USA) (Rev 1).zip" >}}

{{< /filetree/folder >}}
{{< filetree/folder name="GBC" >}}
{{< filetree/file name="Aliens - Thanatos Encounter (USA, Europe).zip" >}}

{{< /filetree/folder >}}
{{< filetree/folder name="GG" >}}
{{< filetree/file name="Arena (USA, Europe).zip" >}}

{{< /filetree/folder >}}
{{< filetree/folder name="MD" >}}
{{< filetree/file name="Advanced Busterhawk Gleylancer (Japan) (Translated).zip" >}}

{{< /filetree/folder >}}
{{< filetree/folder name="MS" >}}
{{< filetree/file name="Action Fighter (USA, Europe, Brazil) (Rev 1).zip" >}}

{{< /filetree/folder >}}
{{< filetree/folder name="NEOGEO" >}}
{{< filetree/file name="2020bb.zip" >}}

{{< /filetree/folder >}}
{{< filetree/folder name="PCE" >}}
{{< filetree/file name="1943 Kai (Japan).zip" >}}

{{< /filetree/folder >}}
{{< filetree/folder name="PCECD" >}}
{{< filetree/file name="Ai Chou Aniki (Japan) (SADS).chd" >}}

{{< /filetree/folder >}}
{{< /filetree/folder >}}
{{< /filetree/container >}}

This folder structure needs to be represented in the file './user_config/config_folder.yml', with each folder being mapped to a platform (matching the type of roms the folder contains).
This file is generated automatically during the bootstrap process, but some folder names may be unable to be matched, in which case you will need to amend the file manually.

e.g. the above folder structure would be configured like this:

```yaml {filename="config_folder.yml"}
ARCADE: arcade
ATARI: atari2600
FC: nes
GB: gb
GBA: gba
GG: gamegear
MD: megadrive
MS: mastersystem
NEOGEO: neogeo
PCE: pcengine
PCECD: pcenginecd
```

{{< callout type="warning" >}}
'Ports' folder (for portmaster) is mapped internally to 'ps5' this is correct so no need to amend it
{{< /callout >}}