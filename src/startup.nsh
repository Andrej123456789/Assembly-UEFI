/* Thanks to Poncho for this file */

@echo -off
mode 80 25

cls
if exist template then
 template
 goto END
endif

if exist fs0:template then
 fs0:
 echo Found bootloader on fs0:
 template
 goto END
endif

if exist fs1:template then
 fs1:
 echo Found bootloader on fs1:
 template
 goto END
endif

if exist fs2:template then
 fs2:
 echo Found bootloader on fs2:
 template
 goto END
endif

if exist fs3:template then
 fs3:
 echo Found bootloader on fs3:
 template
 goto END
endif

if exist fs4:template then
 fs4:
 echo Found bootloader on fs4:
 template
 goto END
endif

if exist fs5:template then
 fs5:
 echo Found bootloader on fs5:
 template
 goto END
endif

if exist fs6:template then
 fs6:
 echo Found bootloader on fs6:
 template
 goto END
endif

if exist fs7:template then
 fs7:
 echo Found bootloader on fs7:
 template
 goto END
endif

echo "Unable to find bootloader".
 
:END
