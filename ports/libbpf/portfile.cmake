#    any-port-in-a-storm - port files for vcpkg
#    Copyright (C) 2024 Michael Przybylski
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.

vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO libbpf/libbpf
        REF v1.4.1
        SHA512 3073806d9fc2aafb6620f41bf7d73f17ebe92cff577821a309d0fb2192a88b8bb5a984d11590fe1050035dc4dc154d50372f78c2e87a1000ddb795e30120ddf5
        HEAD_REF master
)

# See https://github.com/libbpf/libbpf#building-libbpf
set(ENV{BUILD_STATIC_ONLY} y)

vcpkg_build_make(ENABLE_INSTALL)