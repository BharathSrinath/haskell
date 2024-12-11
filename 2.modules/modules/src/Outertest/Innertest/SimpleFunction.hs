module Outertest.Innertest.SimpleFunction where

firstOrEmpty list = if not (null list) then head list else "empty"