# $Id: Makefile.PL,v 1.4 1999/07/29 09:06:46 martin Exp $

$DISTNAME = 'SETI-Stats';
$VERSION  = "1.03";

use ExtUtils::MakeMaker;

WriteMakefile(
	VERSION   => $VERSION,
#	DISTNAME  => $DISTNAME,
	NAME      => $DISTNAME,
	PMLIBDIRS => [qw(SETI)],
 
	'dist'    => {COMPRESS => 'gzip -9f',
		      SUFFIX   => '.gz', 
		      DIST_DEFAULT => 'all tardist',
		     },
 
	'clean'   => {FILES => join(" ", @clean)},
);

