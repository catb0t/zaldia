# zaldia

---

C-ish syntax frontend to Pony. also, (writing a parser for Pony-ish in Pony) to learn Pony.

some ideas i have about Pony's default syntax / the semantics you get from the syntax:

(source-level / syntax changes only, so I don't have to figure out the types of things or eval expressions)

* regex literals?
* utf8 anywhere in a source file
* functional extensions! Clebsch told us this is a functional language
  * where's generic map / reduce / filter / reject / each / all / any etc?
  * map is missing outside "collections/persistent" (???)
  * they don't "exist" in a zaldia library; they compile to stdlib / normal Pony

* types are on the wrong side of variable init
  * `var String ref x = ...` and `var ref String x = ...` should be allowed
  * `ref String x = ...` should be implicit `let` (except for? default known mutable types)
* missing parentheses and braces in `if a > b then ... end`
* anonymous function syntax should be unified with block syntax i.e `{ }`
* bifurcate for method chaining (allow return values in `a.>b.>c.>...`) like `bi`
* named argument syntax is inexplicable (`where`), fix it
* allow "top-level" code?
  * yes, with implicit classes for them, including enums and constants
  * allow singleton classes
* missing comptime polymorphism / multiple dispatch
  * including allowing multiple declarations of "new from"
* user-defined operators?
* at least fix existing operators
  * precedence (compromise between Sidef and Pony)
  * add bitnot
  * fix unsafe syntax
  * fix bit twiddling syntax
* "elseif" sucks; allow "elsif" and "elif" and "if / otherwise / finally"
* allow "else" and "finally" in "try" and "for"
* add "unless"
* add other functions (reduce) that we expect from a functional programming language
* implicit else gives false, not None
* Array syntax sucks (newlines?? semis??) - require commas
* allow method call without parentheses
  * `\` literalises its right side, which will give a literal method object
* `with` and try/else/then should become try/catch/finally (sorry, i like python)
  * have `catch` bind exception information?
* fix list assignment
* separate operator for `identity=` / `identity!=`; remove "is" and "isnt"
* "has" for Traits rather than is
* the whole sugar section of the docs is actually great
* fix object literals
* require explicit rcaps in (almost?) all declarations?
  * implicitly having to remember a typename's refcap sucks
* allow more diversity in names (classes, etc)
* actor literals shouldn't be implicit
* type parameters are a little weird but they're alright
* fix match expressions
* better namespaces? fix use?
  * allow immediate namespaces, including allowing namespaced enums
* allow omitted "use builtin", lol
* "no" counterpart to "use", to disable our features
* PonyTest alternative
* better annotations
* add "..." for "Unimplemented!" and unpacking
* fix ifdef
* macros? (lolno those come in the concatenative one only)

* map is missing outside "collections/persistent" (???)
