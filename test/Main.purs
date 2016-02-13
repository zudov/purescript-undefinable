module Test.Main where

import Prelude (Unit, Ordering(LT), compare, (==), not, bind, show)

import Data.Maybe (Maybe(..))
import Data.Undefinable (toUndefinable, toMaybe)

import Control.Monad.Eff (Eff())

import Test.Assert (ASSERT, assert)

main :: forall eff. Eff (assert :: ASSERT | eff) Unit
main = do
  assert ("undefined" == show (toUndefinable (Nothing :: Maybe Number)))

  assert (Just 42 == toMaybe (toUndefinable (Just 42)))
  assert (Nothing == toMaybe (toUndefinable (Nothing :: Maybe Number)))

  assert (not (toUndefinable Nothing == toUndefinable (Just 42)))
  assert (LT == toUndefinable Nothing `compare` toUndefinable (Just 42))
