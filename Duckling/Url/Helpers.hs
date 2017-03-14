-- Copyright (c) 2016-present, Facebook, Inc.
-- All rights reserved.
--
-- This source code is licensed under the BSD-style license found in the
-- LICENSE file in the root directory of this source tree. An additional grant
-- of patent rights can be found in the PATENTS file in the same directory.


{-# LANGUAGE OverloadedStrings #-}

module Duckling.Url.Helpers
  ( url
  ) where

import Data.String
import Data.Text (Text)
import qualified Data.Text as Text
import Prelude

import qualified Duckling.Url.Types as TUrl
import Duckling.Url.Types (UrlData(..))

-- -----------------------------------------------------------------
-- Patterns

-- -----------------------------------------------------------------
-- Production

url :: Text -> Text -> UrlData
url value domain = UrlData
  {TUrl.value = value, TUrl.domain = Text.toLower domain}
