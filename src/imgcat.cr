class Imgcat
  def self.cat_file(filename : String, out_io : IO)
    embed(File.open(filename), out_io)
  end

  def self.cat(in_io : IO, out_io : IO)
    embed(in_io, out_io)
  end

  private def self.embed(in_io : IO, out_io : IO)
    b64 = Base64.strict_encode(in_io.gets_to_end)
    str = "\033]1337;File=;inline=1:#{b64}\a"
    if ENV["TERM"] == "screen" # ENV["TERM"].match(/screen*/)
      out_io.puts("\033Ptmux;\033#{str}\033\\")
    else
      out_io.puts(str)
    end
  end
end
