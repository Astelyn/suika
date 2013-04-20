module Suika.Net where

import Control.Monad.State
import Data.Maybe
import System.IO
import Text.Printf
import Network
import Suika.Types

-- | Get the handle for current server
-- | This is bad, Nothing will cause errors
getSocket :: IRC Handle
getSocket = do
    b <- gets current
    return $ fromJust $ socket $ parent $ fromJust b

-- | Connect to a specific server
connect :: Server -> IO Handle
connect a = do
    let s = server a
        p = port a
    h <- connectTo s $ PortNumber $ fromIntegral p
    hSetBuffering h NoBuffering
    return h

-- | Send a message to the server
-- | Form: write <command> <message>
write :: String -> String -> IRC ()
write s t = do
    h <- getSocket
    liftIO $ hPrintf h "%s %s\r\n" s t
    liftIO $ printf "> %s %s\n" s t -- ^This needs to write to buf instead

-- | Respond to PING messages (PING :message)
pong :: String -> IRC ()
pong s = write "PONG" (':' : drop 6 s)


