use "inspect"
// use "assert"

// use "collections"

actor Main
  new create (env: Env) =>
    let f: (Array[U8 val], U64, U64) = this.fizzbuzz(100, 0)
    // var s: String ref = String
    for c in f._1.values() do
      env.out.write([as U8: c])
      // s.push(if c != '\n' then c else ' ' end) // Inspect(
    end
    //env.out.print(s)
    let g: (Array[U8 val], U64, U64) = this.fizzbuzz(0, 3)
    for c in g._1.values() do
      env.out.write([as U8: c])
    end


  fun fizzbuzz (from: U64, to: U64): (Array[U8 val], U64, U64) =>
    this._fb([as U8 val:], from, to)

  fun _fb (a: Array[U8 val], from: U64, to: U64): (Array[U8 val], U64, U64) =>
    if from == to then
      (a, from, to)
    else
      let x: String = (
        if (from % 15) == 0 then "FizzBuzz"
          elseif (from % 5) == 0 then "Buzz"
          elseif (from % 3) == 0 then "Fizz"
        else from.string()
        end + "\n"
      )
      for r in x.values() do a.push(r) end  // where is map!?
      if from > to then _fb(a, from - 1, to)
      else _fb(a, to - 1, from) end
    end
