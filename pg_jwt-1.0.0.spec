#
# spec file for package pg_jwt
#
# Copyright (c) 2015 SUSE LINUX Products GmbH, Nuernberg, Germany.
#
# All modifications and additions to the file contributed by third parties
# remain the property of their copyright owners, unless otherwise agreed
# upon. The license for this file, and modifications and additions to the
# file, is the same license as for the pristine package itself (unless the
# license for the pristine package is not an Open Source License, in which
# case the license is the MIT License). An "Open Source License" is a
# license that conforms to the Open Source Definition (Version 1.9)
# published by the Open Source Initiative.

# Please submit bugfixes or comments via http://bugs.opensuse.org/
#
%define group Productivity/Databases/Tools

Name:       pg_jwt
Version:	1.0.0
Release:	20240118
License:	GPL-2.0
Summary:	pg_jwt - Extension for PostgreSQL implemting jwt and passkeys functions
Url:		http://projekte.ang.de/pg_jwt
Group:		%{group}
Source:		%{name}-%{version}.tar.gz
BuildRequires:  postgresql-server-devel
BuildRoot:      %{_tmppath}/%{name}-%{version}-build

%description
pg_jwt -  Extension for PostgreSQL implemting jwt and passkeys functions

%prep
%setup -q

%build
make all

%clean
rm -Rf %{buildroot}

%install
make install DESTDIR=%{buildroot} INSTALL_ROOT=%{buildroot}

%pre

%post
for i in 13 14 15 16;
do
    if [ -e /usr/share/postgresql$i/extension ]; then
        test -e /usr/share/postgresql$i/extension/pg_jwt.control || ln -s /opt/pg_jwt/pg_jwt.control /usr/share/postgresql$i/extension/
        test -e /usr/share/postgresql$i/extension/pg_jwt.so || ln -s /opt/pg_jwt/pg_jwt-$i.so /usr/share/postgresql$i/extension/
        test -e /usr/share/postgresql$i/extension/pg_jwt--1.0.sql || ln -s /opt/pg_jwt/pg_jwt--1.0.sql /usr/share/postgresql$i/extension/
    fi
done

%postun
if [ $1 = 0 ]; then
for i in 13 14 15 16;
do
    if [ -e /usr/share/postgresql$i/extension ]; then
        test -e /usr/share/postgresql$i/extension/pg_jwt.control && rm /usr/share/postgresql$i/extension/pg_jwt.control
        test -e /usr/share/postgresql$i/extension/pg_jwt.so && rm /usr/share/postgresql$i/extension/pg_jwt.so
        test -e /usr/share/postgresql$i/extension/pg_jwt--1.0.sql && rm /usr/share/postgresql$i/extension/pg_jwt--1.0.sql
    fi
done
fi
exit 0;

%files
%defattr(-,root,root)
/opt/pg_jwt/pg_jwt.control
/opt/pg_jwt/pg_jwt-13.so
/opt/pg_jwt/pg_jwt-14.so
/opt/pg_jwt/pg_jwt-15.so
/opt/pg_jwt/pg_jwt-16.so
/opt/pg_jwt/pg_jwt--1.0.sql

