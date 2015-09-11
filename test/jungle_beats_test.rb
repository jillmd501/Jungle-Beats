gem 'minitest', '~> 5.0'    # => true
require 'minitest/autorun'  # => true
require 'minitest/pride'
require './lib/jungle_beat'
require './lib/node'

class NodeTest < Minitest::Test

  def test_creates_head
    list = LinkedList.new("head")
    assert_equal ("head"), list.head.data
  end

  def test_node_is_tail?
    list = LinkedList.new("tail")
    assert_equal ("tail"), list.tail.data
  end

  def test_creates_node
    node = Node.new("a")
    assert_equal "a", node.data
  end

  def test_initialize_new_link_list
    list = LinkedList.new("one")
    assert list
  end

  def test_a_linked_list_has_head
    list = LinkedList.new("one")
    result = list.head.data
    assert_equal "one", result
  end

  def test_empty_list_is_nil
    list = LinkedList.new(nil)
    result = list.head.data
    assert_equal nil, result
  end

  def test_list_points_to_nil
    list = LinkedList.new("one")
    assert_equal nil, list.head.next_node
  end

  def test_list_take_input
    list = LinkedList.new("one")
    assert_equal nil, list.head.next_node
  end

  def test_can_append_a_node
    list = LinkedList.new("one")
    list.append_node("two")
    assert_equal "two", list.head.next_node.data
  end

  def test_it_can_prepend_beats
    list = LinkedList.new("one")
    list.prepend("two")
    assert_equal "one", list.head.next_node.data
  end

  def test_list_can_find_included_value
    list = LinkedList.new("one")
    assert_equal true, list.includes?("one")
  end

  def test_can_insert_a_node_in_a_position
    list = LinkedList.new("one")
    list.append_node("four")
    list.insert("two", 1)
    assert_equal "two", list.head.next_node.data
  end

  def test_can_count_node_in_list
    list = LinkedList.new("one")
    assert_equal 1, list.count
  end

  def test_can_count_multiple_nodes_in_list
    list = LinkedList.new("one")
    list.append_node("two")
    list.append_node("three")
    assert_equal 3, list.count
  end

  def test_can_pop_data_from_end
    list = LinkedList.new("one")
    list.append_node("two")
    list.append_node("three")
    list.append_node("four")
    list.pop
    assert_equal "three", list.tail.data
  end

  def test_can_it_pop_data_from_end_again?
    list = LinkedList.new("one")
    list.append_node("two")
    list.append_node("three")
    list.pop
    assert_equal "two", list.tail.data
  end

  def test_can_it_pop_multiple_nodes?
    list = LinkedList.new("one")
    list.append_node("two")
    list.append_node("three")
    list.append_node("four")
    list.pop(2)
    assert_equal "two", list.tail.data
  end

  def test_return_data_in_list
    list = LinkedList.new("one")
    list.append_node("two")
    list.append_node("three")
    list.all
    assert_equal "one two three", list.all
  end

  def test_go_to_index_and_output_data
    list = LinkedList.new("one")
    list.append_node("two")
    list.append_node("three")
    list.find(1, 2)
    assert_equal "two three", list.find(1, 2)
  end
end
