#
# Cookbook Name:: operatingsystem
# Recipe:: default
#
# Copyright 2013, TYPO3 Association
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

::Chef::Recipe.send(:include, Typo3::Base::Recipe)

# automatically include the recipe for the used platform (e.g. debian, ubuntu, windows)
Chef::Log.debug("Running on operating system #{node[:platform]}")
include_if_available "operatingsystem::#{node[:platform]}"
