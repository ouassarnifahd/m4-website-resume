include(libcommon.m4)
include(libhtml.m4)
include(defs.m4)
divert(-1)

# Lets put our nice template here
define(%[RESUME_SCRIPTS]%,
%[
    <!-- Bootstrap core JavaScript -->
    HTML_SCRIPT(%[src="vendor/jquery/jquery.js"]%)
    HTML_SCRIPT(%[src="vendor/bootstrap/js/bootstrap.bundle.js"]%)

    <!-- Plugin JavaScript -->
    HTML_SCRIPT(%[src="vendor/jquery-easing/jquery.easing.js"]%)

    <!-- Global site tag (gtag.js) - Google Analytics -->
    HTML_SCRIPT(%[async src="https://www.googletagmanager.com/gtag/js?id=UA-47997317-2"]%)
    HTML_SCRIPT(%[type="text/javascript"]%,
    %[_NL()dnl
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-47997317-2');
    ]%)

    <!-- Custom scripts for this template -->
    HTML_SCRIPT(%[src="js/resume.js"]%)

    <!-- show Go back navigation if coming from oussfahd.xyz JavaScript  -->
    HTML_SCRIPT(%[type="text/javascript"]%,
    %[_NL()dnl
        $('[data-toggle="tooltip"]').tooltip();

        if (document.referrer == "") {
            document.getElementById('goback').style = 'display: none !important';
        }
    ]%)
]%)

