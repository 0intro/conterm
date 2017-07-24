#include "u.h"
#include "lib.h"
#include "dat.h"
#include "fns.h"
#include "error.h"

extern Dev consdevtab;
extern Dev rootdevtab;
extern Dev pipedevtab;
extern Dev ssldevtab;
extern Dev tlsdevtab;
extern Dev ipdevtab;
extern Dev fsdevtab;
extern Dev mntdevtab;
extern Dev lfddevtab;
extern Dev audiodevtab;

Dev *devtab[] = {
	&rootdevtab,
	&consdevtab,
	&pipedevtab,
	&ssldevtab,
	&tlsdevtab,
	&ipdevtab,
	&fsdevtab,
	&mntdevtab,
	&lfddevtab,
	&audiodevtab,
	0
};

