require "screening/in_memory"

RSpec.describe "Solution" do
  it "1" do
    memory = Storage.new
    path = "/foo/bar"

    memory.mkdir(path)

    expect(memory.dir_exists(path)).to eq(true)
  end

  it "2" do
    memory = Storage.new
    memory.mkdir("/foo/bar")
    path = "/foo/bar/file.txt"
    data = "some_content"

    memory.write_file(path, data)

    expect(memory.read_file(path)).to eq("some_content")
  end

  it "3" do
    memory = Storage.new
    path = "/foo/bar/file.txt"

    dir = memory.dir_from_path(path)

    expect(dir).to eq("/foo/bar")
  end

  it "4" do
    memory = Storage.new
    path = "/foo/bar/file.txt"

    dir = memory.file_from_path(path)

    expect(dir).to eq("file.txt")
  end

  it "5" do
    memory = Storage.new
    path = "/foo/non-existent-dir/file.txt"
    data = "XXXXX"

    expect do
      memory.write_file(path, data)
    end.to raise_error
  end

  it "6" do
    memory = Storage.new
    memory.mkdir("/")
    path = "/file.txt"
    data = "some_content"

    memory.write_file(path, data)

    expect(memory.read_file(path)).to eq("some_content")
  end

  it "7" do
    memory = Storage.new
    memory.mkdir("/foo/bar")
    path = "/foo/bar/file.txt"

    expect do
      memory.read_file(path)
    end.to raise_error
  end

  it "8" do
    memory = Storage.new
    memory.mkdir("/foo")
    path = "/foo/file"
    data = "XXXXX"
    memory.write_file(path, data)

    expect do
      memory.mkdir(path)
    end.to raise_error
  end

  it "9" do
    memory = Storage.new
    memory.mkdir("/foo")
    path = "/foo"

    expect do
      memory.mkdir(path)
    end.to raise_error
  end

  it "10" do
    memory = Storage.new
    memory.mkdir("/foo")
    path = "/foo"

    expect do
      memory.read_file(path)
    end.to raise_error
  end
end