# Lets put our nice template here
define(%[RESUME_STYLE]%,
%[
    <!-- Bootstrap core CSS -->
    HTML_STYLE(%[vendor/bootstrap/css/bootstrap.css]%)

    <!-- Custom fonts for this template -->
    dnl HTML_STYLE(%[http://mplus-fonts.osdn.jp/webfonts/general-j/mplus_webfonts.css]%)
    dnl HTML_STYLE(%[https://fonts.googleapis.com/css?family=Sawarabi+Mincho]%)
    HTML_STYLE(%[https://fonts.googleapis.com/css?family=Noto+Serif+JP:300]%)
    HTML_STYLE(%[https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900]%)
    HTML_STYLE(%[https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i]%)
    HTML_STYLE(%[vendor/font-awesome/css/font-awesome.css]%)
    dnl HTML_STYLE(%[vendor/devicons/css/devicons.css]%)
    dnl HTML_STYLE(%[vendor/simple-line-icons/css/simple-line-icons.css]%)

    <!-- Custom styles for this template -->
    HTML_STYLE(%[css/resume.css]%)_NL()
]%)

define(%[RESUME_PRIMARY_COLOR]%, HTML_INLINE(%[class="text-primary"]%, %[$1]%))

# Lets put our nice template here
define(%[RESUME_HEAD]%,
%[
    HTML_HEAD(%[_NL()
        HTML_META_CHARSET(utf-8)
        HTML_META_VARIABLE(viewport,%[width=device-width, initial-scale=1, shrink-to-fit=no]%)
        HTML_META_VARIABLE(description, resume)
        HTML_META_VARIABLE(author, AUTHOR)

        HTML_TITLE(%[TITLE - Resume]%)

        RESUME_SCRIPTS()

        RESUME_STYLE()
    ]%)
]%)

# Lets put our nice template here
define(RESUME_PICTURE,
%[
    HTML_INLINE(%[class="d-none d-lg-block"]%,
    %[_NL()dnl
        HTML_IMG(%[class="img-fluid img-profile rounded-circle mx-auto mb-2"]%, PROFILE, ALT_PROFILE)
    ]%)
]%)

# Lets put our nice template here
define(%[FIRST_ITEM]%, %[ active]%)
define(RESUME_NAV_ITEM,
%[
    HTML_LIST_ITEM(%[class="nav-item"]%,
    %[dnl
        HTML_HYPERLINK(%[class="nav-link js-scroll-trigger%[]%FIRST_ITEM"]%, %[#]%TOLOWER(NOSPACE(%[$1]%)), %[$1]%)
        popdef(%[FIRST_ITEM]%)
        define(%[FIRST_ITEM]%, %[]%)
    ]%)
]%)

# Lets put our nice template here
define(RESUME_NAV_LIST,
%[HTML_NAV(%[class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav"]%,
%[_NL()dnl
    HTML_HYPERLINK(%[class="navbar-brand js-scroll-trigger"]%, %[#page-top]%,
    %[_NL()dnl
        HTML_INLINE(%[class="d-block d-lg-none"]%, %[Resume]%)
        RESUME_PICTURE()dnl
    ]%)
    HTML_BUTTON(%[class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"]%,
        %[HTML_INLINE(%[class="navbar-toggler-icon"]%)]%)
    HTML_BLOCK(%[class="collapse navbar-collapse" id="navbarSupportedContent"]%,
    %[_NL()dnl
        HTML_ULIST(%[class="navbar-nav"]%,
        %[_NL()dnl
            FOREACH(%[x]%, %[RESUME_NAV_ITEM(x)]%, $@)
            HTML_LIST_ITEM(%[class="nav-item dropdown"]%,
            %[HTML_HYPERLINK(%[class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"]%, %[#]%, %[Download PDF Version]%)
             HTML_BLOCK(%[class="dropdown-menu dropdown-menu-right" style="min-width: 5rem"]%,
            %[_NL()dnl
                HTML_HYPERLINK(%[class="dropdown-item d-none d-lg-block text-right"]%, RESUME_LINK, %[English]%)
                HTML_HYPERLINK(%[class="dropdown-item d-none d-lg-block text-right"]%, CV_LINK, %[French]%)
                HTML_HYPERLINK(%[class="dropdown-item d-block d-lg-none"]%, RESUME_LINK, %[English]%)
                HTML_HYPERLINK(%[class="dropdown-item d-block d-lg-none"]%, RESUME_LINK, %[French]%)
            ]%)
            ]%)
            HTML_LIST_ITEM(%[class="nav-item" id="goback"]%,
            %[HTML_HYPERLINK(%[class="nav-link"]%, %[javascript:history.back()]%, %[Go Back]%)]%)
        ]%)
    ]%)
    HTML_BLOCK(%[class="d-lg-block d-none"]%, %[HTML_HEADING(6,,Last update on esyscmd(date +%D))]%)
]%)
]%)

# Lets put our nice template here
define(%[BLOCK_ID]%, %[]%)
define(%[RESUME_BLOCK]%,
%[pushdef(%[BLOCK_ID]%, TOLOWER(NOSPACE(]%$1%[)))]%
%[HTML_SECTION(%[class="resume-section p-3 p-lg-5 d-flex d-column" id="]%BLOCK_ID()%["]%,
    %[HTML_BLOCK(%[class="my-auto w-100"]%,
    %[ifelse(%[$1]%,%[About]%,,HTML_HEADING(2, %[class="mb-5"]%, %[$1]%))
    $2]%)]%)
]%popdef(%[BLOCK_ID]%))

# Lets put our nice template here
define(%[RESUME_ABOUT]%,
%[HTML_HEADING(1, %[class="mb-0"]%,%[HTML_INLINE(%[class="text-primary"]%, %[$1]%) $2]%)
 HTML_BLOCK(%[class="subheading mb-5"]%,%[<br>$3 · $4 · HTML_HYPERLINK(,%[mailto:$5]%, %[$5]%)]%)
]%)

# Lets put our nice template here
define(%[RESUME_SOCIAL_ITEM]%,
%[HTML_LIST_ITEM(%[class="list-inline-item"]%,
    %[<a href="$2">
      <span class="fa-stack fa-lg">
        <i class="fa fa-circle fa-stack-2x"></i>
        <i class="fa fa-$1 fa-stack-1x fa-inverse"></i>
      </span>
    </a>]%)
]%)

define(%[RESUME_LIST_ITEM]%, HTML_LIST_ITEM(, HTML_ENV(i, %[class="fa-li fa fa-check"]%)%[$1]%))
define(%[RESUME_ULIST]%, HTML_ULIST(%[class="fa-ul mb-0"]%, $1))
define(%[RESUME_OLIST]%, HTML_OLIST(%[class="fa-ol mb-0"]%, $1))

dnl Nth Word of a given Sentence
define(%[WNS]%, %[esyscmd(%[echo "$1" | head -n1 | awk '{print $$2}' | tr -d '\n' | tr -d '[:punct:]']%)]%)
dnl Content Identificator for Degree/Job
define(%[DJ_ID]%, %[WNS(%[$1]%,1)%[]%WNS(%[$2]%,1)%[]%WNS(%[$3]%,2)]%)
dnl Content Identificator for Project
define(%[PRO_ID]%, %[esyscmd(%[echo "$1" | head -n1 | cut -d':' -f-1 | tr -d ' ' | tr -d '[:punct:]']% | tr -d '\n')]%)
dnl Content Identificator for Languages
define(%[LANG_ID]%, %[WNS(%[$1]%,1)]%)

dnl can be {deg/job, project, lang, skill}
dnl RESUME_CONTENT(deg/job, Position, Company, Place, Period, Details)
dnl RESUME_CONTENT(project, Title, Tags, Period, Details)
dnl RESUME_CONTENT(lang, Title, Mastery, Level, Details)
dnl RESUME_CONTENT(list, Category, Subcategories, Details)
define(%[RESUME_CONTENT]%,
%[
define(%[opt]%, %[ifelse(]%$2%[, degree, dj, ]%$2%[, job, dj)]%)dnl
ifelse(%[$2]%, %[project]%,
%[
    HTML_BLOCK(%[class="card]%ifelse($1,%[last]%,%[-last]%)%["]%,
    %[
        HTML_BLOCK(%[class="card-header" id="heading]%PRO_ID(%[$3]%)%[" data-toggle="collapse" data-target="#collapse]%PRO_ID(%[$3]%)%[" aria-expanded="false" aria-controls="collapse]%PRO_ID(%[$3]%)%["]%,
        %[
            HTML_BLOCK(%[class="resume-item d-flex flex-column flex-md-row"]%,
            %[
                HTML_BLOCK(%[class="resume-content mr-auto"]%,
                %[
                    HTML_HEADING(3, %[class="mb-0"]%, %[$3]%)
                    HTML_BLOCK(%[class="subheading"]%, %[%[$4]%]%)
                ]%)
                HTML_BLOCK(%[class="resume-date text-md-right"]%,
                %[
                    RESUME_PRIMARY_COLOR(%[$5]%)
                ]%)
            ]%)
        ]%)
        ifelse(%[$6]%,,,
        %[
            HTML_BLOCK(%[id="collapse]%PRO_ID(%[$3]%)%[" class="collapse" aria-labelledby="heading]%PRO_ID(%[$3]%)%[" data-parent="#]%BLOCK_ID()%["]%,
            %[
                HTML_BLOCK(%[class="card-body"]%,$6)
            ]%)
        ]%)
    ]%)
]%)dnl
ifelse(%[$2]%, %[lang]%,
%[
    HTML_BLOCK(%[class="card]%ifelse($1,%[last]%,%[-last]%)%["]%,
    %[
        HTML_BLOCK(%[class="card-header" id="heading$3" data-toggle="collapse" data-target="#collapse$3" aria-expanded="false" aria-controls="collapse$3"]%,
        %[
            HTML_BLOCK(%[class="resume-item d-flex flex-column flex-md-row"]%,
            %[
                HTML_BLOCK(%[class="resume-content mr-2"]%,
                %[
                    HTML_HEADING(3, %[class="mb-0"]%, %[$3]%)
                ]%)
                HTML_BLOCK(%[class="resume-content subheading mb-1"]%, %[%[$5]%]%)
            ]%)
            HTML_BLOCK(%[class="resume-item progress"]%,
            %[
                HTML_BLOCK(%[class="progress-bar bg-primary" role="progressbar" style="width: $4%;" aria-valuenow="$4" aria-valuemin="0" aria-valuemax="100"]%)
            ]%)
        ]%)
        ifelse(%[$6]%,,,
        %[
            HTML_BLOCK(%[id="collapse$3" class="collapse" aria-labelledby="heading$3" data-parent="#]%BLOCK_ID()%["]%,
            %[
                HTML_BLOCK(%[class="card-body"]%,$6)
            ]%)
        ]%)
    ]%)
]%)dnl
ifelse(%[$2]%, %[list]%,
%[
    HTML_BLOCK(%[class="card]%ifelse($1,%[last]%,%[-last]%)%["]%,
    %[
        HTML_BLOCK(%[class="card-header" id="heading$3" data-toggle="collapse" data-target="#collapse$3" aria-expanded="false" aria-controls="collapse$3"]%,
        %[
            HTML_BLOCK(%[class="resume-item d-flex flex-column flex-md-row"]%,
            %[
                HTML_BLOCK(%[class="resume-content mr-2"]%,
                %[
                    HTML_HEADING(3, %[class="mb-0"]%, %[$3]%)
                ]%)
                HTML_BLOCK(%[class="resume-content subheading mb-0"]%, %[$4]%)
            ]%)
        ]%)
        ifelse(%[$6]%,,,
        %[
            HTML_BLOCK(%[id="collapse$3" class="collapse" aria-labelledby="heading$3" data-parent="#]%BLOCK_ID()%["]%,
            %[
                HTML_BLOCK(%[class="card-body"]%,$5)
            ]%)
        ]%)
    ]%)
]%)dnl
ifelse(opt, %[dj]%,
%[
    HTML_BLOCK(%[class="card]%ifelse($1,%[last]%,%[-last]%)%["]%,
    %[
        HTML_BLOCK(%[class="card-header" id="heading]%DJ_ID(%[$4]%,%[$5]%,%[$6]%)%[" data-toggle="collapse" data-target="#collapse]%DJ_ID(%[$4]%,%[$5]%,%[$6]%)%[" aria-expanded="false" aria-controls="collapse]%DJ_ID(%[$4]%,%[$5]%,%[$6]%)%["]%,
        %[
            HTML_BLOCK(%[class="resume-item d-flex flex-column flex-md-row"]%,
            %[
                HTML_BLOCK(%[class="resume-content mr-auto"]%,
                %[
                    HTML_HEADING(3, %[class="mb-0"]%, %[$3]%)
                    HTML_BLOCK(%[class="subheading"]%, %[$4 – %[$5]%]%)
                ]%)
                HTML_BLOCK(%[class="resume-date text-md-right"]%,
                %[
                    RESUME_PRIMARY_COLOR(%[$6]%)
                ]%)
            ]%)
        ]%)
        ifelse(%[$7]%,,,
        %[
            HTML_BLOCK(%[id="collapse]%DJ_ID(%[$4]%,%[$5]%,%[$6]%)%[" class="mt-0 collapse" aria-labelledby="heading]%DJ_ID(%[$4]%,%[$5]%,%[$6]%)%[" data-parent="#]%BLOCK_ID()%["]%,
            %[
                HTML_BLOCK(%[class="card-body"]%,%[$7]%)
            ]%)
        ]%)
    ]%)
]%)dnl
undefine(%[opt]%)dnl
]%)
