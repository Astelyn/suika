module Suika.Config where

import Suika.Types

-- | IRC client configuration, just for debugging
config = [
    Server {
        name     = "Esper",
        server   = "irc.esper.net",
        port     = 6667,
        password = "",
        channels = ["#fcraft"],
        nicks    = ["Allie_", "Allie__"],
        username = "Allie",
        realname = "Allie",
        buffers  = []
    },

    Server {
        name     = "Freenode",
        server   = "irc.freenode.net",
        port     = 6667,
        password = "",
        channels = ["#haskell"],
        nicks    = ["Allie_", "Allie__"],
        username = "Allie",
        realname = "Allie",
        buffers  = []
    },

    Server {
        name     = "OFTC",
        server   = "irc.oftc.net",
        port     = 6667,
        password = "",
        channels = ["#moocows"],
        nicks    = ["Allie_", "Allie__"],
        username = "Allie",
        realname = "Allie",
        buffers  = []
    }
]
