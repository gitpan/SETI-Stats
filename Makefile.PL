# $Id: Makefile.PL,v 1.5 1999/08/04 11:53:33 martin Exp $

$DISTNAME = 'SETI-Stats';
$VERSION  = "1.04";

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

