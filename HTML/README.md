# batman
Project to learn 

Day-5 (Basic of Data Structure)
Data Structure:- It is ways to store a different types of data in a one structure.

Algorithms:- Operations on different data structures + sets of instructions for executing them. 
It is also called a step by step procedure which we will perform in program of to get a desired output or solve a problem. 

Array:- It is Collection of items to be stored at Contiguous memory location.
It is use to store same type data in together or one by one memory location.

class:- It is blueprint or prototype from which objects are created. 
It is one common object properties representation.

objects:- It is use for represents the real-life entities.



Day-6 (Linked List, Recursion, Big-O & Time Complexity)
Linked List:-A linked list is a linear data structure, in which the elements are not stored at contiguous memory locations. 

types of Linked List:-
    Singly Linked List
    Doubly Linked List
    Circular Linked List
    Circular Doubly Linked List

#Singly Linked List:-
-It is the most common. Each node has data and a pointer to the next node.

#Doubly Linked List:-
We add a pointer to the previous node in a doubly-linked list. Thus, we can go in either direction: forward or backward.

#Circular Linked List:-
A circular linked list is a variation of a linked list in which the last element is linked to the first element. This forms a circular loop.

#Circular Doubly Linked List:-
A Doubly Circular linked list or a circular two-way linked list is a more complex type of linked-list that contains a pointer to the next as well as the previous node in the sequence. The difference between the doubly linked and circular doubly list is the same as that between a singly linked list and a circular linked list.

*Advantages Of Linked List:
    Dynamic data structure
    No memory wastage
    Implementation
    Insertion and Deletion Operations

*Disadvantages Of Linked List:
    Memory usage
    Traversal
    Reverse Traversing
    Random Access



Recursion:- Recursion is a process in which the function calls itself indirectly or directly in order to solve the problem.

