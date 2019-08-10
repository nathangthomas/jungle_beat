require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test

  def setup
    @list = LinkedList.new
  end

  def test_it_exists

    assert_instance_of LinkedList, @list
  end

  def test_head_is_nil

    assert_equal nil, @list.head
  end

  def test_it_can_append_a_node

    assert_equal "doop", @list.append("doop")
  end

  def test_list_head_is_an_instance_of_node
    @list.append("doop")

    assert_instance_of Node, @list.head
  end

  def test_that_node_holds_data_and_next_node
    @list.append("doop")

    assert_equal "doop", @list.head.data
    assert_equal nil , @list.head.next_node

  end

  def test_list_count_is_1
    @list.append("doop")

    assert_equal 1, @list.count
  end

  def test_list_to_string
    @list.append("doop")

    assert_equal "doop", @list.to_string
  end

  # def test_it_can_show_the_linked_list
  #   @list_2 = LinkedList.new
  #   expected = @list_2.append("doop")
  #
  #   assert_equal @list_2, expected
  # end

  # def test_next_node_is_nil
  #
  #   assert_equal @list.head.next_node, nil
  # end
  #
  # def test_it_will_count
  #
  #   assert_equal @list.count, 1
  # end
  #
  # def test_it_will_pull_out_node_data_as_string
  #   assert_equal @list.to_string, "doop"
  # end

end
