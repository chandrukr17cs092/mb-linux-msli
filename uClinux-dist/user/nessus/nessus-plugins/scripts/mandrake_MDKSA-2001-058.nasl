#
# (C) Tenable Network Security
#
# This plugin text was extracted from Mandrake Linux Security Advisory MDKSA-2001:058
#


if ( ! defined_func("bn_random") ) exit(0);
if(description)
{
 script_id(13874);
 script_version ("$Revision: 1.3 $");
 
 name["english"] = "MDKSA-2001:058: ispell";
 
 script_name(english:name["english"]);
 
 desc["english"] = "
The remote host is missing the patch for the advisory MDKSA-2001:058 (ispell).


The ispell program uses mktemp() to open temporary files. This makes it
vulnerable to symlink attacks. The program now has a patch from OpenBSD applied
that uses mkstemp() instead, and switches gets() to fgets() for dealing with
user input.


Solution : http://wwwnew.mandriva.com/security/advisories?name=MDKSA-2001:058
Risk factor : High";



 script_description(english:desc["english"]);
 
 summary["english"] = "Check for the version of the ispell package";
 script_summary(english:summary["english"]);
 
 script_category(ACT_GATHER_INFO);
 
 script_copyright(english:"This script is Copyright (C) 2004 Tenable Network Security");
 family["english"] = "Mandrake Local Security Checks";
 script_family(english:family["english"]);
 
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/Mandrake/rpm-list");
 exit(0);
}

include("rpm.inc");
if ( rpm_check( reference:"ispell-3.1.20-10.1mdk", release:"MDK7.1", yank:"mdk") )
{
 security_hole(0);
 exit(0);
}
if ( rpm_check( reference:"ispell-de-3.1.20-10.1mdk", release:"MDK7.1", yank:"mdk") )
{
 security_hole(0);
 exit(0);
}
if ( rpm_check( reference:"ispell-en-3.1.20-10.1mdk", release:"MDK7.1", yank:"mdk") )
{
 security_hole(0);
 exit(0);
}
if ( rpm_check( reference:"ispell-3.1.20-13.1mdk", release:"MDK7.2", yank:"mdk") )
{
 security_hole(0);
 exit(0);
}
if ( rpm_check( reference:"ispell-en-3.1.20-13.1mdk", release:"MDK7.2", yank:"mdk") )
{
 security_hole(0);
 exit(0);
}
if ( rpm_check( reference:"ispell-3.1.20-15.1mdk", release:"MDK8.0", yank:"mdk") )
{
 security_hole(0);
 exit(0);
}
if ( rpm_check( reference:"ispell-en-3.1.20-15.1mdk", release:"MDK8.0", yank:"mdk") )
{
 security_hole(0);
 exit(0);
}
