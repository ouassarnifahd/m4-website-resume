include(libresume.m4)
divert(0)dnl
HTML_SIG()
HTML(%[lang="en-US"]%,
%[
RESUME_HEAD()

HTML_BODY(%[id="page-top"]%,
%[
    dnl TODO! Auto-generate nav: divert -> parse -> undivert all
    RESUME_NAV_LIST(%[About]%, %[Job Experience]%, %[Workflow]%, %[Projects]%, %[Education]%, %[Technical Skills]%, %[Communication Skills]%, %[Interests]%)

    RESUME_BLOCK(%[About]%,
    %[_NL()
        RESUME_ABOUT(%[فهد]%, %[وسرني]%, %[Electronic Engineering]%, %[France]%, %[ouassarni@ecole.ensicaen.fr]%)
        HTML_PARAGRAPH(%[class="mb-4"]%, %[
            Hi%[,]% my name is HTML_HYPERLINK(, %[https://oussfahd.xyz]%, %[Fahd Ouassarni]%). I came from a small city in east HTML_HYPERLINK(, %[https://en.wikipedia.org/wiki/Morocco]%, %[Morocco]%) called HTML_HYPERLINK(, %[https://goo.gl/maps/dPCWYfi45cr]%, %[Taourirt]%).
        ]%)
        HTML_PARAGRAPH(%[class="mb-4"]%, %[
            HTML_BOLD(,%[I am a young self-taught Electronic hobbyist.]%) When I was at a very young age%[,]% I got curious and started messing up with the electronic devices from 90s games as a result this became my main hobby.
            After getting into HTML_HYPERLINK(, %[https://www.ensicaen.fr]%, %[ENSICAEN]%) Engineering School%[,]% this hobby finally became my work.
        ]%)
        HTML_PARAGRAPH(%[class="mb-2"]%, %[
            My life is all about learning new things and my motivation is fueled with this Japanese quote.
        ]%)
        HTML_PARAGRAPH(%[class="text-center mb-4"]%, %[HTML_INLINE(%[class="h1" style="font-family: 'Noto Serif JP'" data-toggle="tooltip" data-placement="bottom" fallbackPlacement="clockwise" title="Learning is a treasure that follow its owner everywhere"]%,%[「学びは生涯の宝」]%)]%)
        HTML_ULIST(%[class="list-inline list-social-icons mb-0"]%,
        %[_NL()dnl
            RESUME_SOCIAL_ITEM(%[github]%, %[https://github.com/ouassarnifahd]%)
            RESUME_SOCIAL_ITEM(%[linkedin]%, %[https://linkedin.com/in/fahd-ouassarni]%)
        ]%)
    ]%)

    RESUME_BLOCK(%[Job Experience]%,
    %[
        RESUME_CONTENT(,%[job]%, %[Trainee Engineer (PFE)]%,
        %[Hyptra]%, %[Tailleville, France]%, %[April 2019 — September 2019]%,
        %[
            HTML_PARAGRAPH(%[class="mb-1"]%,
            %[
            ]%)
            HTML_PARAGRAPH(%[class="mb-1"]%,
            %[
                HTML_BOLD(, %[Missions:]%)
                RESUME_ULIST(
                %[
                    RESUME_LIST_ITEM(Embedded software developpement for 8051.)
                    RESUME_LIST_ITEM(PCB design using Altium Designer.)
                    RESUME_LIST_ITEM(FPGA synthesis on PicoZed.)
                ]%)
            ]%)
        ]%)

        RESUME_CONTENT(,%[job]%, %[Technical Team Leader]%,
        %[SERI (ENSICAEN)]%, %[Caen, France]%, %[September 2018]%,
        %[
            HTML_PARAGRAPH(%[class="mb-0"]%,
            %[
                A two weeks start-up entreprise administrated by ENSICAEN.
            ]%)
            HTML_PARAGRAPH(%[class="mb-0 mt-1"]%,
            %[
                HTML_BOLD(, %[Missions:]%)
                RESUME_ULIST(
                %[
                    RESUME_LIST_ITEM(WIFI Hotspot configuration.)
                    RESUME_LIST_ITEM(HTTP media server and simple TCP wrapper.)
                    RESUME_LIST_ITEM(Wireless Transmission Chain (Test and Validation).)
                ]%)
            ]%)
            HTML_PARAGRAPH(%[class="mb-0"]%,
            %[
                HTML_BOLD(, %[Product:]%) Space Inspection Rover [HTML_HYPERLINK(,%[https://www.facebook.com/watch/?v=335022830595514]%,%[Video]%)]
            ]%)
        ]%)

        RESUME_CONTENT(,%[job]%, %[Special Research Student]%,
        %[Graduate School of Science and Technology]%, %[Kumamoto, Japan]%, %[May 2018 — August 2018]%,
        %[
            HTML_PARAGRAPH(,
            %[
                HTML_BOLD(, %[Hosted by:]%) Human Interface and Cyber Communication Laboratory. <br>
                HTML_BOLD(, %[Research subject:]%) Multichannel speech segregation using FDBM on a Single Board Computer. [HTML_HYPERLINK(,%[https://github.com/ouassarnifahd/cfdbm]%,%[cfdbm]%)]
            ]%)
        ]%)

        RESUME_CONTENT(last,%[job]%, %[Junior Web Designer]%,
        %[Citizenship school of political studies]%, %[Rabat, Morocco]%, %[June 2013 — July 2013]%,
        %[
            HTML_PARAGRAPH(%[class="mb-0"]%,
            %[
                HTML_HYPERLINK(,%[https://www.ecep.ma/en/]%,%[CSPS]%) is a non-profit association started in early 2013 by civil society actors aiming to improve capacity building of those involved in public affairs management in Morocco.
            ]%)
            HTML_PARAGRAPH(%[class="mb-0 mt-1"]%,
            %[
                HTML_BOLD(, %[Mission:]%) Designing an informative website for a non-profit association.
            ]%)
            HTML_PARAGRAPH(%[class="mb-0"]%,
            %[
                HTML_BOLD(, %[Product:]%) Informative website using Blogspot. [HTML_HYPERLINK(,%[https://ecepmaroc.blogspot.com]%,%[blog]%)]
            ]%)
        ]%)
    ]%)

    RESUME_BLOCK(%[Workflow]%,
    %[
        RESUME_CONTENT(, %[list]%, %[Operating Systems]%, %[Windows%[,]% RESUME_PRIMARY_COLOR(Linux)%[,]% MacOS]%)
        RESUME_CONTENT(, %[list]%, %[Building Systems]%, %[Linux From Scratch%[,]% Buildroot%[,]% RESUME_PRIMARY_COLOR(Yocto)%[,]% OpenWRT.]%)
        RESUME_CONTENT(, %[list]%, %[Text editors]%, %[Atom%[,]% Notepad++%[,]% RESUME_PRIMARY_COLOR(VIM).]%)
        RESUME_CONTENT(, %[list]%, %[Compilers]%, %[RESUME_PRIMARY_COLOR(GCC)%[,]% LLVM%[,]% Keil%[,]% SDCC.]%)
        RESUME_CONTENT(, %[list]%, %[Debuggers]%, %[RESUME_PRIMARY_COLOR(valgrind)%[,]% gdb%[,]% strace%[,]% ftrace%[,]% SystemTap.]%)
        RESUME_CONTENT(, %[list]%, %[Boards]%, %[Raspberry Pi 3%[,]% RESUME_PRIMARY_COLOR(OrangePi Zero)%[,]% TL-MR3020%[,]% TinyFPGA BX.]%)
        RESUME_CONTENT(, %[list]%, %[EDA]%, %[Eagle%[,]% RESUME_PRIMARY_COLOR(Altium Designer)%[,]% Kicad.]%)
        RESUME_CONTENT(last, %[list]%, %[IDE]%, %[Eclipse (RESUME_PRIMARY_COLOR(Vivado)%[,]% MPLABX%[,]% CCS)%[,]% CLion.]%)
    ]%)

    RESUME_BLOCK(%[Projects]%,
    %[

        RESUME_CONTENT(,%[project]%, %[S1MP3 Repairing: Reverse Engineering Project]%,
        %[@Home, RE, S1MP3, Z80, AD-DSP]%, %[July 2019 — Ongoing]%,
        %[
            HTML_PARAGRAPH(,
            %[
                Repairing and updating the firmware of my old mp3 device.
            ]%)
        ]%)

        RESUME_CONTENT(,%[project]%, %[OpenWRT On WiSOC: Setting up a pocket WiFi router]%,
        %[@Home, Telecom, OpenWRT, Linux, RISC]%, %[June 2019 — Ongoing]%,
        %[
            HTML_PARAGRAPH(,
            %[
                Introduction to OpenWRT system lighting the darkness of wifi routers and firewalls.
            ]%)
        ]%)

        RESUME_CONTENT(,%[project]%, %[PCB Design On Altium Designer: Digital Potentiometer Feature]%,
        %[@Hyptra, C ANSI, 8051, SPI, DigiPot, PCB]%, %[May 2019 — July 2019]%,
        %[
            HTML_PARAGRAPH(,
            %[
                Replacing mecanical potentiometers with SPI controlled ones on an existing board along with the corresponding firmware driving them.
            ]%)
        ]%)

        RESUME_CONTENT(,%[project]%, %[Orange Pi Zero: Mainline Linux Kernel Patches]%,
        %[@Home, Linux, Kernel, Allwinner H2+, ARM]%, %[March 2019 — Ongoing]%,
        %[
            HTML_PARAGRAPH(,
            %[
                Introduction to Linux kernel and device tree compiling and patching in order to replace the legacy kernel for the board.
            ]%)
        ]%)

        RESUME_CONTENT(,%[project]%, %[Xen On ARM: Virtualization for Embedded Systems]%,
        %[@Home, Linux, FreeRTOS, Xen, ARM]%, %[March 2019 — Ongoing]%,
        %[
            HTML_PARAGRAPH(,
            %[
                Introduction to Xen and other different hypervisors in a quest to enhance both my Linux and ARM architecture skills.
            ]%)
        ]%)

        RESUME_CONTENT(,%[project]%, %[SoC On FPGA: VHDL SPI Master]%,
        %[@ENSICAEN, C, ZYNQ, VIVADO, VHDL, FPGA, SPI, LCD]%, %[December 2018 — February 2019]%,
        %[
            HTML_PARAGRAPH(,
            %[
                Introduction to Zynq Processing System alongside VHDL synthesized peripherals with the purpose of driving an external LCD.
            ]%)
        ]%)

        RESUME_CONTENT(,%[project]%, %[Embedded Linux: Evaluation of TCI6638K2K]%,
        %[@THALES AIR SYSTEMS SAS, Linux, Debug, ARM, TI-DSP]%, %[October 2018 — February 2019]%,
        %[
            HTML_PARAGRAPH(,
            %[
                Introduction to Linux debugging tools and ARM/DSP Memory Sharing management.
            ]%)
        ]%)

        RESUME_CONTENT(,%[project]%, %[cfdbm: Speech segragation on SBC]%,
        %[@KUMAMOTO, Speech Processing, FDBM, ALSA, C, Linux, SBC]%, %[May 2018 — August 2018]%,
        %[
            HTML_PARAGRAPH(,
            %[
                Speech segragation using Frequency domain binaural model on a Linux single board computer (Orange Pi Zero).
            ]%)
        ]%)

        RESUME_CONTENT(,%[project]%, %[ThermOS: FreeRTOS IoT Project]%,
        %[@ENSICAEN, IoT, C, FreeRTOS, ADC, UART, PIC32]%, %[February 2018 — April 2018]%,
        %[
            HTML_PARAGRAPH(,
            %[
                Introduction to RealTime Operating Systems with FreeRTOS for a temperature sensor console.
            ]%)
        ]%)

        RESUME_CONTENT(,%[project]%, %[PCB Design On Eagle: Mobile Robot Race]%,
        %[@ENSICAEN, LTSpice, Eagle, PLL, Op Amp, PCB]%, %[October 2017 — April 2018]%,
        %[
            HTML_PARAGRAPH(,
            %[
                A race of magnetic line following motorized machines using a PIC18 microcontroller and an Op Amp design for signal processing.
            ]%)
        ]%)

        RESUME_CONTENT(last,%[project]%, %[Solar Energy: Power Bank Extension (PART1)]%,
        %[@Home, Photovoltaic, Boost Converter, USB]%, %[July 2017 — August 2017]%,
        %[
            HTML_PARAGRAPH(,
            %[
                First part of the power bank solar panel extension project which is mostly about the panel hardware part.
            ]%)
        ]%)
    ]%)

    RESUME_BLOCK(%[Education]%,
    %[
        RESUME_CONTENT(,%[degree]%, %[Electronic Engineering Master Degree]%,
        %[ENSICAEN]%, %[Caen, France]%, %[September 2016 — March 2020]%,
        %[
            HTML_PARAGRAPH(%[class="mb-0"]%,
            %[
                HTML_HYPERLINK(,%[https://www.ensicaen.fr]%,%[ENSICAEN]%) is a public institution%[,]% authorized to award a Graduate Diploma of Engineering (equivalent to a Master’s degree) which is acknowledged by the French National Engineering Accreditation Commission (HTML_HYPERLINK(,%[https://www.cti-commission.fr]%,%[CTI]%)).
            ]%)
            HTML_PARAGRAPH(%[class="mb-0 mt-1"]%,
            %[
                HTML_BOLD(, %[Speciality:]%) Electronics and applied physics.
            ]%)
            HTML_PARAGRAPH(%[class="mb-0"]%,
            %[
                HTML_BOLD(, %[Major:]%) Signal%[,]% regulation for embedded and telecom. [HTML_HYPERLINK(,%[http://livretpedagogique.ensicaen.fr/pages/afficherSpecialite.php?numSpecialite=4&]%,%[Courses]%)]
            ]%)
        ]%)

        RESUME_CONTENT(,%[degree]%, %[Higher School Preparatory Classes]%,
        %[Jean Moulin High School]%, %[Forbach, France]%, %[September 2014 — May 2016]%,
        %[
            HTML_PARAGRAPH(%[class="mb-0"]%,
            %[
                They consist of two very intensive years with the main goal of training undergraduate students for enrollment in one of the HTML_HYPERLINK(,%[https://en.wikipedia.org/wiki/Grandes_%C3%A9coles]%,%[grandes écoles]%).
            ]%)
            HTML_PARAGRAPH(%[class="mb-0"]%,
            %[
                HTML_BOLD(, %[Speciality:]%) %[Mathematics, Physics and Engineering Science.]%
            ]%)
            HTML_PARAGRAPH(%[class="mb-0 mt-1"]%,
            %[
                HTML_BOLD(, %[Courses:]%)
                RESUME_ULIST(
                %[
                    RESUME_LIST_ITEM(%[Mathematics: Algebra%[,]% Linear Algebra%[,]% Calculus%[,]% Probability.]%)
                    RESUME_LIST_ITEM(%[Physics: Electronics%[,]% Modern Physics%[,]% Thermodynamics%[,]% Optics%[,]% Chemistry.]%)
                    RESUME_LIST_ITEM(%[Engineering Science: Control Theory%[,]% Computer Science.]%)
                ]%)
            ]%)
            HTML_PARAGRAPH(%[class="mb-0"]%,
            %[
                HTML_BOLD(, %[Results:]%) Admission at ENSICAEN via Concours Commun Polytechnique.
            ]%)
        ]%)

        RESUME_CONTENT(last,%[degree]%, %[Baccalaureate]%,
        %[Salman Al Farissi High School]%, %[Salé, Morocco]%, %[June 2014]%,
        %[
            HTML_PARAGRAPH(,
            %[
                HTML_BOLD(, %[Speciality:]%) Mathematics and Engineering Science. <br>
            ]%)
        ]%)
    ]%)

    RESUME_BLOCK(%[Technical Skills]%,
    %[
        RESUME_CONTENT(, %[list]%, %[Architectures]%, %[x86%[,]% RESUME_PRIMARY_COLOR(ARM)%[,]% RESUME_PRIMARY_COLOR(PIC)%[,]% 8051%[,]% Z80.]%)
        RESUME_CONTENT(, %[list]%, %[Communication]%, %[RESUME_PRIMARY_COLOR(UART)%[,]% RESUME_PRIMARY_COLOR(SPI)%[,]% I2C%[,]% CAN%[,]% USB.]%)
        RESUME_CONTENT(, %[list]%, %[Programming]%, %[RESUME_PRIMARY_COLOR(Assembly)%[,]% RESUME_PRIMARY_COLOR(C/C++)%[,]% Java%[,]% Javascript%[,]% M4.]%)
        RESUME_CONTENT(, %[list]%, %[Networking]%, %[RESUME_PRIMARY_COLOR(iptables)%[,]% RESUME_PRIMARY_COLOR(nfs)%[,]% tftp%[,]% hostapd.]%)
        RESUME_CONTENT(, %[list]%, %[Frameworks]%, %[RESUME_PRIMARY_COLOR(FreeRTOS)%[,]% ALSA%[,]% OpenMP%[,]% RESUME_PRIMARY_COLOR(Bootstrap)%[,]% SDL%[,]% RESUME_PRIMARY_COLOR(Yocto).]%)
        RESUME_CONTENT(, %[list]%, %[Simulation]%, %[RESUME_PRIMARY_COLOR(MATLAB)%[,]% Simulink.]%)
        RESUME_CONTENT(, %[list]%, %[Scripting]%, %[RESUME_PRIMARY_COLOR(Shell)%[,]% RESUME_PRIMARY_COLOR(Python)%[,]% Perl%[,]% Lua.]%)
        RESUME_CONTENT(, %[list]%, %[Utilities]%, %[RESUME_PRIMARY_COLOR(Git)%[,]% RESUME_PRIMARY_COLOR(SSH)%[,]% RESUME_PRIMARY_COLOR(Makefile)%[,]% Wireshark.]%)
        RESUME_CONTENT(, %[list]%, %[Markup]%, %[RESUME_PRIMARY_COLOR(%[%[HTML/CSS]%]%)%[,]% RESUME_PRIMARY_COLOR(LaTeX)%[,]% Markdown.]%)
        RESUME_CONTENT(last, %[list]%, %[HDL]%, %[RESUME_PRIMARY_COLOR(VHDL)%[,]% Verilog.]%)
    ]%)

    RESUME_BLOCK(%[Communication Skills]%,
    %[
        RESUME_CONTENT(,%[lang]%, %[Arabic]%, %[90]%, %[Native Speaker]%)
        RESUME_CONTENT(,%[lang]%, %[English]%, %[80]%, %[Professional level (TOEIC 855)]%)
        RESUME_CONTENT(,%[lang]%, %[French]%, %[85]%, %[Bilingual level (C1)]%)
        RESUME_CONTENT(,%[lang]%, %[Spanish]%, %[20]%, %[Beginner level (A2)]%)
        RESUME_CONTENT(,%[lang]%, %[German]%, %[10]%, %[Beginner level (A1)]%)
        RESUME_CONTENT(last,%[lang]%, %[Japanese]%, %[25]%, %[Beginner level (N4)]%)
    ]%)

    RESUME_BLOCK(%[Interests]%,
    %[
        RESUME_CONTENT(, %[list]%, %[Technology]%)
        RESUME_CONTENT(, %[list]%, %[Cultures]%)
        RESUME_CONTENT(, %[list]%, %[Travel]%)
        RESUME_CONTENT(last, %[list]%, %[Video Games]%)
    ]%)

    dnl RESUME_SCRIPTS()
]%)

]%)
