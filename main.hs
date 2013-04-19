module Main where

import Suika.Types
import Suika.Config
import Suika.Net

-- | Create an initial state
initIRC :: IRCState
initIRC = IRCState {
    servers = config,
    current = Nothing
}

main :: IO ()
main = do
    let s = initIRC
        r = servers s
    connect $ r!!0
    print "poni"