(https://betterprogramming.pub/understanding-recursion-with-examples-f74606fd6be0)

#why use recursion:-
    1.Complex tasks can be broken down into simpler problems.
    2.Code using recursion is usually shorter and more elegant.
    3.Sequence generation is cleaner with recursion than with iteration.

#why not use recursion:-
    1.The recursive logic is usually harder to follow and debug.
    2.It increases memory usage and its Big O notation is often higher than the corresponding iterative solution. This means that recursion can be great for smaller programs but might lead to memory problems in bigger projects.



Big-O Notation:- Big O notation is a mathematical notation that describes the limiting behavior of a function when the argument tends towards a particular value or infinity.


Time Complexity:- By definition, the time complexity is the amount of time taken by an algorithm to run, as a function of the length of the input. Here, the length of input indicates the number of operations to be performed by the algorithm



Day-7 (Tree, Binary Search & Quick Sort)
Tree:- A tree is non-linear and a hierarchical data structure consisting of a collection of nodes such that each node of the tree stores a value, a list of references to nodes (the “children”).
A tree is essentially a collection of multiple nodes connected by edges. These ‘trees’ form a tree-like data structure, with the ‘root’ node leading to ‘parent’ nodes, which eventually lead to ‘children’ nodes. The connections which are formed by lines known as ‘edges.’
Endpoints that have no children nodes are referred to as ‘leaf’ nodes. Trees in data structures play an important role due to the non-linear nature of their structure. This allows for a faster response time during a search as well as greater convenience during the design process.

#Types of Trees in Data Structure
    1. General Tree
    2. Binary Tree
    3. Binary Search Tree
    4. AVL Tree
    5. Red Black Tree
    6. Splay Tree
    7. Treap
    8. B-Tree

#Advantages of tree data structure
    1.provides a hierarchical way of storing data
    2.reflects structural relationship in a data set
    3.allows insertion, deletion and searching operations that yield results faster than an array or linked list
    4.provides a flexible way to hold and move data
    5.allows storage of many nodes

#Types with Basic Details:-
#General tree
-A general tree is a type of tree data structure that has no constraints on the hierarchical structure. Every node can have an infinite number of children in a general tree. You can classify any tree having a hierarchical structure as a general tree. Also, the nodes can have any degree from 0 to n. A general tree stores hierarchical structures, such as a folder structure in a computer system.

#Binary tree
-As the name suggests, binary trees comprise nodes having two child nodes. Any node in a binary tree can have only zero, one or two nodes. These trees are highly functional and help serve many purposes in the data structure. Using a binary tree, data scientists and analysts can create a representation of data through a bifurcating structure and they can easily access nodes and label them as per convenience.

#Binary search trees (BST)
-A binary search tree is an extension of a binary tree with several optional restrictions. Only when the left child of a node is less than or equal to the parent value and the right child of the same node is greater than or equal to the parent value, a tree becomes a binary search tree. This unique subtype of a binary tree helps in the faster searching or lookup of data and facilitates the addition and removal of data.
-Data scientists and data analysts use BST to sort simple algorithms and use BST as a priority queue. Also, BST finds usage in search applications where you constantly add and remove data.

#AVL tree
-An AVL tree is a self-balancing BST. This tree can automatically balance its height because each node stores a value called “balance factor," representing the difference in the height of a right sub-tree and left sub-tree. The AVL nodes can have a balance factor of minus one, zero and one. It enjoys all properties of a BST and derives its name from the founders–Adelson-Velshi and Landis. Data scientists and analysts widely use AVL trees while performing lookup operations and situations where frequent data insertion is necessary. AVL finds its usage in memory management subsystems of the Linux kernel.

#Red-black tree
-Similar to AVL, a red-black tree is a self-balancing BST. The only difference is that each node in a red-black tree is red or black. Also, the colour of these nodes ensures that the tree remains self-balanced every time someone inserts or adds a value. The root of the red-black tree is usually black and all the leaves are also black. Interestingly, when a node is red, both child nodes are black.
-Every path from a node to any leaf node in a red-black tree goes through the same number of black nodes. Computation geometry uses this type of tree data structure.

#Splay tree
-Another type of self-balancing BST is the splay tree. Data scientists and analysts use a splay tree to implement caches and in garbage collectors. After performing the insertion and deletion, the splay tree comes into action and performs the splaying. In splaying, the tree rearranges so that particular elements are at the root of the tree.

#Treap tree
-A treap tree is a combination of a BST and a heap. Heap is a binary tree that implements priority queues and you can store them logically in an array. Each node in a treap tree has two values: a key and a priority. Treap is an excellent data structure to build a randomised binary search tree. Unlike other tree data structures, treap is a self-organising structure that requires no management and complex algorithms.

#B-tree
-B-tree is another self-balancing search tree that comprises many nodes to keep data stored in a particular order. Each node has over two child nodes and each node comprises multiple keys. B-trees are compatible with file systems and databases that can write and read larger blocks of data.
-Using B-tree, data scientists can sort data to allow search, provide sequential access and allow insertion and deletion of data in logarithmic time. Larger storage systems like disks use B-tree data structures. Leaves in a B-tree carry no information and they appear at the same level.




Binary Search:-A binary search is an advanced type of search algorithm that finds and fetches data from a sorted list of items. Its core working principle involves dividing the data in the list to half until the required value is located and displayed to the user in the search result. Binary search is commonly known as a half-interval search or a logarithmic search.

#How Binary Search Works?
-The binary search works in the following manner:
    1.The search process initiates by locating the middle element of the sorted array of data
    2.After that, the key value is compared with the element
    3.If the key value is smaller than the middle element, then searches analyses the upper values to the middle element for comparison and matching
    4.In case the key value is greater than the middle element then searches analyses the lower values to the middle element for comparison and matching

#Benefits of binary trees
    1.An ideal way to go with the hierarchical way of storing data
    2.Reflect structural relationships that exist in the given data set
    3.Make insertion and deletion faster than linked lists and arrays 
    4.A flexible way of holding and moving data
    5.Are used to store as many nodes as possible
    6.Are faster than linked lists and slower than arrays when comes to accessing elements

Practical Practice:-Binary Search Program(BinarySortAlgo.java)




Quick Sort:-QuickSort is a Divide and Conquer algorithm. It picks an element as pivot and partitions the given array around the picked pivot. There are many different versions of quickSort that pick pivot in different ways. 
    1.Always pick first element as pivot.
    2.Always pick last element as pivot (implemented below)
    3.Pick a random element as pivot.
    4.Pick median as pivot.

#Advantages
    1.It is in-place since it uses only a small auxiliary stack.
    2.It requires only n (log n) time to sort n items.
    3.It has an extremely short inner loop.
    4.This algorithm has been subjected to a thorough mathematical analysis, a very precise statement can be made about performance issues.

#Disadvantages
    1.It is recursive. Especially, if recursion is not available, the implementation is extremely complicated.
    2.It requires quadratic (i.e., n2) time in the worst-case.
    3.It is fragile, i.e. a simple mistake in the implementation can go unnoticed and cause it to perform badly.

Practical Practice:-QuickSort Program(quicksort.java)


NOTE:- Task Given by AkhileshSir two done but third Tree Program is left.



Day-8 (Stack, Queues, Hash tables & Dictionaries)
Stack:- Stack is a linear data structure which follows a particular order in which the operations are performed. The order may be LIFO(Last In First Out) or FILO(First In Last Out).
-A Stack is a linear data structure that follows the LIFO (Last-In-First-Out) principle. Stack has one end, whereas the Queue has two ends (front and rear). It contains only one pointer top pointer pointing to the topmost element of the stack. Whenever an element is added in the stack, it is added on the top of the stack, and the element can be deleted only from the stack. In other words, a stack can be defined as a container in which insertion and deletion can be done from the one end known as the top of the stack.

static and dynamic:-
static done threw array and dynamic done by linked list.

#Standard Stack Operations
-The following are some common operations implemented on the stack:
    1.push(): When we insert an element in a stack then the operation is known as a push. If the stack is full then the overflow condition occurs.
    2.pop(): When we delete an element from the stack, the operation is known as a pop. If the stack is empty means that no element exists in the stack, this state is known as an underflow state.
    3.isEmpty(): It determines whether the stack is empty or not.
    4.isFull(): It determines whether the stack is full or not.'
    5.peek(): It returns the element at the given position.
    6.count(): It returns the total number of elements available in a stack.
    7.change(): It changes the element at the given position.
    8.display(): It prints all the elements available in the stack.

Applications of Stack Data Structure
    1.An "undo" mechanism in text editors
    2.Forward and backward feature in web browsers
    3.Check for balanced parentheses in an expression
    4.Expression evaluation and syntax parsing
    5.Backtracking. This is a process when you need to access the most recent data element in a series of elements. Think of a maze - how do you find a way from an entrance to an exit? Once you reach a dead end, you must backtrack. But backtrack to where? to the previous choice point. Therefore, at each choice point, you store on a stack all possible choices. Then backtracking simply means popping a next choice from the stack.
    6.We use a stack for the Iterative implementation of several recursive programs like tree traversals, DFS traversal in a graph, etc.
    7.For solving several problems in algorithms, we use a stack as the principle data structure with which they organize their information.
    8.Memory management: Any modern computer environment uses a stack as the primary memory management model for a running program.



Queues:- A Queue is a linear structure which follows a particular order in which the operations are performed. The order is First In First Out (FIFO). A good example of a queue is any queue of consumers for a resource where the consumer that came first is served first. The difference between stacks and queues is in removing. In a stack we remove the item the most recently added; in a queue, we remove the item the least recently added.
-Queue is the data structure that is similar to the queue in the real world. A queue is a data structure in which whatever comes first will go out first, and it follows the FIFO (First-In-First-Out) policy. Queue can also be defined as the list or collection in which the insertion is done from one end known as the rear end or the tail of the queue, whereas the deletion is done from another end known as the front end or the head of the queue.

#Types of Queue
-There are four different types of queue that are listed as follows -
    1.Simple Queue or Linear Queue
    2.Circular Queue
    3.Priority Queue
    4.Double Ended Queue (or Deque)

#Operations performed on queue
-The fundamental operations that can be performed on queue are listed as follows:-
    1.Enqueue: The Enqueue operation is used to insert the element at the rear end of the queue. It returns void.
    2.Dequeue: It performs the deletion from the front-end of the queue. It also returns the element which has been removed from the front-end. It returns an integer value.
    3.Peek: This is the third operation that returns the element, which is pointed by the front pointer in the queue but does not delete it.
    4.Queue overflow (isfull): It shows the overflow condition when the queue is completely full.
    5.Queue underflow (isempty): It shows the underflow condition when the Queue is empty, i.e., no elements are in the Queue.

#Advantages of queues:
    1.The advantages of queues are that the multiple data can be handled, and they are fast and flexibility.

#Disadvantages of queues:
    1.To include a new element in the queue, the other elements must be deleted.




Hash Table:- Hash Table is a data structure which stores data in an associative manner. In a hash table, data is stored in an array format, where each data value has its own unique index value. Access of data becomes very fast if we know the index of the desired data.
-Thus, it becomes a data structure in which insertion and search operations are very fast irrespective of the size of the data. Hash Table uses an array as a storage medium and uses hash technique to generate an index where an element is to be inserted or is to be located from.

#Basic Operations
Following are the basic primary operations of a hash table.
    1.Search − Searches an element in a hash table.
    2.Insert − inserts an element in a hash table.
    3.delete − Deletes an element from a hash table.

#Advantages
    1.The main advantage of hash tables over other data structures is speed . 
    2.The access time of an element is on average O(1), therefore lookup could be performed very fast. 
    3.Hash tables are particularly efficient when the maximum number of entries can be predicted in advance.



Data Dictionary :- A data dictionary provides a descriptive list of names, definitions, and attributes of data elements to be captured in an information system or database. It describes the definitions or the expected meaning and acceptable representation of data for use within a defined context of data elements within a data set. It also provides metadata or information about data.
-The metadata may include other attributes or characteristics such as length of data element, data type (e.g., alphanumeric, numeric, date, special symbols), data frequency (mandatory or not), allowable values or constraints, originating source system, data owner, data entry date, and when the data element is no longer collected.  The goal is to achieve consistently defined and standardized data.