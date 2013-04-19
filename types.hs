module Suika.Types where

import Control.Monad.State
import Data.ByteString
import Network

data Server = Server {
    servname :: String,
    server   :: String,
    port     :: Int,
    password :: String,
    channels :: [String],
    nicks    :: [String],
    username :: String,
    realname :: String,
    socket   :: Maybe Handle,
    buffers  :: [Buffer]
}

data Buffer = Buffer {
    bufname  :: String,
    activity :: Int,
    mention  :: Bool,
    buf      :: ByteString
} deriving (Eq)

data IRCState = IRCState {
    servers :: [Server],
    current :: Maybe Buffer
}

type IRC a = State IRCState a

