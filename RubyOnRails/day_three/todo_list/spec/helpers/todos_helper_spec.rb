require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the TodosHelper. For example:
#
# describe TodosHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end

describe TodosHelper do
  describe 'newline メソッドは' do
    it '改行を<br />タグに置き換える' do
      expect(helper.new_line_br("abc\nxyz\n123")).to eq('abc<br />xyz<br />123')
    end
    it '渡された文字列内のタグはエスケープする' do
      expect(helper. new_line_br("<table>\n")).to eq("&lt;table&gt;<br />")
    end
  end
end
