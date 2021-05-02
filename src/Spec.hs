module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "tests objetivoDificil" $ do
    it "cadena larga es difícil" $ do
      objetivoDificil "bolsa de entrenamiento" `shouldBe` True
    it "cadena corta no es difícil" $ do
      objetivoDificil "puf" `shouldBe` False
  describe "tests objetivoAccesible" $ do
    it "cadena larga es accesible" $ do
      objetivoAccesible "bolsa de entrenamiento" `shouldBe` True
    it "cadena corta no es accesible" $ do
      objetivoAccesible "puf" `shouldBe` False