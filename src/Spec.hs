module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "tests objetivoDificil" $ do
    it "bolsa de entrenamiento es difícil" $ do
      objetivoDificil "bolsa de entrenamiento" `shouldBe` True
    it "puf es dificil" $ do
      objetivoDificil "puf" `shouldBe` False
  describe "tests objetivoAccesible" $ do
    it "bolsa de entrenamiento es accesible" $ do
      objetivoAccesible "bolsa de entrenamiento" `shouldBe` True
    it "puf no es accesible" $ do
      objetivoAccesible "puf" `shouldBe` False