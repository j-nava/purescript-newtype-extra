module Data.Newtype.Extra where

import Data.Newtype (class Newtype, unwrap)
 
newTypeUnwrap :: forall n t r. Newtype t n => t -> (n -> r) -> r
newTypeUnwrap t f = f (unwrap t)

infixl 8 newTypeUnwrap as ...
