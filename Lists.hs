selectWin1 = snd
selectWin2 = fst . fst
selectWin3 = fst . snd . snd

main = do
  print $ selectWin1 (1,"win")
  print $ selectWin2 (("win","no"),"not this one")
  print $ selectWin3 (1,("no",("win","almost")))
