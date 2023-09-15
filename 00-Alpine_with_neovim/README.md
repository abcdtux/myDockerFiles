<table border="0">
<tr>
<td width="20%" align="center">
<img src="../images/abcdTux-128.png" alt="logo a b c d Tux">
</td>
<td width="60%" align="center">
<br>
<h1>00-Alpine_with_neovim</h1>
by abcdTux<br><br>
niveau / level <strong>d</strong>
</td>
<td width="20%" align="center">
<img src="../images/level_abcd_d-128.png" alt="level d">
</td>
</tr>
</table>

------------

<table border="0"> 

<tr> 
<td width="8%"> 
<img src="../images/flag_fr-25.png" alt="french flag"> 
</td> 
<td width="42%"> 
<h2>Description<h2> 
</td> 
<td width="8%"> 
<img src="../images/flag_uk-25.png" alt="french flag"> 
</td> 
<td width="42%"> 
<h2>Description</h2> 
</td> 
</tr>

<tr> 
<td colspan="2"> 
Une fois &laquo;&nbsp;buildée&nbsp;&raquo;, l'image contient uniquement une version de Linux Alpine avec neovim. Cette image sert de base aux autres images du dépôt.<br>
Le numéro de version de l'image Alpine utilisée est en première ligne du fichier Dockerfile.<br>
La version neovim est la dernière stable, elle est obtenue en compilant les sources.<br>
La configuration permet de supprimer tous les &laquo;&nbsp;warnings&nbsp;&raquo; retourner par nvim avec la commande :checkhealth. Il contient ge gestionnaire de packages Packer qui doit être initialiser par les commandes :
<td colspan="2">
Once built, the image only contains a version of Linux Alpine with neovim. This image serves as the basis for the other images in the repository.<br>
The version number of the Alpine image used is in the first line of the Dockerfile.<br>
The neovim version is the latest stable, it is obtained by compiling the sources.<br>
The configuration allows you to suppress all warnings returned by nvim with the :checkhealth command. It contains the Packer package manager which must be initialized by the commands :
</td> 
</tr>

</table>

```bash
nvim
:PackerSync
:qa

nvim
:MasonUpdate
:TSUpdate
```


----------

<table border="0"> 

<tr> 
<td width="8%"> 
<img src="../images/flag_fr-25.png" alt="french flag"> 
</td> 
<td width="42%"> 
<h2>Version<h2> 
</td> 
<td width="8%"> 
<img src="../images/flag_uk-25.png" alt="french flag"> 
</td> 
<td width="42%"> 
<h2>Version</h2> 
</td> 
</tr>

<tr> 
<td colspan="2"> 
Le numéro de version indiqué dans le fichier env.bash est complété par le numéro de version de l'Alpine contenu dans le Dockerfile.
</td> 
<td colspan="2">
The version number indicated in the env.bash file is supplemented by the version number of the Alpine contained in the Dockerfile.
</td> 
</tr>

</table>

<br>

<table border="0">

<tr>
<td width="45%" align="center">
<img src="../images/flag_fr-25.png" alt="french flag">
</td>
<td width="10%" align="center">
Version
</td>
<td width="45%" align="center">
<img src="../images/flag_uk-25.png" alt="french flag">
</td>
</tr>

<tr>
<td align="right">
Version initiale de l'image (0.1) basée sur une Alpine 3.18.3.
</td>
<td align="center">
<b>0.1-3.18.3<b>
</td>
<td>
Initial release of the image (0.1) based on an Alpine 3.18.3.
</td>
</tr>

</table>

----------

<table border="0"> 

<tr> 
<td width="8%"> 
<img src="../images/flag_fr-25.png" alt="french flag"> 
</td> 
<td width="42%"> 
<h2>Attention<h2> 
</td> 
<td width="8%"> 
<img src="../images/flag_uk-25.png" alt="french flag"> 
</td> 
<td width="42%"> 
<h2>Attention</h2> 
</td> 
</tr>

<tr> 
<td colspan="2"> 
Il est déconseillé de changer le nom de l'image, (champ IMAGE dans env.bash) car ce nom est utilisé dans les autres fichiers dockerfiles.
</td> 
<td colspan="2">
It is not recommended to change the image name (IMAGE field in env.bash) because this name is used in other docker files.
</td> 
</tr>

</table>

----------

<table border="0"> 

<tr> 
<td width="8%"> 
<img src="../images/flag_fr-25.png" alt="french flag"> 
</td> 
<td width="42%"> 
<h2>Mappage des touches<h2> 
</td> 
<td width="8%"> 
<img src="../images/flag_uk-25.png" alt="french flag"> 
</td> 
<td width="42%"> 
<h2>Key mapping</h2> 
</td> 
</tr>

<tr> 
<td colspan="2"> 
Le mappage des touches est configuré dans les fichiers suivants:
</td> 
<td colspan="2">
The key mapping is configured in the following files:
</td> 
</tr>

</table>

```bash
./.config/nvim/lua/abcdtux/keymaps.lua
./.config/nvim/after/plugin/comment.lua
```



