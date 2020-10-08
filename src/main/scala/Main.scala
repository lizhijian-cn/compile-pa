object Main extends App {
  val file = args(0)
  val source = io.Source.fromFile(file)
  val in = LazyList(source.toArray: _*)
  val lexer = new Lexer
  val out = lexer.parse(in)
  out.foreach(println)
}