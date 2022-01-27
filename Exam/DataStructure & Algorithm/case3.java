class Node
{
	int data;
	Node left, right;

	Node(int item)
	{
		data = item;
		left = right = null;
	}
}
public class Main
{
	Node root;
	boolean isLeaf(Node node)
	{
		if (node == null)
			return false;
		if (node.left == null && node.right == null)
			return true;
		return false;
	}
int leftLeavesSum(Node node)
	{
		int res = 0;
		if (node != null)
		{
			if (isLeaf(node.left))
				res += node.left.data;
			else // Else recur for left child of root
				res += leftLeavesSum(node.left);
		res += leftLeavesSum(node.right);
		}
		return res;
	}
	public static void main(String args[])
	{
		Main tree = new Main();
		tree.root = new Node(3);
		tree.root.left = new Node(9);
		tree.root.left.right = new Node(9);
		tree.root.left.left = new Node(15);
		tree.root.right = new Node(20);
		tree.root.right.left = new Node(15);
		tree.root.right.right = new Node(7);
		System.out.println("The sum of leaves is " +
									tree.leftLeavesSum(tree.root));
	}
}

