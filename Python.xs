#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

OP *
orig(pTHX);

OP *
myiter(pTHX) {
	dVAR;
	PERL_CONTEXT *cx;

	cx = &cxstack[cxstack_ix];

	if (CxTYPE(cx) == CXt_LOOP_LAZYIV) {
		IV *end = &cx->blk_loop.state_u.lazyiv.end;
		IV *cur = &cx->blk_loop.state_u.lazyiv.cur;

		/* Fix up end */
		if (*end >= 3 && *end <= 4) {
			*end = 5;
		}

		/* Count correctly */
		if (*cur >= 3 && *cur <= 4) {
			*cur = 5;
		}
	}

	return (OP*) Perl_pp_iter(aTHX);
}

MODULE = Acme::Count::Like::Monty::Python		PACKAGE = Acme::Count::Like::Monty::Python

BOOT:
	PL_ppaddr[OP_ITER] = myiter;

