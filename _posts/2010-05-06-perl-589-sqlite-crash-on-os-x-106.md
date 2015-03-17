Slug: perl-589-sqlite-crash-on-os-x-106
Date: 2010-05-06
Title: Perl 5.8.9 + SQLite Crash on OS X 10.6?
layout: post

Whenever I run a perl-based unit test that uses a SQLite database, the perl process is crashing on me on Snow Leopard (10.6.3) with the following report:

	Process:         perl5.8.9 [8392]
	Path:            /usr/bin/perl5.8.9
	Identifier:      perl5.8.9
	Version:         ??? (???)
	Code Type:       X86 (Native)
	Parent Process:  perl5.8.9 [8390]

	Date/Time:       2010-05-06 09:24:39.869 -0700
	OS Version:      Mac OS X 10.6.3 (10D573)
	Report Version:  6

	Interval Since Last Report:          167719 sec
	Crashes Since Last Report:           25
	Per-App Crashes Since Last Report:   7
	Anonymous UUID:                      F9378D04-33BE-44C6-BB98-4BDA3D6C08E7

	Exception Type:  EXC_BAD_ACCESS (SIGSEGV)
	Exception Codes: KERN_INVALID_ADDRESS at 0x000000006c616faf
	Crashed Thread:  0  Dispatch queue: com.apple.main-thread

	Thread 0 Crashed:  Dispatch queue: com.apple.main-thread
	0   libsqlite3.dylib              	0x99547697 sqlite3_finalize + 39
	1   SQLite.bundle                 	0x0019da6e sqlite_st_destroy + 110
	2   SQLite.bundle                 	0x001934bd XS_DBD__SQLite__st_DESTROY + 621
	3   DBI.bundle                    	0x00185896 XS_DBI_dispatch + 9036
	4   libperl.dylib                 	0x0006b149 Perl_pp_entersub + 1288
	5   libperl.dylib                 	0x0005c274 Perl_nothreadhook + 68
	6   libperl.dylib                 	0x0005ec1e Perl_call_sv + 733
	7   libperl.dylib                 	0x0006e1f1 Perl_sv_clear + 485
	8   libperl.dylib                 	0x0006e83a Perl_sv_free + 259
	9   libperl.dylib                 	0x0006e652 Perl_sv_clear + 1606
	10  libperl.dylib                 	0x0006e83a Perl_sv_free + 259
	11  libperl.dylib                 	0x00050ac0 Perl_mg_free + 131
	12  libperl.dylib                 	0x0006e380 Perl_sv_clear + 884
	13  libperl.dylib                 	0x0006e83a Perl_sv_free + 259
	14  libperl.dylib                 	0x0008d0e8 Perl_leave_scope + 1471
	15  libperl.dylib                 	0x0008da73 Perl_pop_scope + 39
	16  libperl.dylib                 	0x000932d8 Perl_die_where + 1102
	17  libperl.dylib                 	0x0004e8c9 Perl_vdie + 92
	18  libperl.dylib                 	0x0004e975 Perl_die + 37
	19  libperl.dylib                 	0x000a4b14 Perl_pp_die + 958
	20  libperl.dylib                 	0x00064429 Perl_runops_standard + 41
	21  libperl.dylib                 	0x0005c287 Perl_nothreadhook + 87
	22  libperl.dylib                 	0x0005ec1e Perl_call_sv + 733
	23  libperl.dylib                 	0x0005ef8b Perl_call_list + 387
	24  libperl.dylib                 	0x00028fff Perl_ck_anoncode + 303
	25  libperl.dylib                 	0x00034bc7 Perl_newATTRSUB + 3777
	26  libperl.dylib                 	0x00033704 Perl_utilize + 1236
	27  libperl.dylib                 	0x0002645c Perl_yyparse + 5816
	28  libperl.dylib                 	0x00063cbd Perl_moreswitches + 13026
	29  libperl.dylib                 	0x00064154 perl_parse + 794
	30  perl5.8.9                     	0x00001e04 main + 258
	31  perl5.8.9                     	0x00001cf9 start + 53

I'm using the 32bit perl 5.8.9 and (I think) the system DBD::SQLite. I've tried installing DBI::SQLite, but that did not seem to affect it. Any ideas?
