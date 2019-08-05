#!/bin/bash

export CFLAGS="$(python3.7-config --includes) -I$(python3 -c 'import numpy as np; print(np.get_include())')"

if [ -n "${YHROOT}" ] ; then
  export CFLAGS="-I${YHROOT}/usr/${YHFLAVOR}/include ${CFLAGS}"
fi

jupyter notebook "$@"