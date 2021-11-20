module RegistrantDBTest where

import Test.HUnit
import RegistrantDB
import RegistrantSchema

test1 = TestCase (do
                   each registrantSchema
                   
                 )

tests = TestList [TestLabel "test1" test1]

main :: IO Counts
main = do _ <- runTestTT tests
