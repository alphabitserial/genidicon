import argv
import clad
import gleam/dynamic
import gleam/io
import glidicon
import simplifile

fn generate(input: String) {
  let filename = input <> ".png"
  let image = glidicon.create(input) |> glidicon.image
  let write_file_result = simplifile.write(to: filename, contents: image)
  case write_file_result {
    Ok(_) -> Nil
    Error(e) ->
      io.println_error(
        "Error writing" <> filename <> ": " <> simplifile.describe_error(e),
      )
  }

  Nil
}

type Args {
  Args(input: String)
}

fn args_decoder() {
  use input <- clad.arg("input", "i", dynamic.string)
  clad.decoded(Args(input:))
}

pub fn main() {
  let args =
    args_decoder()
    |> clad.decode(argv.load().arguments)

  case args {
    Ok(args) -> generate(args.input)
    Error(_) -> io.println("Usage: genidicon --input <STRING>")
  }
}
