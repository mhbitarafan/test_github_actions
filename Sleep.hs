import Control.Concurrent (threadDelay)

main :: IO ()
main = do
    putStrLn "Sleeping for 5 seconds..."
    threadDelay (5 * 1000000) -- threadDelay takes microseconds
    putStrLn "Done sleeping!"
 
