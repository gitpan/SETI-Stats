# $Id: Makefile.PL,v 1.6 1999/08/06 17:03:55 martin Exp $

$DISTNAME = 'SETI-Stats';
$VERSION  = "1.05";

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

