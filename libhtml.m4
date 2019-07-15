divert(-1)
dnl Basic
define(%[_NL]%, %[
]%)
dnl Generic Element
define(%[HTML_ELT]%, %[<%[$1]%>]%)
dnl Generic Environment
define(%[HTML_ENV]%, %[HTML_ELT(%[$1]%ifelse(%[$2]%,,,%[ ]%)%[$2]%)%[$3]%HTML_ELT(/%[$1]%)]%)
dnl Document Type (HTML5)
define(%[HTML_SIG]%, %[HTML_ELT(!DOCTYPE html)]%)
define(%[HTML]%,     %[HTML_ENV(html, %[$1]%, $2)]%)
dnl Document Metadata
dnl Head Environment
define(%[HTML_HEAD]%, %[HTML_ENV(head,,$1)]%)
dnl Script Environment
define(%[HTML_SCRIPT]%, %[HTML_ENV(script,  %[$1]%, $2)]%)
dnl Link Element
define(%[HTML_LINK]%, %[HTML_ELT(link %[$1]%)]%)
define(%[HTML_STYLE]%, %[HTML_LINK(rel="stylesheet" href="%[$1]%")]%)
dnl Meta Elements
define(%[HTML_META]%, %[HTML_ELT(meta %[$1]%)]%)
define(%[HTML_META_CHARSET]%,  %[HTML_META(%[charset="$1"]%)]%)
define(%[HTML_META_REFRESH]%,  %[HTML_META(%[http-equiv="refresh" content="$1"]%)]%)
define(%[HTML_META_VARIABLE]%, %[HTML_META(%[name="$1" content="$2"]%)]%)
dnl Title Environment
define(%[HTML_TITLE]%, %[HTML_ENV(title,,$1)]%)

dnl Content Sectioning
define(%[HTML_BODY]%,    %[HTML_ENV(body,    %[$1]%, $2)]%)
define(%[HTML_NAV]%,     %[HTML_ENV(nav,     %[$1]%, $2)]%)
define(%[HTML_HEADER]%,  %[HTML_ENV(header,  %[$1]%, $2)]%)
define(%[HTML_FOOTER]%,  %[HTML_ENV(footer,  %[$1]%, $2)]%)
define(%[HTML_ARTICLE]%, %[HTML_ENV(article, %[$1]%, $2)]%)
define(%[HTML_SECTION]%, %[HTML_ENV(section, %[$1]%, $2)]%)
define(%[HTML_DETAILS]%, %[HTML_ENV(details, %[$1]%, $2)]%)
define(%[HTML_SUMMARY]%, %[HTML_ENV(summary, %[$1]%, $2)]%)
define(%[HTML_ASIDE]%,   %[HTML_ENV(aside,   %[$1]%, $2)]%)

define(%[HTML_HEADING]%,   %[HTML_ENV(h%[]%$1,  %[$2]%, $3)]%)
define(%[HTML_BLOCK]%,     %[HTML_ENV(div,    %[$1]%, $2)]%)
define(%[HTML_BUTTON]%,    %[HTML_ENV(button, %[$1]%, $2)]%)
define(%[HTML_INLINE]%,    %[HTML_ENV(span,   %[$1]%, $2)]%)
define(%[HTML_PARAGRAPH]%, %[HTML_ENV(p,      %[$1]%, $2)]%)
define(%[HTML_HYPERLINK]%, %[HTML_ENV(a, ifelse(%[$1]%,,%[href="%[$2]%"]%,%[$1 href="%[$2]%"]%), $3)]%)
define(%[HTML_IMG]%,       %[HTML_ELT(img ifelse(%[$1]%,,%[src="%[$2]%" alt="%[$3]%"]%,%[$1 src="%[$2]%" alt="%[$3]%"]%))]%)

define(%[_REC_LIST]%, %[ifelse($#,1,%[HTML_ENV(li,, %[$1]%)]%, %[HTML_ENV(li,, %[$1]%)$0(shift($@))]%)]%)
define(%[HTML_ULIST_REC]%, %[HTML_ENV(ul, %[$1]%, _REC_LIST(shift($@)))]%)

define(%[HTML_LIST_ITEM]%, %[HTML_ENV(li, %[$1]%, $2)]%)
define(%[HTML_ULIST]%, %[HTML_ENV(ul, %[$1]%, $2)]%)
define(%[HTML_OLIST]%, %[HTML_ENV(ol, %[$1]%, $2)]%)
