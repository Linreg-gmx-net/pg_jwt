MODULES = jwt_func

PG_CONFIG = pg_config
# PGXS = $(shell $(PG_CONFIG) --pgxs)
INCLUDEDIR = ./$(VERSION)/server
# $(shell $(PG_CONFIG) --includedir-server)
INCL_JWT += "jwt-cpp/include"
# include $(PGXS)

jwt_func.so: jwt_func.o jwt_def.o
	cc -shared -o jwt_func.so jwt_func.o jwt_def.o -lcrypto -lssl -lstdc++
	cp -av ./jwt_func.so ./jwt_func-$(VERSION).so

jwt_func.o: jwt_func.c
	cc -fPIC -o jwt_func.o -c jwt_func.c  $(CFLAGS) -I$(INCLUDEDIR)

jwt_def.o: jwt_def.cpp
	cc -fPIC -o jwt_def.o -c jwt_def.cpp -fPIC -std=c++11 -I$(INCLUDEDIR) -I$(INCL_JWT)

clean:
	rm ./*.o ./jwt_func.so
