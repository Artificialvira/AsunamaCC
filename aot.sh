﻿#!/usr/sh

sudo mono --aot /usr/lib/mono/4.5/mscorlib.dll
for i in /usr/lib/mono/gac/*/*/*.dll; do sudo mono --aot $i; done

for i in *.dll; do sudo mono --aot $i; done

sudo mono --aot 'MissionPlanner.exe'


#gdb --args mono --debug 'MissionPlanner.exe'

#handle SIGXCPU SIG33 SIG35 SIG36 SIG37 SIG38 SIGPWR nostop noprint

