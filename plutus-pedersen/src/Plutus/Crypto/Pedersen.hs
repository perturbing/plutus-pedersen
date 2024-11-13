{-# LANGUAGE DataKinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE Strict #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# OPTIONS_GHC -fno-full-laziness #-}
{-# OPTIONS_GHC -fno-ignore-interface-pragmas #-}
{-# OPTIONS_GHC -fno-omit-interface-pragmas #-}
{-# OPTIONS_GHC -fno-spec-constr #-}
{-# OPTIONS_GHC -fno-specialise #-}
{-# OPTIONS_GHC -fno-strictness #-}
{-# OPTIONS_GHC -fno-unbox-small-strict-fields #-}
{-# OPTIONS_GHC -fno-unbox-strict-fields #-}

module Plutus.Crypto.Pedersen (
    test,
) where

import Plutus.Crypto.BlsUtils (
    Scalar (..),
 )
import PlutusTx.Builtins (
    BuiltinBLS12_381_G1_Element,
    BuiltinBLS12_381_G2_Element,
    Integer,
    bls12_381_G1_add,
    bls12_381_G1_compress,
    bls12_381_G1_scalarMul,
    bls12_381_G2_add,
    bls12_381_G2_scalarMul,
 )
import PlutusTx.List (foldl, zipWith)
import PlutusTx.Numeric (
    AdditiveMonoid (..),
 )
import PlutusTx.Prelude (
    Bool (..),
    ($),
    (.),
 )

test :: Integer
test = 1
