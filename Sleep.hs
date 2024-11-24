{-# LANGUAGE OverloadedStrings #-}

import Network.HTTP.Conduit (simpleHttp)
import Control.Concurrent (threadDelay)

main :: IO ()
main = do
    putStrLn "Fetching http://example.com ..."
    response <- simpleHttp "https://example.com"
    putStrLn "Response received:"
    putStrLn $ take 500 (show response) ++ "..." -- Print the first 500 characters of the response
    putStrLn "Sleeping for 5 seconds..."
    threadDelay (5 * 1000000) -- threadDelay takes microseconds
    putStrLn "Done!"

