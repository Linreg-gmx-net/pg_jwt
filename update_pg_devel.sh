#! /bin/bash
#

sudo zypper rm postgresql15-devel postgresql15-llvmjit-devel postgresql15-server-devel


sudo zypper in postgresql13-server-devel

mkdir pg13

cp -av /usr/include/pgsql/server ./pg13/

sudo zypper rm postgresql13-llvmjit-devel postgresql13-server-devel postgresql-llvmjit-devel postgresql-server-devel postgresql13-devel


sudo zypper in postgresql14-llvmjit-devel postgresql14-server-devel postgresql-llvmjit-devel postgresql-server-devel postgresql14-devel

mkdir pg14

cp -av /usr/include/pgsql/server ./pg14

sudo zypper rm postgresql14-devel postgresql14-llvmjit-devel postgresql14-server-devel postgresql-devel postgresql-llvmjit-devel
  postgresql-server-devel

mkdir ./pg15

cp -av /usr/include/pgsql/server ./pg15

sudo zypper rm postgresql15-llvmjit-devel postgresql15-server-devel postgresql-llvmjit-devel postgresql-server-devel
