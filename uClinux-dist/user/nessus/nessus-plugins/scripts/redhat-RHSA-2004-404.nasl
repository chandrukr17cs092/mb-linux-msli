#
# (C) Tenable Network Security
#
#
# The text of this plugin is (C) Red Hat Inc.

if ( ! defined_func("bn_random") ) exit(0);
if(description)
{
 script_id(13846);
 script_version ("$Revision: 1.6 $");
 script_cve_id("CVE-2004-0686");

 name["english"] = "RHSA-2004-404: samba";
 
 script_name(english:name["english"]);
 
 desc["english"] = '

  Updated samba packages that fix a buffer overflow issue are now available.

  Samba provides file and printer sharing services to SMB/CIFS clients.

  The Samba team discovered a buffer overflow in the code used to support
  the \'mangling method = hash\' smb.conf option. The Common Vulnerabilities
  and Exposures project (cve.mitre.org) has assigned the name CVE-2004-0686
  to this issue.

  All users of Samba should upgrade to these updated packages, which
  contain an upgrade to Samba-2.2.10, which is not vulnerable to this
  issue.




Solution : http://rhn.redhat.com/errata/RHSA-2004-404.html
Risk factor : High';

 script_description(english:desc["english"]);
 
 summary["english"] = "Check for the version of the samba packages";
 script_summary(english:summary["english"]);
 
 script_category(ACT_GATHER_INFO);
 
 script_copyright(english:"This script is Copyright (C) 2004 Tenable Network Security");
 family["english"] = "Red Hat Local Security Checks";
 script_family(english:family["english"]);
 
 script_dependencies("ssh_get_info.nasl");
 
 script_require_keys("Host/RedHat/rpm-list");
 exit(0);
}

include("rpm.inc");
if ( rpm_check( reference:"samba-2.2.10-1.21as.1", release:"RHEL2.1") )
{
 security_hole(0);
 exit(0);
}
if ( rpm_check( reference:"samba-client-2.2.10-1.21as.1", release:"RHEL2.1") )
{
 security_hole(0);
 exit(0);
}
if ( rpm_check( reference:"samba-common-2.2.10-1.21as.1", release:"RHEL2.1") )
{
 security_hole(0);
 exit(0);
}
if ( rpm_check( reference:"samba-swat-2.2.10-1.21as.1", release:"RHEL2.1") )
{
 security_hole(0);
 exit(0);
}

if ( rpm_exists(rpm:"samba-", release:"RHEL2.1") )
{
 set_kb_item(name:"CVE-2004-0686", value:TRUE);
}

set_kb_item(name:"RHSA-2004-404", value:TRUE);
