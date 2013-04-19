module Suika.Main where

import Suika.Types
import Suika.Config

-- | Create an initial state
initIRC :: IRCState
initIRC = IRCState {
    servers = config,
    current = Nothing
}

main :: IO ()
main = print "poni"
