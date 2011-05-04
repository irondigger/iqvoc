# encoding: UTF-8

# Copyright 2011 innoQ Deutschland GmbH
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

require 'iqvoc'
require 'iqvoc/version'
require 'iqvoc/versioning'
require 'iqvoc/deep_cloning'
require 'iqvoc/rdf_helper'

ActiveRecord::Base.send :include, Iqvoc::DeepCloning

# Set the default locale to the first configured PrefLabeling language
Rails.application.config.i18n.default_locale = Iqvoc::Concept.pref_labeling_languages.first

# Turn on i18n fallback feature
require "i18n/backend/fallbacks" 
I18n::Backend::Simple.send(:include, I18n::Backend::Fallbacks)
