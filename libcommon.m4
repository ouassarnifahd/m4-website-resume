divert(-1)
changequote(%[,]%)
define(%[ALPHA_LWR]%, %[abcdefghijklmnopqrstuvwxyz]%)
define(%[ALPHA_UPR]%, %[ABCDEFGHIJKLMNOPQRSTUVWXYZ]%)
define(%[TOUPPER]%, %[translit($*, a-z, A-Z)]%)
define(%[TOLOWER]%, %[translit($*, A-Z, a-z)]%)
define(%[NOSPACE]%, %[esyscmd(%[echo "$1" | head -n1 | tr -d ' ' | tr -d '\n']%)]%)

define(%[FOREACH]%,%[ifelse(eval($#>2),1,
    %[pushdef(%[$1]%,%[$3]%)$2%[]%popdef(%[$1]%)dnl
  %[]%ifelse(eval($#>3),1,%[$0(%[$1]%,%[$2]%,shift(shift(shift($@))))]%)]%)]%)
