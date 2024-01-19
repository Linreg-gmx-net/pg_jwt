MODULES = jwt_func

INSTALL_PROG = install -m 755 -p
PG_CONFIG = pg_config
# PGXS = $(shell $(PG_CONFIG) --pgxs)
INCLUDEDIR =
# $(shell $(PG_CONFIG) --includedir-server)
INCL_JWT += "jwt-cpp/include"
# include $(PGXS)

jwt_func-13.so:
	cc -fPIC -o jwt_func.o -c jwt_func.c  $(CFLAGS) -I./pg13/server
	cc -fPIC -o jwt_def.o -c jwt_def.cpp -fPIC -std=c++11 -I./pg13/server -I$(INCL_JWT)
	cc -shared -o jwt_func-13.so jwt_func.o jwt_def.o -lcrypto -lssl -lstdc++

jwt_func-14.so:
	cc -fPIC -o jwt_func.o -c jwt_func.c  $(CFLAGS) -I./pg14/server
	cc -fPIC -o jwt_def.o -c jwt_def.cpp -fPIC -std=c++11 -I./pg14/server -I$(INCL_JWT)
	cc -shared -o jwt_func-14.so jwt_func.o jwt_def.o -lcrypto -lssl -lstdc++

jwt_func-15.so:
	cc -fPIC -o jwt_func.o -c jwt_func.c  $(CFLAGS) -I./pg15/server
	cc -fPIC -o jwt_def.o -c jwt_def.cpp -fPIC -std=c++11 -I./pg15/server -I$(INCL_JWT)
	cc -shared -o jwt_func-15.so jwt_func.o jwt_def.o -lcrypto -lssl -lstdc++

jwt_func-16.so:
	cc -fPIC -o jwt_func.o -c jwt_func.c  $(CFLAGS) -I./pg16/server
	cc -fPIC -o jwt_def.o -c jwt_def.cpp -fPIC -std=c++11 -I./pg16/server -I$(INCL_JWT)
	cc -shared -o jwt_func-16.so jwt_func.o jwt_def.o -lcrypto -lssl -lstdc++

# jwt_func.o: jwt_func.c
# 	cc -fPIC -o jwt_func.o -c jwt_func.c  $(CFLAGS) -I$(INCLUDEDIR)
#
# jwt_def.o: jwt_def.cpp
# 	cc -fPIC -o jwt_def.o -c jwt_def.cpp -fPIC -std=c++11 -I$(INCLUDEDIR) -I$(INCL_JWT)

all: jwt_func-13.so jwt_func-14.so jwt_func-15.so jwt_func-16.so

install: all
	@test -d $(INSTALL_ROOT)/opt/pg_jwt/ || mkdir -p $(INSTALL_ROOT)/opt/pg_jwt/
	$(INSTALL_PROG) ./pg_jwt/pg_jwt.control     $(INSTALL_ROOT)/opt/pg_jwt/pg_jwt.control
	$(INSTALL_PROG) ./pg_jwt/pg_jwt--1.0.0.sql  $(INSTALL_ROOT)/opt/pg_jwt/pg_jwt--1.0.0.sql
	$(INSTALL_PROG) ./pg_jwt/pg_jwt-13.so       $(INSTALL_ROOT)/opt/pg_jwt/pg_jwt-13.so
	$(INSTALL_PROG) ./pg_jwt/pg_jwt-13.so       $(INSTALL_ROOT)/opt/pg_jwt/pg_jwt-13.so
	$(INSTALL_PROG) ./pg_jwt/pg_jwt-15.so       $(INSTALL_ROOT)/opt/pg_jwt/pg_jwt-15.so
	$(INSTALL_PROG) ./pg_jwt/pg_jwt-16.so       $(INSTALL_ROOT)/opt/pg_jwt/pg_jwt-16.so


clean:
	rm ./*.o ./jwt_func-13.so ./jwt_func-14.so ./jwt_func-15.so ./jwt_func-16.so
