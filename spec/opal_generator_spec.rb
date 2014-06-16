require 'spec_helper'

describe(Jekyll::Generators::Opal) do
  let(:output_dir)  { dest_dir("js") }
  let(:output_file) { dest_dir("js", "opal.js") }

  it "knows the relative output file path"

  it "knows where to output the file"

  it "can build the opal stdlib"

  context "a fresh site" do
    before(:each) do
      FileUtils.rm_r(output_dir) if File.directory?(output_dir)
    end

    it "creates the proper output directory"
  end

  it "writes the file"

  it "adds the outputted file to the site.keep_files list"

end
