## Module Data.Undefinable

This module defines types and functions for working with undefinable types
using the FFI.

#### `Undefinable`

``` purescript
data Undefinable :: * -> *
```

An undefinable type.

This type constructor may be useful when interoperating with JavaScript functions
which accept or return values that can be `undefined`.

##### Instances
``` purescript
(Show a) => Show (Undefinable a)
(Eq a) => Eq (Undefinable a)
(Ord a) => Ord (Undefinable a)
```

#### `toUndefinable`

``` purescript
toUndefinable :: forall a. Maybe a -> Undefinable a
```

Takes `Nothing` to `undefined`, and `Just a` to `a`.

#### `toMaybe`

``` purescript
toMaybe :: forall a. Undefinable a -> Maybe a
```

Represent `undefined` using `Maybe a` as `Nothing`. 


