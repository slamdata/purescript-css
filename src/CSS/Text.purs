module CSS.Text where

import Prelude (($))

import CSS.Property (class Val, Value)
import CSS.String (fromString)
import CSS.Stylesheet (CSS, key)

newtype TextDecoration = TextDecoration Value

instance valTextDecoration :: Val TextDecoration where
  value (TextDecoration v) = v

noneTextDecoration :: TextDecoration
noneTextDecoration = TextDecoration $ fromString "none"

underline :: TextDecoration
underline = TextDecoration $ fromString "underline"

overline :: TextDecoration
overline = TextDecoration $ fromString "overline"

lineThrough :: TextDecoration
lineThrough = TextDecoration $ fromString "line-through"

blink :: TextDecoration
blink = TextDecoration $ fromString "blink"

textDecoration :: TextDecoration -> CSS
textDecoration = key $ fromString "text-decoration"