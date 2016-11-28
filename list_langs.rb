Dir.foreach "." do |odir|
  next if odir == "." or odir == ".." or not File.directory?(odir)
  Dir.foreach odir do |dir|
    next if dir == "." or dir == ".."
    currdirname = ""
    dir.split(".")[0].gsub("-", " ").split(" ").each do |str|
      currdirname << str.capitalize + " "
    end
    currdirname.chomp(currdirname[-1])
    puts "* #{currdirname}"
  end
end

