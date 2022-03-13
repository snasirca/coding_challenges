# foo.com/mkdir?path="/foo/bar"
# foo.com/write_file?path="/foo/bar"&data="some_content"
# foo.com/read_file?path="/foo/bar"
#
# reads should be consistent after a write
# 50-50 writes/reads
# file system won't fit into memory
# tolerate a single machine outage

class Storage
  def initialize
    @storage = {}
  end

  def mkdir(path)
    raise "Cannot create directory" if @storage.key?(path)

    @storage[path] = true
  end

  def write_file(path, data)
    dir = dir_from_path(path)
    raise "Directory does not exist" unless @storage.key?(dir)
    raise "Cannot change directory to file" if @storage.key(path) && @storage[path] == true

    @storage[path] = data
  end

  def read_file(path)
    raise "File does not exist" unless @storage.key?(path)
    raise "Cannot read directory as a file" if @storage[path] == true

    @storage[path]
  end

  def dir_from_path(path)
    path_fragments = path.split("/")
    dir = path_fragments[0..-2].join("/")
    dir == "" ? "/" : dir
  end

  def file_from_path(path)
    path_fragments = path.split("/")
    path_fragments.last
  end

  def dir_exists(path)
    @storage.key?(path)
  end
end
