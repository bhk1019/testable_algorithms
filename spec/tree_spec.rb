require 'spec_helper'

RSpec.describe Tree, type: :model do
  describe "depth_first should find the right node" do
    it "should return the correct node given a tree with a node of 11" do
      deep_fifth_node = Tree.new(5, [])
      eleventh_node = Tree.new(11, [])
      fourth_node   = Tree.new(4, [])
      ninth_node = Tree.new(9, [fourth_node])
      sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
      seventh_node = Tree.new(7, [sixth_node])
      shallow_fifth_node = Tree.new(5, [ninth_node])
      trunk   = Tree.new(2, [seventh_node, shallow_fifth_node])
      expect(trunk.depth_first(11)).to eq eleventh_node
    end

  end
end