EXTENSION = logerrors
MODULE_big	= logerrors
DATA = logerrors--1.0.sql logerrors--1.0--1.1.sql logerrors--1.1--2.0.sql logerrors--2.0--2.1.sql
OBJS = logerrors.o
PG_CONFIG = /opt/ymatrix/matrixdb5/bin/pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
SHLIB_LINK += -lpgport_shlib
REGRESS = logerrors
REGRESS_OPTS = --create-role=postgres --temp-config logerrors.conf --load-extension=logerrors --temp-instance=./temp-check
include $(PGXS) 
