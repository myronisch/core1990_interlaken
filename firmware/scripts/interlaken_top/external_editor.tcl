 proc external_editor {filename linenumber} {
   exec geany -l $linenumber $filename &
 }
 set PrefSource(altEditor) external_editor
