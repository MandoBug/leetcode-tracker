# the topics that actually come up in coding interviews.
# spelled exactly the way LeetCode returns them in topicTags (LC renamed "Graph" -> "Graph Theory"
# and "Union Find" -> "Union-Find" at some point, so these match the current names).
# the recommender only scores these, and the dashboard uses the list to hide niche tags
# like Randomized / Game Theory / Number Theory that basically never show up in interviews.
INTERVIEW_TOPICS = [
    # arrays & strings
    "Array",
    "Hash Table",
    "String",
    "Two Pointers",
    "Sliding Window",
    "Prefix Sum",
    "Sorting",
    "Matrix",
    # stacks, searching, linked lists
    "Stack",
    "Monotonic Stack",
    "Binary Search",
    "Linked List",
    # trees
    "Tree",
    "Binary Tree",
    "Binary Search Tree",
    "Trie",
    "Heap (Priority Queue)",
    # graphs
    "Depth-First Search",
    "Breadth-First Search",
    "Graph Theory",
    "Topological Sort",
    "Union-Find",
    # recursion & optimization
    "Recursion",
    "Backtracking",
    "Dynamic Programming",
    "Greedy",
    "Bit Manipulation",
]

# Big picture of this file:
# one shared list so the recommender and the /topics endpoint agree on what "interview topic" means.
# if you want to add or remove a topic, this is the only place you need to change.
