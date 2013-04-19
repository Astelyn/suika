module Suika.Net where

import System.IO
import Network
import Suika.Types

-- | Connect to a specific server
connect :: Server -> IO Handle
connect a = do
    let s = server a
        p = port a
    h <- connectTo s $ PortNumber $ fromIntegral p
    hSetBuffering h NoBuffering
    return h

