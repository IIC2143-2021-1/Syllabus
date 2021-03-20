CONST_1 = "Soy la constante global 1"
CONST_2 = "Soy la constante global 2"
$var_3 = "Soy la variable local 3"


#Local variables are local: they don't survive across a require. Global variables ($code_words), constants (CODE_WORDS)
# and instance variables (@code_words) do.

#https://stackoverflow.com/questions/37181901/require-relative-doesnt-pull-the-variables