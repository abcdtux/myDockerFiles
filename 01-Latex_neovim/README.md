<table border="0">
<tr>
<td width="20%" align="center">
<img src="../images/abcdTux-128.png" alt="logo a b c d Tux">
</td>
<td width="60%" align="center">
<br>
<h1>01-Alpine_with_neovim_for_latex</h1>
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
Une fois &laquo;&nbsp;buildée&nbsp;&raquo;, l'image contient une version de abcdtux/alpine-with-neovim avec le package texlive-full.<br>
Le numéro de version de l'image abcdtux/alpine-with-neovim utilisée est en première ligne du fichier Dockerfile.<br>
La configuration permet de supprimer tous les &laquo;&nbsp;warnings&nbsp;&raquo; retourner par nvim avec la commande :checkhealth. Il contient le gestionnaire de packages Packer qui doit être initialisé par les commandes :
</td> 
<td colspan="2">
Once "built", the image contains a version of abcdtux/alpine-with-neovim with the texlive-full package.<br>
The version number of the abcdtux/alpine-with-neovim image used is at the first line of the Dockerfile.<br>
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
<h2>D&épendances<h2> 
</td> 
<td width="8%"> 
<img src="../images/flag_uk-25.png" alt="french flag"> 
</td> 
<td width="42%"> 
<h2>Dependencies</h2> 
</td> 
</tr>

<tr> 
<td colspan="2"> 
Pour utiliser cette image, vous devez avoir &laquo;&nbsp;Buildé&nbsp;&raquo; l'image 00-Alpine_with_neovim.<br>
Vous devez indiquer le numéro de version obtenu ( docker images | grep "abcdtux/alpine-with-neovim" ) dans la première ligne du Dockerfile.
</td> 
<td colspan="2">
To use this image, you must have "Builded" the 00-Alpine_with_neovim image.<br>
You must indicate the version number obtained ( docker images | grep "abcdtux/Alpine_with_neovim" ) in the first line of the Dockerfile.
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
Le numéro de version indiqué dans le fichier env.bash est complété par le numéro de version contenu dans le Dockerfile.
</td> 
<td colspan="2">
The version number indicated in the env.bash file is supplemented by the version number contained in the Dockerfile.
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
Version initiale basée (0.1) sur une version abcdtux/alpine-with-neovim (0.1-3.18.3).
</td>
<td align="center">
<b>0.1-0.1-3.18.3</b>
</td>
<td>
Initial release based (0.1) on version of abcdtux/alipine-with-neovim (0.1-3.18.3).
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
Il est déconseillé de changer le nom de l'image, (champ IMAGE dans env.bash) car ce nom est utilisable dans les autres fichiers dockerfiles.
</td> 
<td colspan="2">
It is not recommended to change the name of the image (IMAGE field in env.bash) because this name can be used in other dockerfiles.
</td> 
</tr>

</table>

