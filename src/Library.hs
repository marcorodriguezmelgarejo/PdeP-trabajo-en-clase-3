module Library where
import PdePreludat

type Horas = Number
type Objetivo = String
type Presion = Number

presionGolpe :: Horas -> Objetivo -> Presion
presionGolpe horas objetivo = poder horas / fortaleza objetivo

poder :: Horas -> Number
poder = (* 15)

fortaleza :: Objetivo -> Number
fortaleza = (2*) . length

type Golpe = Objetivo -> Number

gomuGomu :: Golpe
gomuGomu = presionGolpe 180

normalesConsecutivos :: Golpe 
normalesConsecutivos = presionGolpe 240

objetivoDificil :: Objetivo -> Bool
objetivoDificil = (<100).gomuGomu

focalizarObjetivo :: Objetivo -> String
focalizarObjetivo = take 7

presionEntre200y400 :: Presion -> Bool
presionEntre200y400 presion = presion > 200 && presion < 400

objetivoAccesible :: Objetivo -> Bool
objetivoAccesible = presionEntre200y400.normalesConsecutivos.focalizarObjetivo