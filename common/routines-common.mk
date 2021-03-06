#
# Copyright (C) 2015
# This file is part of lofar-profiling.
# 
# lofar-profiling is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# lofar-profiling is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with lofar-profiling.  If not, see <http://www.gnu.org/licenses/>.
#

# Write a header
define write-header
	@echo "#"      >> $(2)
	@echo "#" $(1) >> $(2)
	@echo "#"      >> $(2)
endef

# Add number of threads as J flag
define set-build-options
	$(call write-header,$(0),$(1))
	@$(eval J = `cat /proc/cpuinfo | grep processor | wc -l`)
	@echo "ENV J ${J}" >> ${1}
	@echo "" >> ${1}
endef
