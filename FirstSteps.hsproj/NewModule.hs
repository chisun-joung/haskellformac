module NewModule where
  mangle :: String -> String
  mangle "" = ""
  mangle s = tail s ++ head s : ""
  