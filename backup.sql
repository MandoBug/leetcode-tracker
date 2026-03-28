--
-- PostgreSQL database dump
--

\restrict gUIh9jGklpaYuERNDuUq3NAWudF3rBzArVCLmjDyHjWUD892afvW4JH6Y9tAM1c

-- Dumped from database version 18.2
-- Dumped by pg_dump version 18.3 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: problems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.problems (
    id character varying NOT NULL,
    title character varying NOT NULL,
    title_slug character varying NOT NULL,
    difficulty character varying,
    topics text[]
);


ALTER TABLE public.problems OWNER TO postgres;

--
-- Name: submissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.submissions (
    id character varying NOT NULL,
    title character varying NOT NULL,
    title_slug character varying NOT NULL,
    submitted_at timestamp without time zone NOT NULL,
    status character varying NOT NULL,
    language character varying NOT NULL,
    difficulty character varying,
    topics text[]
);


ALTER TABLE public.submissions OWNER TO postgres;

--
-- Data for Name: problems; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.problems (id, title, title_slug, difficulty, topics) FROM stdin;
1	Two Sum	two-sum	Easy	{Array,"Hash Table"}
2	Add Two Numbers	add-two-numbers	Medium	{"Linked List",Math,Recursion}
3	Longest Substring Without Repeating Characters	longest-substring-without-repeating-characters	Medium	{"Hash Table",String,"Sliding Window"}
4	Median of Two Sorted Arrays	median-of-two-sorted-arrays	Hard	{Array,"Binary Search","Divide and Conquer"}
5	Longest Palindromic Substring	longest-palindromic-substring	Medium	{"Two Pointers",String,"Dynamic Programming"}
6	Zigzag Conversion	zigzag-conversion	Medium	{String}
7	Reverse Integer	reverse-integer	Medium	{Math}
8	String to Integer (atoi)	string-to-integer-atoi	Medium	{String}
9	Palindrome Number	palindrome-number	Easy	{Math}
10	Regular Expression Matching	regular-expression-matching	Hard	{String,"Dynamic Programming",Recursion}
11	Container With Most Water	container-with-most-water	Medium	{Array,"Two Pointers",Greedy}
12	Integer to Roman	integer-to-roman	Medium	{"Hash Table",Math,String}
13	Roman to Integer	roman-to-integer	Easy	{"Hash Table",Math,String}
14	Longest Common Prefix	longest-common-prefix	Easy	{Array,String,Trie}
15	3Sum	3sum	Medium	{Array,"Two Pointers",Sorting}
16	3Sum Closest	3sum-closest	Medium	{Array,"Two Pointers",Sorting}
17	Letter Combinations of a Phone Number	letter-combinations-of-a-phone-number	Medium	{"Hash Table",String,Backtracking}
18	4Sum	4sum	Medium	{Array,"Two Pointers",Sorting}
19	Remove Nth Node From End of List	remove-nth-node-from-end-of-list	Medium	{"Linked List","Two Pointers"}
20	Valid Parentheses	valid-parentheses	Easy	{String,Stack}
21	Merge Two Sorted Lists	merge-two-sorted-lists	Easy	{"Linked List",Recursion}
22	Generate Parentheses	generate-parentheses	Medium	{String,"Dynamic Programming",Backtracking}
23	Merge k Sorted Lists	merge-k-sorted-lists	Hard	{"Linked List","Divide and Conquer","Heap (Priority Queue)","Merge Sort"}
24	Swap Nodes in Pairs	swap-nodes-in-pairs	Medium	{"Linked List",Recursion}
25	Reverse Nodes in k-Group	reverse-nodes-in-k-group	Hard	{"Linked List",Recursion}
26	Remove Duplicates from Sorted Array	remove-duplicates-from-sorted-array	Easy	{Array,"Two Pointers"}
27	Remove Element	remove-element	Easy	{Array,"Two Pointers"}
28	Find the Index of the First Occurrence in a String	find-the-index-of-the-first-occurrence-in-a-string	Easy	{"Two Pointers",String,"String Matching"}
29	Divide Two Integers	divide-two-integers	Medium	{Math,"Bit Manipulation"}
30	Substring with Concatenation of All Words	substring-with-concatenation-of-all-words	Hard	{"Hash Table",String,"Sliding Window"}
31	Next Permutation	next-permutation	Medium	{Array,"Two Pointers"}
32	Longest Valid Parentheses	longest-valid-parentheses	Hard	{String,"Dynamic Programming",Stack}
33	Search in Rotated Sorted Array	search-in-rotated-sorted-array	Medium	{Array,"Binary Search"}
34	Find First and Last Position of Element in Sorted Array	find-first-and-last-position-of-element-in-sorted-array	Medium	{Array,"Binary Search"}
35	Search Insert Position	search-insert-position	Easy	{Array,"Binary Search"}
36	Valid Sudoku	valid-sudoku	Medium	{Array,"Hash Table",Matrix}
37	Sudoku Solver	sudoku-solver	Hard	{Array,"Hash Table",Backtracking,Matrix}
38	Count and Say	count-and-say	Medium	{String}
39	Combination Sum	combination-sum	Medium	{Array,Backtracking}
40	Combination Sum II	combination-sum-ii	Medium	{Array,Backtracking}
41	First Missing Positive	first-missing-positive	Hard	{Array,"Hash Table"}
42	Trapping Rain Water	trapping-rain-water	Hard	{Array,"Two Pointers","Dynamic Programming",Stack,"Monotonic Stack"}
43	Multiply Strings	multiply-strings	Medium	{Math,String,Simulation}
44	Wildcard Matching	wildcard-matching	Hard	{String,"Dynamic Programming",Greedy,Recursion}
45	Jump Game II	jump-game-ii	Medium	{Array,"Dynamic Programming",Greedy}
46	Permutations	permutations	Medium	{Array,Backtracking}
47	Permutations II	permutations-ii	Medium	{Array,Backtracking,Sorting}
48	Rotate Image	rotate-image	Medium	{Array,Math,Matrix}
49	Group Anagrams	group-anagrams	Medium	{Array,"Hash Table",String,Sorting}
50	Pow(x, n)	powx-n	Medium	{Math,Recursion}
51	N-Queens	n-queens	Hard	{Array,Backtracking}
52	N-Queens II	n-queens-ii	Hard	{Backtracking}
53	Maximum Subarray	maximum-subarray	Medium	{Array,"Divide and Conquer","Dynamic Programming"}
54	Spiral Matrix	spiral-matrix	Medium	{Array,Matrix,Simulation}
55	Jump Game	jump-game	Medium	{Array,"Dynamic Programming",Greedy}
56	Merge Intervals	merge-intervals	Medium	{Array,Sorting}
57	Insert Interval	insert-interval	Medium	{Array}
58	Length of Last Word	length-of-last-word	Easy	{String}
59	Spiral Matrix II	spiral-matrix-ii	Medium	{Array,Matrix,Simulation}
60	Permutation Sequence	permutation-sequence	Hard	{Math,Recursion}
61	Rotate List	rotate-list	Medium	{"Linked List","Two Pointers"}
62	Unique Paths	unique-paths	Medium	{Math,"Dynamic Programming",Combinatorics}
63	Unique Paths II	unique-paths-ii	Medium	{Array,"Dynamic Programming",Matrix}
64	Minimum Path Sum	minimum-path-sum	Medium	{Array,"Dynamic Programming",Matrix}
65	Valid Number	valid-number	Hard	{String}
66	Plus One	plus-one	Easy	{Array,Math}
67	Add Binary	add-binary	Easy	{Math,String,"Bit Manipulation",Simulation}
68	Text Justification	text-justification	Hard	{Array,String,Simulation}
69	Sqrt(x)	sqrtx	Easy	{Math,"Binary Search"}
70	Climbing Stairs	climbing-stairs	Easy	{Math,"Dynamic Programming",Memoization}
71	Simplify Path	simplify-path	Medium	{String,Stack}
72	Edit Distance	edit-distance	Medium	{String,"Dynamic Programming"}
73	Set Matrix Zeroes	set-matrix-zeroes	Medium	{Array,"Hash Table",Matrix}
74	Search a 2D Matrix	search-a-2d-matrix	Medium	{Array,"Binary Search",Matrix}
75	Sort Colors	sort-colors	Medium	{Array,"Two Pointers",Sorting}
76	Minimum Window Substring	minimum-window-substring	Hard	{"Hash Table",String,"Sliding Window"}
77	Combinations	combinations	Medium	{Backtracking}
78	Subsets	subsets	Medium	{Array,Backtracking,"Bit Manipulation"}
79	Word Search	word-search	Medium	{Array,String,Backtracking,"Depth-First Search",Matrix}
80	Remove Duplicates from Sorted Array II	remove-duplicates-from-sorted-array-ii	Medium	{Array,"Two Pointers"}
81	Search in Rotated Sorted Array II	search-in-rotated-sorted-array-ii	Medium	{Array,"Binary Search"}
82	Remove Duplicates from Sorted List II	remove-duplicates-from-sorted-list-ii	Medium	{"Linked List","Two Pointers"}
83	Remove Duplicates from Sorted List	remove-duplicates-from-sorted-list	Easy	{"Linked List"}
84	Largest Rectangle in Histogram	largest-rectangle-in-histogram	Hard	{Array,Stack,"Monotonic Stack"}
85	Maximal Rectangle	maximal-rectangle	Hard	{Array,"Dynamic Programming",Stack,Matrix,"Monotonic Stack"}
86	Partition List	partition-list	Medium	{"Linked List","Two Pointers"}
87	Scramble String	scramble-string	Hard	{String,"Dynamic Programming"}
88	Merge Sorted Array	merge-sorted-array	Easy	{Array,"Two Pointers",Sorting}
89	Gray Code	gray-code	Medium	{Math,Backtracking,"Bit Manipulation"}
90	Subsets II	subsets-ii	Medium	{Array,Backtracking,"Bit Manipulation"}
91	Decode Ways	decode-ways	Medium	{String,"Dynamic Programming"}
92	Reverse Linked List II	reverse-linked-list-ii	Medium	{"Linked List"}
93	Restore IP Addresses	restore-ip-addresses	Medium	{String,Backtracking}
94	Binary Tree Inorder Traversal	binary-tree-inorder-traversal	Easy	{Stack,Tree,"Depth-First Search","Binary Tree"}
95	Unique Binary Search Trees II	unique-binary-search-trees-ii	Medium	{"Dynamic Programming",Backtracking,Tree,"Binary Search Tree","Binary Tree"}
96	Unique Binary Search Trees	unique-binary-search-trees	Medium	{Math,"Dynamic Programming",Tree,"Binary Search Tree","Binary Tree"}
97	Interleaving String	interleaving-string	Medium	{String,"Dynamic Programming"}
98	Validate Binary Search Tree	validate-binary-search-tree	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
99	Recover Binary Search Tree	recover-binary-search-tree	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
100	Same Tree	same-tree	Easy	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
101	Symmetric Tree	symmetric-tree	Easy	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
102	Binary Tree Level Order Traversal	binary-tree-level-order-traversal	Medium	{Tree,"Breadth-First Search","Binary Tree"}
103	Binary Tree Zigzag Level Order Traversal	binary-tree-zigzag-level-order-traversal	Medium	{Tree,"Breadth-First Search","Binary Tree"}
104	Maximum Depth of Binary Tree	maximum-depth-of-binary-tree	Easy	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
105	Construct Binary Tree from Preorder and Inorder Traversal	construct-binary-tree-from-preorder-and-inorder-traversal	Medium	{Array,"Hash Table","Divide and Conquer",Tree,"Binary Tree"}
106	Construct Binary Tree from Inorder and Postorder Traversal	construct-binary-tree-from-inorder-and-postorder-traversal	Medium	{Array,"Hash Table","Divide and Conquer",Tree,"Binary Tree"}
107	Binary Tree Level Order Traversal II	binary-tree-level-order-traversal-ii	Medium	{Tree,"Breadth-First Search","Binary Tree"}
108	Convert Sorted Array to Binary Search Tree	convert-sorted-array-to-binary-search-tree	Easy	{Array,"Divide and Conquer",Tree,"Binary Search Tree","Binary Tree"}
109	Convert Sorted List to Binary Search Tree	convert-sorted-list-to-binary-search-tree	Medium	{"Linked List","Divide and Conquer",Tree,"Binary Search Tree","Binary Tree"}
110	Balanced Binary Tree	balanced-binary-tree	Easy	{Tree,"Depth-First Search","Binary Tree"}
111	Minimum Depth of Binary Tree	minimum-depth-of-binary-tree	Easy	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
112	Path Sum	path-sum	Easy	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
113	Path Sum II	path-sum-ii	Medium	{Backtracking,Tree,"Depth-First Search","Binary Tree"}
114	Flatten Binary Tree to Linked List	flatten-binary-tree-to-linked-list	Medium	{"Linked List",Stack,Tree,"Depth-First Search","Binary Tree"}
115	Distinct Subsequences	distinct-subsequences	Hard	{String,"Dynamic Programming"}
116	Populating Next Right Pointers in Each Node	populating-next-right-pointers-in-each-node	Medium	{"Linked List",Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
117	Populating Next Right Pointers in Each Node II	populating-next-right-pointers-in-each-node-ii	Medium	{"Linked List",Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
118	Pascal's Triangle	pascals-triangle	Easy	{Array,"Dynamic Programming"}
119	Pascal's Triangle II	pascals-triangle-ii	Easy	{Array,"Dynamic Programming"}
120	Triangle	triangle	Medium	{Array,"Dynamic Programming"}
121	Best Time to Buy and Sell Stock	best-time-to-buy-and-sell-stock	Easy	{Array,"Dynamic Programming"}
122	Best Time to Buy and Sell Stock II	best-time-to-buy-and-sell-stock-ii	Medium	{Array,"Dynamic Programming",Greedy}
123	Best Time to Buy and Sell Stock III	best-time-to-buy-and-sell-stock-iii	Hard	{Array,"Dynamic Programming"}
124	Binary Tree Maximum Path Sum	binary-tree-maximum-path-sum	Hard	{"Dynamic Programming",Tree,"Depth-First Search","Binary Tree"}
125	Valid Palindrome	valid-palindrome	Easy	{"Two Pointers",String}
126	Word Ladder II	word-ladder-ii	Hard	{"Hash Table",String,Backtracking,"Breadth-First Search"}
127	Word Ladder	word-ladder	Hard	{"Hash Table",String,"Breadth-First Search"}
128	Longest Consecutive Sequence	longest-consecutive-sequence	Medium	{Array,"Hash Table",Union-Find}
129	Sum Root to Leaf Numbers	sum-root-to-leaf-numbers	Medium	{Tree,"Depth-First Search","Binary Tree"}
130	Surrounded Regions	surrounded-regions	Medium	{Array,"Depth-First Search","Breadth-First Search",Union-Find,Matrix}
131	Palindrome Partitioning	palindrome-partitioning	Medium	{String,"Dynamic Programming",Backtracking}
132	Palindrome Partitioning II	palindrome-partitioning-ii	Hard	{String,"Dynamic Programming"}
133	Clone Graph	clone-graph	Medium	{"Hash Table","Depth-First Search","Breadth-First Search","Graph Theory"}
134	Gas Station	gas-station	Medium	{Array,Greedy}
135	Candy	candy	Hard	{Array,Greedy}
136	Single Number	single-number	Easy	{Array,"Bit Manipulation"}
137	Single Number II	single-number-ii	Medium	{Array,"Bit Manipulation"}
138	Copy List with Random Pointer	copy-list-with-random-pointer	Medium	{"Hash Table","Linked List"}
139	Word Break	word-break	Medium	{Array,"Hash Table",String,"Dynamic Programming",Trie,Memoization}
140	Word Break II	word-break-ii	Hard	{Array,"Hash Table",String,"Dynamic Programming",Backtracking,Trie,Memoization}
141	Linked List Cycle	linked-list-cycle	Easy	{"Hash Table","Linked List","Two Pointers"}
142	Linked List Cycle II	linked-list-cycle-ii	Medium	{"Hash Table","Linked List","Two Pointers"}
143	Reorder List	reorder-list	Medium	{"Linked List","Two Pointers",Stack,Recursion}
144	Binary Tree Preorder Traversal	binary-tree-preorder-traversal	Easy	{Stack,Tree,"Depth-First Search","Binary Tree"}
145	Binary Tree Postorder Traversal	binary-tree-postorder-traversal	Easy	{Stack,Tree,"Depth-First Search","Binary Tree"}
146	LRU Cache	lru-cache	Medium	{"Hash Table","Linked List",Design,"Doubly-Linked List"}
147	Insertion Sort List	insertion-sort-list	Medium	{"Linked List",Sorting}
148	Sort List	sort-list	Medium	{"Linked List","Two Pointers","Divide and Conquer",Sorting,"Merge Sort"}
149	Max Points on a Line	max-points-on-a-line	Hard	{Array,"Hash Table",Math,Geometry}
150	Evaluate Reverse Polish Notation	evaluate-reverse-polish-notation	Medium	{Array,Math,Stack}
151	Reverse Words in a String	reverse-words-in-a-string	Medium	{"Two Pointers",String}
152	Maximum Product Subarray	maximum-product-subarray	Medium	{Array,"Dynamic Programming"}
153	Find Minimum in Rotated Sorted Array	find-minimum-in-rotated-sorted-array	Medium	{Array,"Binary Search"}
154	Find Minimum in Rotated Sorted Array II	find-minimum-in-rotated-sorted-array-ii	Hard	{Array,"Binary Search"}
155	Min Stack	min-stack	Medium	{Stack,Design}
156	Binary Tree Upside Down	binary-tree-upside-down	Medium	{Tree,"Depth-First Search","Binary Tree"}
157	Read N Characters Given Read4	read-n-characters-given-read4	Easy	{Array,Simulation,Interactive}
158	Read N Characters Given read4 II - Call Multiple Times	read-n-characters-given-read4-ii-call-multiple-times	Hard	{Array,Simulation,Interactive}
159	Longest Substring with At Most Two Distinct Characters	longest-substring-with-at-most-two-distinct-characters	Medium	{"Hash Table",String,"Sliding Window"}
160	Intersection of Two Linked Lists	intersection-of-two-linked-lists	Easy	{"Hash Table","Linked List","Two Pointers"}
161	One Edit Distance	one-edit-distance	Medium	{"Two Pointers",String}
162	Find Peak Element	find-peak-element	Medium	{Array,"Binary Search"}
163	Missing Ranges	missing-ranges	Easy	{Array}
164	Maximum Gap	maximum-gap	Medium	{Array,Sorting,"Bucket Sort","Radix Sort"}
165	Compare Version Numbers	compare-version-numbers	Medium	{"Two Pointers",String}
166	Fraction to Recurring Decimal	fraction-to-recurring-decimal	Medium	{"Hash Table",Math,String}
167	Two Sum II - Input Array Is Sorted	two-sum-ii-input-array-is-sorted	Medium	{Array,"Two Pointers","Binary Search"}
168	Excel Sheet Column Title	excel-sheet-column-title	Easy	{Math,String}
169	Majority Element	majority-element	Easy	{Array,"Hash Table","Divide and Conquer",Sorting,Counting}
170	Two Sum III - Data structure design	two-sum-iii-data-structure-design	Easy	{Array,"Hash Table","Two Pointers",Design,"Data Stream"}
171	Excel Sheet Column Number	excel-sheet-column-number	Easy	{Math,String}
172	Factorial Trailing Zeroes	factorial-trailing-zeroes	Medium	{Math}
173	Binary Search Tree Iterator	binary-search-tree-iterator	Medium	{Stack,Tree,Design,"Binary Search Tree","Binary Tree",Iterator}
174	Dungeon Game	dungeon-game	Hard	{Array,"Dynamic Programming",Matrix}
175	Combine Two Tables	combine-two-tables	Easy	{Database}
176	Second Highest Salary	second-highest-salary	Medium	{Database}
177	Nth Highest Salary	nth-highest-salary	Medium	{Database}
178	Rank Scores	rank-scores	Medium	{Database}
179	Largest Number	largest-number	Medium	{Array,String,Greedy,Sorting}
180	Consecutive Numbers	consecutive-numbers	Medium	{Database}
181	Employees Earning More Than Their Managers	employees-earning-more-than-their-managers	Easy	{Database}
182	Duplicate Emails	duplicate-emails	Easy	{Database}
183	Customers Who Never Order	customers-who-never-order	Easy	{Database}
184	Department Highest Salary	department-highest-salary	Medium	{Database}
185	Department Top Three Salaries	department-top-three-salaries	Hard	{Database}
186	Reverse Words in a String II	reverse-words-in-a-string-ii	Medium	{"Two Pointers",String}
187	Repeated DNA Sequences	repeated-dna-sequences	Medium	{"Hash Table",String,"Bit Manipulation","Sliding Window","Rolling Hash","Hash Function"}
188	Best Time to Buy and Sell Stock IV	best-time-to-buy-and-sell-stock-iv	Hard	{Array,"Dynamic Programming"}
189	Rotate Array	rotate-array	Medium	{Array,Math,"Two Pointers"}
190	Reverse Bits	reverse-bits	Easy	{"Divide and Conquer","Bit Manipulation"}
191	Number of 1 Bits	number-of-1-bits	Easy	{"Divide and Conquer","Bit Manipulation"}
192	Word Frequency	word-frequency	Medium	{Shell}
193	Valid Phone Numbers	valid-phone-numbers	Easy	{Shell}
194	Transpose File	transpose-file	Medium	{Shell}
195	Tenth Line	tenth-line	Easy	{Shell}
196	Delete Duplicate Emails	delete-duplicate-emails	Easy	{Database}
197	Rising Temperature	rising-temperature	Easy	{Database}
198	House Robber	house-robber	Medium	{Array,"Dynamic Programming"}
199	Binary Tree Right Side View	binary-tree-right-side-view	Medium	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
200	Number of Islands	number-of-islands	Medium	{Array,"Depth-First Search","Breadth-First Search",Union-Find,Matrix}
201	Bitwise AND of Numbers Range	bitwise-and-of-numbers-range	Medium	{"Bit Manipulation"}
202	Happy Number	happy-number	Easy	{"Hash Table",Math,"Two Pointers"}
203	Remove Linked List Elements	remove-linked-list-elements	Easy	{"Linked List",Recursion}
204	Count Primes	count-primes	Medium	{Array,Math,Enumeration,"Number Theory"}
205	Isomorphic Strings	isomorphic-strings	Easy	{"Hash Table",String}
206	Reverse Linked List	reverse-linked-list	Easy	{"Linked List",Recursion}
207	Course Schedule	course-schedule	Medium	{"Depth-First Search","Breadth-First Search","Graph Theory","Topological Sort"}
208	Implement Trie (Prefix Tree)	implement-trie-prefix-tree	Medium	{"Hash Table",String,Design,Trie}
209	Minimum Size Subarray Sum	minimum-size-subarray-sum	Medium	{Array,"Binary Search","Sliding Window","Prefix Sum"}
210	Course Schedule II	course-schedule-ii	Medium	{"Depth-First Search","Breadth-First Search","Graph Theory","Topological Sort"}
211	Design Add and Search Words Data Structure	design-add-and-search-words-data-structure	Medium	{String,"Depth-First Search",Design,Trie}
212	Word Search II	word-search-ii	Hard	{Array,String,Backtracking,Trie,Matrix}
213	House Robber II	house-robber-ii	Medium	{Array,"Dynamic Programming"}
214	Shortest Palindrome	shortest-palindrome	Hard	{String,"Rolling Hash","String Matching","Hash Function"}
215	Kth Largest Element in an Array	kth-largest-element-in-an-array	Medium	{Array,"Divide and Conquer",Sorting,"Heap (Priority Queue)",Quickselect}
216	Combination Sum III	combination-sum-iii	Medium	{Array,Backtracking}
217	Contains Duplicate	contains-duplicate	Easy	{Array,"Hash Table",Sorting}
218	The Skyline Problem	the-skyline-problem	Hard	{Array,"Divide and Conquer","Binary Indexed Tree","Segment Tree","Sweep Line",Sorting,"Heap (Priority Queue)","Ordered Set"}
219	Contains Duplicate II	contains-duplicate-ii	Easy	{Array,"Hash Table","Sliding Window"}
220	Contains Duplicate III	contains-duplicate-iii	Hard	{Array,"Sliding Window",Sorting,"Bucket Sort","Ordered Set"}
221	Maximal Square	maximal-square	Medium	{Array,"Dynamic Programming",Matrix}
222	Count Complete Tree Nodes	count-complete-tree-nodes	Easy	{"Binary Search","Bit Manipulation",Tree,"Binary Tree"}
223	Rectangle Area	rectangle-area	Medium	{Math,Geometry}
224	Basic Calculator	basic-calculator	Hard	{Math,String,Stack,Recursion}
225	Implement Stack using Queues	implement-stack-using-queues	Easy	{Stack,Design,Queue}
226	Invert Binary Tree	invert-binary-tree	Easy	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
227	Basic Calculator II	basic-calculator-ii	Medium	{Math,String,Stack}
228	Summary Ranges	summary-ranges	Easy	{Array}
229	Majority Element II	majority-element-ii	Medium	{Array,"Hash Table",Sorting,Counting}
230	Kth Smallest Element in a BST	kth-smallest-element-in-a-bst	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
231	Power of Two	power-of-two	Easy	{Math,"Bit Manipulation",Recursion}
232	Implement Queue using Stacks	implement-queue-using-stacks	Easy	{Stack,Design,Queue}
233	Number of Digit One	number-of-digit-one	Hard	{Math,"Dynamic Programming",Recursion}
234	Palindrome Linked List	palindrome-linked-list	Easy	{"Linked List","Two Pointers",Stack,Recursion}
235	Lowest Common Ancestor of a Binary Search Tree	lowest-common-ancestor-of-a-binary-search-tree	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
236	Lowest Common Ancestor of a Binary Tree	lowest-common-ancestor-of-a-binary-tree	Medium	{Tree,"Depth-First Search","Binary Tree"}
237	Delete Node in a Linked List	delete-node-in-a-linked-list	Medium	{"Linked List"}
238	Product of Array Except Self	product-of-array-except-self	Medium	{Array,"Prefix Sum"}
239	Sliding Window Maximum	sliding-window-maximum	Hard	{Array,Queue,"Sliding Window","Heap (Priority Queue)","Monotonic Queue"}
240	Search a 2D Matrix II	search-a-2d-matrix-ii	Medium	{Array,"Binary Search","Divide and Conquer",Matrix}
241	Different Ways to Add Parentheses	different-ways-to-add-parentheses	Medium	{Math,String,"Dynamic Programming",Recursion,Memoization}
242	Valid Anagram	valid-anagram	Easy	{"Hash Table",String,Sorting}
243	Shortest Word Distance	shortest-word-distance	Easy	{Array,String}
244	Shortest Word Distance II	shortest-word-distance-ii	Medium	{Array,"Hash Table","Two Pointers",String,Design}
245	Shortest Word Distance III	shortest-word-distance-iii	Medium	{Array,String}
246	Strobogrammatic Number	strobogrammatic-number	Easy	{"Hash Table","Two Pointers",String}
247	Strobogrammatic Number II	strobogrammatic-number-ii	Medium	{Array,String,Recursion}
248	Strobogrammatic Number III	strobogrammatic-number-iii	Hard	{Array,String,Recursion}
249	Group Shifted Strings	group-shifted-strings	Medium	{Array,"Hash Table",String}
250	Count Univalue Subtrees	count-univalue-subtrees	Medium	{Tree,"Depth-First Search","Binary Tree"}
251	Flatten 2D Vector	flatten-2d-vector	Medium	{Array,"Two Pointers",Design,Iterator}
252	Meeting Rooms	meeting-rooms	Easy	{Array,Sorting}
253	Meeting Rooms II	meeting-rooms-ii	Medium	{Array,"Two Pointers",Greedy,Sorting,"Heap (Priority Queue)","Prefix Sum"}
254	Factor Combinations	factor-combinations	Medium	{Backtracking}
255	Verify Preorder Sequence in Binary Search Tree	verify-preorder-sequence-in-binary-search-tree	Medium	{Array,Stack,Tree,"Binary Search Tree",Recursion,"Monotonic Stack","Binary Tree"}
256	Paint House	paint-house	Medium	{Array,"Dynamic Programming"}
257	Binary Tree Paths	binary-tree-paths	Easy	{String,Backtracking,Tree,"Depth-First Search","Binary Tree"}
258	Add Digits	add-digits	Easy	{Math,Simulation,"Number Theory"}
259	3Sum Smaller	3sum-smaller	Medium	{Array,"Two Pointers","Binary Search",Sorting}
260	Single Number III	single-number-iii	Medium	{Array,"Bit Manipulation"}
261	Graph Valid Tree	graph-valid-tree	Medium	{"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
262	Trips and Users	trips-and-users	Hard	{Database}
263	Ugly Number	ugly-number	Easy	{Math}
264	Ugly Number II	ugly-number-ii	Medium	{"Hash Table",Math,"Dynamic Programming","Heap (Priority Queue)"}
265	Paint House II	paint-house-ii	Hard	{Array,"Dynamic Programming"}
266	Palindrome Permutation	palindrome-permutation	Easy	{"Hash Table",String,"Bit Manipulation"}
267	Palindrome Permutation II	palindrome-permutation-ii	Medium	{"Hash Table",String,Backtracking}
268	Missing Number	missing-number	Easy	{Array,"Hash Table",Math,"Binary Search","Bit Manipulation",Sorting}
518	Coin Change II	coin-change-ii	Medium	{Array,"Dynamic Programming"}
269	Alien Dictionary	alien-dictionary	Hard	{Array,String,"Depth-First Search","Breadth-First Search","Graph Theory","Topological Sort"}
270	Closest Binary Search Tree Value	closest-binary-search-tree-value	Easy	{"Binary Search",Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
271	Encode and Decode Strings	encode-and-decode-strings	Medium	{Array,String,Design}
272	Closest Binary Search Tree Value II	closest-binary-search-tree-value-ii	Hard	{"Two Pointers",Stack,Tree,"Depth-First Search","Binary Search Tree","Heap (Priority Queue)","Binary Tree"}
273	Integer to English Words	integer-to-english-words	Hard	{Math,String,Recursion}
274	H-Index	h-index	Medium	{Array,Sorting,"Counting Sort"}
275	H-Index II	h-index-ii	Medium	{Array,"Binary Search"}
276	Paint Fence	paint-fence	Medium	{"Dynamic Programming"}
277	Find the Celebrity	find-the-celebrity	Medium	{"Two Pointers","Graph Theory",Interactive}
278	First Bad Version	first-bad-version	Easy	{"Binary Search",Interactive}
279	Perfect Squares	perfect-squares	Medium	{Math,"Dynamic Programming","Breadth-First Search"}
280	Wiggle Sort	wiggle-sort	Medium	{Array,Greedy,Sorting}
281	Zigzag Iterator	zigzag-iterator	Medium	{Array,Design,Queue,Iterator}
282	Expression Add Operators	expression-add-operators	Hard	{Math,String,Backtracking}
283	Move Zeroes	move-zeroes	Easy	{Array,"Two Pointers"}
284	Peeking Iterator	peeking-iterator	Medium	{Array,Design,Iterator}
285	Inorder Successor in BST	inorder-successor-in-bst	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
286	Walls and Gates	walls-and-gates	Medium	{Array,"Breadth-First Search",Matrix}
287	Find the Duplicate Number	find-the-duplicate-number	Medium	{Array,"Two Pointers","Binary Search","Bit Manipulation"}
288	Unique Word Abbreviation	unique-word-abbreviation	Medium	{Array,"Hash Table",String,Design}
289	Game of Life	game-of-life	Medium	{Array,Matrix,Simulation}
290	Word Pattern	word-pattern	Easy	{"Hash Table",String}
291	Word Pattern II	word-pattern-ii	Medium	{"Hash Table",String,Backtracking}
292	Nim Game	nim-game	Easy	{Math,Brainteaser,"Game Theory"}
293	Flip Game	flip-game	Easy	{String}
294	Flip Game II	flip-game-ii	Medium	{Math,"Dynamic Programming",Backtracking,Memoization,"Game Theory"}
295	Find Median from Data Stream	find-median-from-data-stream	Hard	{"Two Pointers",Design,Sorting,"Heap (Priority Queue)","Data Stream"}
296	Best Meeting Point	best-meeting-point	Hard	{Array,Math,Sorting,Matrix}
297	Serialize and Deserialize Binary Tree	serialize-and-deserialize-binary-tree	Hard	{String,Tree,"Depth-First Search","Breadth-First Search",Design,"Binary Tree"}
298	Binary Tree Longest Consecutive Sequence	binary-tree-longest-consecutive-sequence	Medium	{Tree,"Depth-First Search","Binary Tree"}
299	Bulls and Cows	bulls-and-cows	Medium	{"Hash Table",String,Counting}
300	Longest Increasing Subsequence	longest-increasing-subsequence	Medium	{Array,"Binary Search","Dynamic Programming"}
301	Remove Invalid Parentheses	remove-invalid-parentheses	Hard	{String,Backtracking,"Breadth-First Search"}
302	Smallest Rectangle Enclosing Black Pixels	smallest-rectangle-enclosing-black-pixels	Hard	{Array,"Binary Search","Depth-First Search","Breadth-First Search",Matrix}
303	Range Sum Query - Immutable	range-sum-query-immutable	Easy	{Array,Design,"Prefix Sum"}
304	Range Sum Query 2D - Immutable	range-sum-query-2d-immutable	Medium	{Array,Design,Matrix,"Prefix Sum"}
305	Number of Islands II	number-of-islands-ii	Hard	{Array,"Hash Table",Union-Find}
306	Additive Number	additive-number	Medium	{String,Backtracking}
307	Range Sum Query - Mutable	range-sum-query-mutable	Medium	{Array,"Divide and Conquer",Design,"Binary Indexed Tree","Segment Tree"}
308	Range Sum Query 2D - Mutable	range-sum-query-2d-mutable	Medium	{Array,Design,"Binary Indexed Tree","Segment Tree",Matrix}
309	Best Time to Buy and Sell Stock with Cooldown	best-time-to-buy-and-sell-stock-with-cooldown	Medium	{Array,"Dynamic Programming"}
310	Minimum Height Trees	minimum-height-trees	Medium	{"Depth-First Search","Breadth-First Search","Graph Theory","Topological Sort"}
311	Sparse Matrix Multiplication	sparse-matrix-multiplication	Medium	{Array,"Hash Table",Matrix}
312	Burst Balloons	burst-balloons	Hard	{Array,"Dynamic Programming"}
313	Super Ugly Number	super-ugly-number	Medium	{Array,Math,"Dynamic Programming"}
314	Binary Tree Vertical Order Traversal	binary-tree-vertical-order-traversal	Medium	{"Hash Table",Tree,"Depth-First Search","Breadth-First Search",Sorting,"Binary Tree"}
315	Count of Smaller Numbers After Self	count-of-smaller-numbers-after-self	Hard	{Array,"Binary Search","Divide and Conquer","Binary Indexed Tree","Segment Tree","Merge Sort","Ordered Set"}
316	Remove Duplicate Letters	remove-duplicate-letters	Medium	{String,Stack,Greedy,"Monotonic Stack"}
317	Shortest Distance from All Buildings	shortest-distance-from-all-buildings	Hard	{Array,"Breadth-First Search",Matrix}
627	Swap Sex of Employees	swap-sex-of-employees	Easy	{Database}
318	Maximum Product of Word Lengths	maximum-product-of-word-lengths	Medium	{Array,String,"Bit Manipulation"}
319	Bulb Switcher	bulb-switcher	Medium	{Math,Brainteaser}
320	Generalized Abbreviation	generalized-abbreviation	Medium	{String,Backtracking,"Bit Manipulation"}
321	Create Maximum Number	create-maximum-number	Hard	{Array,"Two Pointers",Stack,Greedy,"Monotonic Stack"}
322	Coin Change	coin-change	Medium	{Array,"Dynamic Programming","Breadth-First Search"}
323	Number of Connected Components in an Undirected Graph	number-of-connected-components-in-an-undirected-graph	Medium	{"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
324	Wiggle Sort II	wiggle-sort-ii	Medium	{Array,"Divide and Conquer",Greedy,Sorting,Quickselect}
325	Maximum Size Subarray Sum Equals k	maximum-size-subarray-sum-equals-k	Medium	{Array,"Hash Table","Prefix Sum"}
326	Power of Three	power-of-three	Easy	{Math,Recursion}
327	Count of Range Sum	count-of-range-sum	Hard	{Array,"Binary Search","Divide and Conquer","Binary Indexed Tree","Segment Tree","Merge Sort","Ordered Set"}
328	Odd Even Linked List	odd-even-linked-list	Medium	{"Linked List"}
329	Longest Increasing Path in a Matrix	longest-increasing-path-in-a-matrix	Hard	{Array,"Dynamic Programming","Depth-First Search","Breadth-First Search","Graph Theory","Topological Sort",Memoization,Matrix}
330	Patching Array	patching-array	Hard	{Array,Greedy}
331	Verify Preorder Serialization of a Binary Tree	verify-preorder-serialization-of-a-binary-tree	Medium	{String,Stack,Tree,"Binary Tree"}
332	Reconstruct Itinerary	reconstruct-itinerary	Hard	{Array,String,"Depth-First Search","Graph Theory",Sorting,"Heap (Priority Queue)","Eulerian Circuit"}
333	Largest BST Subtree	largest-bst-subtree	Medium	{"Dynamic Programming",Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
334	Increasing Triplet Subsequence	increasing-triplet-subsequence	Medium	{Array,Greedy}
335	Self Crossing	self-crossing	Hard	{Array,Math,Geometry}
336	Palindrome Pairs	palindrome-pairs	Hard	{Array,"Hash Table",String,Trie}
337	House Robber III	house-robber-iii	Medium	{"Dynamic Programming",Tree,"Depth-First Search","Binary Tree"}
338	Counting Bits	counting-bits	Easy	{"Dynamic Programming","Bit Manipulation"}
339	Nested List Weight Sum	nested-list-weight-sum	Medium	{"Depth-First Search","Breadth-First Search"}
340	Longest Substring with At Most K Distinct Characters	longest-substring-with-at-most-k-distinct-characters	Medium	{"Hash Table",String,"Sliding Window"}
341	Flatten Nested List Iterator	flatten-nested-list-iterator	Medium	{Stack,Tree,"Depth-First Search",Design,Queue,Iterator}
342	Power of Four	power-of-four	Easy	{Math,"Bit Manipulation",Recursion}
343	Integer Break	integer-break	Medium	{Math,"Dynamic Programming"}
344	Reverse String	reverse-string	Easy	{"Two Pointers",String}
345	Reverse Vowels of a String	reverse-vowels-of-a-string	Easy	{"Two Pointers",String}
346	Moving Average from Data Stream	moving-average-from-data-stream	Easy	{Array,Design,Queue,"Data Stream"}
347	Top K Frequent Elements	top-k-frequent-elements	Medium	{Array,"Hash Table","Divide and Conquer",Sorting,"Heap (Priority Queue)","Bucket Sort",Counting,Quickselect}
348	Design Tic-Tac-Toe	design-tic-tac-toe	Medium	{Array,"Hash Table",Design,Matrix,Simulation}
349	Intersection of Two Arrays	intersection-of-two-arrays	Easy	{Array,"Hash Table","Two Pointers","Binary Search",Sorting}
350	Intersection of Two Arrays II	intersection-of-two-arrays-ii	Easy	{Array,"Hash Table","Two Pointers","Binary Search",Sorting}
351	Android Unlock Patterns	android-unlock-patterns	Medium	{"Dynamic Programming",Backtracking,"Bit Manipulation",Bitmask}
352	Data Stream as Disjoint Intervals	data-stream-as-disjoint-intervals	Hard	{"Hash Table","Binary Search",Union-Find,Design,"Data Stream","Ordered Set"}
353	Design Snake Game	design-snake-game	Medium	{Array,"Hash Table",Design,Queue,Simulation}
354	Russian Doll Envelopes	russian-doll-envelopes	Hard	{Array,"Binary Search","Dynamic Programming",Sorting}
355	Design Twitter	design-twitter	Medium	{"Hash Table","Linked List",Design,"Heap (Priority Queue)"}
356	Line Reflection	line-reflection	Medium	{Array,"Hash Table",Math}
357	Count Numbers with Unique Digits	count-numbers-with-unique-digits	Medium	{Math,"Dynamic Programming",Backtracking}
358	Rearrange String k Distance Apart	rearrange-string-k-distance-apart	Hard	{"Hash Table",String,Greedy,Sorting,"Heap (Priority Queue)",Counting}
359	Logger Rate Limiter	logger-rate-limiter	Easy	{"Hash Table",Design,"Data Stream"}
360	Sort Transformed Array	sort-transformed-array	Medium	{Array,Math,"Two Pointers",Sorting}
361	Bomb Enemy	bomb-enemy	Medium	{Array,"Dynamic Programming",Matrix}
362	Design Hit Counter	design-hit-counter	Medium	{Array,"Binary Search",Design,Queue,"Data Stream"}
363	Max Sum of Rectangle No Larger Than K	max-sum-of-rectangle-no-larger-than-k	Hard	{Array,"Binary Search",Matrix,"Prefix Sum","Ordered Set"}
364	Nested List Weight Sum II	nested-list-weight-sum-ii	Medium	{Stack,"Depth-First Search","Breadth-First Search"}
365	Water and Jug Problem	water-and-jug-problem	Medium	{Math,"Depth-First Search","Breadth-First Search"}
366	Find Leaves of Binary Tree	find-leaves-of-binary-tree	Medium	{Tree,"Depth-First Search","Binary Tree"}
367	Valid Perfect Square	valid-perfect-square	Easy	{Math,"Binary Search"}
368	Largest Divisible Subset	largest-divisible-subset	Medium	{Array,Math,"Dynamic Programming",Sorting}
369	Plus One Linked List	plus-one-linked-list	Medium	{"Linked List",Math}
370	Range Addition	range-addition	Medium	{Array,"Prefix Sum"}
371	Sum of Two Integers	sum-of-two-integers	Medium	{Math,"Bit Manipulation"}
372	Super Pow	super-pow	Medium	{Math,"Divide and Conquer"}
373	Find K Pairs with Smallest Sums	find-k-pairs-with-smallest-sums	Medium	{Array,"Heap (Priority Queue)"}
374	Guess Number Higher or Lower	guess-number-higher-or-lower	Easy	{"Binary Search",Interactive}
375	Guess Number Higher or Lower II	guess-number-higher-or-lower-ii	Medium	{Math,"Dynamic Programming","Game Theory"}
376	Wiggle Subsequence	wiggle-subsequence	Medium	{Array,"Dynamic Programming",Greedy}
377	Combination Sum IV	combination-sum-iv	Medium	{Array,"Dynamic Programming"}
378	Kth Smallest Element in a Sorted Matrix	kth-smallest-element-in-a-sorted-matrix	Medium	{Array,"Binary Search",Sorting,"Heap (Priority Queue)",Matrix}
379	Design Phone Directory	design-phone-directory	Medium	{Array,"Hash Table","Linked List",Design,Queue}
380	Insert Delete GetRandom O(1)	insert-delete-getrandom-o1	Medium	{Array,"Hash Table",Math,Design,Randomized}
381	Insert Delete GetRandom O(1) - Duplicates allowed	insert-delete-getrandom-o1-duplicates-allowed	Hard	{Array,"Hash Table",Math,Design,Randomized}
382	Linked List Random Node	linked-list-random-node	Medium	{"Linked List",Math,"Reservoir Sampling",Randomized}
383	Ransom Note	ransom-note	Easy	{"Hash Table",String,Counting}
384	Shuffle an Array	shuffle-an-array	Medium	{Array,Math,Design,Randomized}
385	Mini Parser	mini-parser	Medium	{String,Stack,"Depth-First Search"}
386	Lexicographical Numbers	lexicographical-numbers	Medium	{"Depth-First Search",Trie}
387	First Unique Character in a String	first-unique-character-in-a-string	Easy	{"Hash Table",String,Queue,Counting}
388	Longest Absolute File Path	longest-absolute-file-path	Medium	{String,Stack,"Depth-First Search"}
389	Find the Difference	find-the-difference	Easy	{"Hash Table",String,"Bit Manipulation",Sorting}
390	Elimination Game	elimination-game	Medium	{Math,Recursion}
391	Perfect Rectangle	perfect-rectangle	Hard	{Array,"Hash Table",Math,Geometry,"Sweep Line"}
392	Is Subsequence	is-subsequence	Easy	{"Two Pointers",String,"Dynamic Programming"}
393	UTF-8 Validation	utf-8-validation	Medium	{Array,"Bit Manipulation"}
394	Decode String	decode-string	Medium	{String,Stack,Recursion}
395	Longest Substring with At Least K Repeating Characters	longest-substring-with-at-least-k-repeating-characters	Medium	{"Hash Table",String,"Divide and Conquer","Sliding Window"}
396	Rotate Function	rotate-function	Medium	{Array,Math,"Dynamic Programming"}
397	Integer Replacement	integer-replacement	Medium	{"Dynamic Programming",Greedy,"Bit Manipulation",Memoization}
398	Random Pick Index	random-pick-index	Medium	{"Hash Table",Math,"Reservoir Sampling",Randomized}
399	Evaluate Division	evaluate-division	Medium	{Array,String,"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory","Shortest Path"}
400	Nth Digit	nth-digit	Medium	{Math,"Binary Search"}
401	Binary Watch	binary-watch	Easy	{Backtracking,"Bit Manipulation"}
402	Remove K Digits	remove-k-digits	Medium	{String,Stack,Greedy,"Monotonic Stack"}
403	Frog Jump	frog-jump	Hard	{Array,"Dynamic Programming"}
404	Sum of Left Leaves	sum-of-left-leaves	Easy	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
405	Convert a Number to Hexadecimal	convert-a-number-to-hexadecimal	Easy	{Math,String,"Bit Manipulation"}
406	Queue Reconstruction by Height	queue-reconstruction-by-height	Medium	{Array,"Binary Indexed Tree","Segment Tree",Sorting}
407	Trapping Rain Water II	trapping-rain-water-ii	Hard	{Array,"Breadth-First Search","Heap (Priority Queue)",Matrix}
408	Valid Word Abbreviation	valid-word-abbreviation	Easy	{"Two Pointers",String}
409	Longest Palindrome	longest-palindrome	Easy	{"Hash Table",String,Greedy}
410	Split Array Largest Sum	split-array-largest-sum	Hard	{Array,"Binary Search","Dynamic Programming",Greedy,"Prefix Sum"}
411	Minimum Unique Word Abbreviation	minimum-unique-word-abbreviation	Hard	{Array,String,Backtracking,"Bit Manipulation"}
412	Fizz Buzz	fizz-buzz	Easy	{Math,String,Simulation}
413	Arithmetic Slices	arithmetic-slices	Medium	{Array,"Dynamic Programming","Sliding Window"}
414	Third Maximum Number	third-maximum-number	Easy	{Array,Sorting}
415	Add Strings	add-strings	Easy	{Math,String,Simulation}
416	Partition Equal Subset Sum	partition-equal-subset-sum	Medium	{Array,"Dynamic Programming"}
417	Pacific Atlantic Water Flow	pacific-atlantic-water-flow	Medium	{Array,"Depth-First Search","Breadth-First Search",Matrix}
418	Sentence Screen Fitting	sentence-screen-fitting	Medium	{Array,String,"Dynamic Programming"}
419	Battleships in a Board	battleships-in-a-board	Medium	{Array,"Depth-First Search",Matrix}
420	Strong Password Checker	strong-password-checker	Hard	{String,Greedy,"Heap (Priority Queue)"}
421	Maximum XOR of Two Numbers in an Array	maximum-xor-of-two-numbers-in-an-array	Medium	{Array,"Hash Table","Bit Manipulation",Trie}
422	Valid Word Square	valid-word-square	Easy	{Array,Matrix}
423	Reconstruct Original Digits from English	reconstruct-original-digits-from-english	Medium	{"Hash Table",Math,String}
424	Longest Repeating Character Replacement	longest-repeating-character-replacement	Medium	{"Hash Table",String,"Sliding Window"}
425	Word Squares	word-squares	Hard	{Array,String,Backtracking,Trie}
426	Convert Binary Search Tree to Sorted Doubly Linked List	convert-binary-search-tree-to-sorted-doubly-linked-list	Medium	{"Linked List",Stack,Tree,"Depth-First Search","Binary Search Tree","Binary Tree","Doubly-Linked List"}
427	Construct Quad Tree	construct-quad-tree	Medium	{Array,"Divide and Conquer",Tree,Matrix}
428	Serialize and Deserialize N-ary Tree	serialize-and-deserialize-n-ary-tree	Hard	{String,Tree,"Depth-First Search","Breadth-First Search"}
429	N-ary Tree Level Order Traversal	n-ary-tree-level-order-traversal	Medium	{Tree,"Breadth-First Search"}
430	Flatten a Multilevel Doubly Linked List	flatten-a-multilevel-doubly-linked-list	Medium	{"Linked List","Depth-First Search","Doubly-Linked List"}
431	Encode N-ary Tree to Binary Tree	encode-n-ary-tree-to-binary-tree	Hard	{Tree,"Depth-First Search","Breadth-First Search",Design,"Binary Tree"}
432	All O`one Data Structure	all-oone-data-structure	Hard	{"Hash Table","Linked List",Design,"Doubly-Linked List"}
433	Minimum Genetic Mutation	minimum-genetic-mutation	Medium	{"Hash Table",String,"Breadth-First Search"}
434	Number of Segments in a String	number-of-segments-in-a-string	Easy	{String}
435	Non-overlapping Intervals	non-overlapping-intervals	Medium	{Array,"Dynamic Programming",Greedy,Sorting}
436	Find Right Interval	find-right-interval	Medium	{Array,"Binary Search",Sorting}
437	Path Sum III	path-sum-iii	Medium	{Tree,"Depth-First Search","Binary Tree"}
438	Find All Anagrams in a String	find-all-anagrams-in-a-string	Medium	{"Hash Table",String,"Sliding Window"}
439	Ternary Expression Parser	ternary-expression-parser	Medium	{String,Stack,Recursion}
440	K-th Smallest in Lexicographical Order	k-th-smallest-in-lexicographical-order	Hard	{Trie}
441	Arranging Coins	arranging-coins	Easy	{Math,"Binary Search"}
442	Find All Duplicates in an Array	find-all-duplicates-in-an-array	Medium	{Array,"Hash Table",Sorting}
443	String Compression	string-compression	Medium	{"Two Pointers",String}
444	Sequence Reconstruction	sequence-reconstruction	Medium	{Array,"Graph Theory","Topological Sort"}
445	Add Two Numbers II	add-two-numbers-ii	Medium	{"Linked List",Math,Stack}
446	Arithmetic Slices II - Subsequence	arithmetic-slices-ii-subsequence	Hard	{Array,"Dynamic Programming"}
447	Number of Boomerangs	number-of-boomerangs	Medium	{Array,"Hash Table",Math}
448	Find All Numbers Disappeared in an Array	find-all-numbers-disappeared-in-an-array	Easy	{Array,"Hash Table"}
449	Serialize and Deserialize BST	serialize-and-deserialize-bst	Medium	{String,Tree,"Depth-First Search","Breadth-First Search",Design,"Binary Search Tree","Binary Tree"}
450	Delete Node in a BST	delete-node-in-a-bst	Medium	{Tree,"Binary Search Tree","Binary Tree"}
451	Sort Characters By Frequency	sort-characters-by-frequency	Medium	{"Hash Table",String,Sorting,"Heap (Priority Queue)","Bucket Sort",Counting}
452	Minimum Number of Arrows to Burst Balloons	minimum-number-of-arrows-to-burst-balloons	Medium	{Array,Greedy,Sorting}
453	Minimum Moves to Equal Array Elements	minimum-moves-to-equal-array-elements	Medium	{Array,Math}
454	4Sum II	4sum-ii	Medium	{Array,"Hash Table"}
455	Assign Cookies	assign-cookies	Easy	{Array,"Two Pointers",Greedy,Sorting}
456	132 Pattern	132-pattern	Medium	{Array,"Binary Search",Stack,"Monotonic Stack","Ordered Set"}
457	Circular Array Loop	circular-array-loop	Medium	{Array,"Hash Table","Two Pointers"}
458	Poor Pigs	poor-pigs	Hard	{Math,"Dynamic Programming",Combinatorics}
459	Repeated Substring Pattern	repeated-substring-pattern	Easy	{String,"String Matching"}
460	LFU Cache	lfu-cache	Hard	{"Hash Table","Linked List",Design,"Doubly-Linked List"}
461	Hamming Distance	hamming-distance	Easy	{"Bit Manipulation"}
462	Minimum Moves to Equal Array Elements II	minimum-moves-to-equal-array-elements-ii	Medium	{Array,Math,Sorting}
463	Island Perimeter	island-perimeter	Easy	{Array,"Depth-First Search","Breadth-First Search",Matrix}
464	Can I Win	can-i-win	Medium	{Math,"Dynamic Programming","Bit Manipulation",Memoization,"Game Theory",Bitmask}
465	Optimal Account Balancing	optimal-account-balancing	Hard	{Array,"Dynamic Programming",Backtracking,"Bit Manipulation",Bitmask}
466	Count The Repetitions	count-the-repetitions	Hard	{"Two Pointers",String,"Dynamic Programming"}
467	Unique Substrings in Wraparound String	unique-substrings-in-wraparound-string	Medium	{String,"Dynamic Programming"}
468	Validate IP Address	validate-ip-address	Medium	{String}
469	Convex Polygon	convex-polygon	Medium	{Array,Math,Geometry}
470	Implement Rand10() Using Rand7()	implement-rand10-using-rand7	Medium	{Math,"Rejection Sampling",Randomized,"Probability and Statistics"}
471	Encode String with Shortest Length	encode-string-with-shortest-length	Hard	{String,"Dynamic Programming"}
472	Concatenated Words	concatenated-words	Hard	{Array,String,"Dynamic Programming","Depth-First Search",Trie,Sorting}
473	Matchsticks to Square	matchsticks-to-square	Medium	{Array,"Dynamic Programming",Backtracking,"Bit Manipulation",Bitmask}
474	Ones and Zeroes	ones-and-zeroes	Medium	{Array,String,"Dynamic Programming"}
475	Heaters	heaters	Medium	{Array,"Two Pointers","Binary Search",Sorting}
476	Number Complement	number-complement	Easy	{"Bit Manipulation"}
477	Total Hamming Distance	total-hamming-distance	Medium	{Array,Math,"Bit Manipulation"}
478	Generate Random Point in a Circle	generate-random-point-in-a-circle	Medium	{Math,Geometry,"Rejection Sampling",Randomized}
479	Largest Palindrome Product	largest-palindrome-product	Hard	{Math,Enumeration}
480	Sliding Window Median	sliding-window-median	Hard	{Array,"Hash Table","Sliding Window","Heap (Priority Queue)"}
481	Magical String	magical-string	Medium	{"Two Pointers",String}
482	License Key Formatting	license-key-formatting	Easy	{String}
483	Smallest Good Base	smallest-good-base	Hard	{Math,"Binary Search"}
484	Find Permutation	find-permutation	Medium	{Array,String,Stack,Greedy}
485	Max Consecutive Ones	max-consecutive-ones	Easy	{Array}
486	Predict the Winner	predict-the-winner	Medium	{Array,Math,"Dynamic Programming",Recursion,"Game Theory"}
487	Max Consecutive Ones II	max-consecutive-ones-ii	Medium	{Array,"Dynamic Programming","Sliding Window"}
488	Zuma Game	zuma-game	Hard	{String,"Dynamic Programming",Stack,"Breadth-First Search",Memoization}
489	Robot Room Cleaner	robot-room-cleaner	Hard	{Backtracking,Interactive}
490	The Maze	the-maze	Medium	{Array,"Depth-First Search","Breadth-First Search",Matrix}
491	Non-decreasing Subsequences	non-decreasing-subsequences	Medium	{Array,"Hash Table",Backtracking,"Bit Manipulation"}
492	Construct the Rectangle	construct-the-rectangle	Easy	{Math}
493	Reverse Pairs	reverse-pairs	Hard	{Array,"Binary Search","Divide and Conquer","Binary Indexed Tree","Segment Tree","Merge Sort","Ordered Set"}
494	Target Sum	target-sum	Medium	{Array,"Dynamic Programming",Backtracking}
495	Teemo Attacking	teemo-attacking	Easy	{Array,Simulation}
496	Next Greater Element I	next-greater-element-i	Easy	{Array,"Hash Table",Stack,"Monotonic Stack"}
497	Random Point in Non-overlapping Rectangles	random-point-in-non-overlapping-rectangles	Medium	{Array,Math,"Binary Search","Reservoir Sampling","Prefix Sum","Ordered Set",Randomized}
498	Diagonal Traverse	diagonal-traverse	Medium	{Array,Matrix,Simulation}
499	The Maze III	the-maze-iii	Hard	{Array,String,"Depth-First Search","Breadth-First Search","Graph Theory","Heap (Priority Queue)",Matrix,"Shortest Path"}
500	Keyboard Row	keyboard-row	Easy	{Array,"Hash Table",String}
501	Find Mode in Binary Search Tree	find-mode-in-binary-search-tree	Easy	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
502	IPO	ipo	Hard	{Array,Greedy,Sorting,"Heap (Priority Queue)"}
503	Next Greater Element II	next-greater-element-ii	Medium	{Array,Stack,"Monotonic Stack"}
504	Base 7	base-7	Easy	{Math,String}
505	The Maze II	the-maze-ii	Medium	{Array,"Depth-First Search","Breadth-First Search","Graph Theory","Heap (Priority Queue)",Matrix,"Shortest Path"}
506	Relative Ranks	relative-ranks	Easy	{Array,Sorting,"Heap (Priority Queue)"}
507	Perfect Number	perfect-number	Easy	{Math}
508	Most Frequent Subtree Sum	most-frequent-subtree-sum	Medium	{"Hash Table",Tree,"Depth-First Search","Binary Tree"}
509	Fibonacci Number	fibonacci-number	Easy	{Math,"Dynamic Programming",Recursion,Memoization}
510	Inorder Successor in BST II	inorder-successor-in-bst-ii	Medium	{Tree,"Binary Search Tree","Binary Tree"}
511	Game Play Analysis I	game-play-analysis-i	Easy	{Database}
512	Game Play Analysis II	game-play-analysis-ii	Easy	{Database}
513	Find Bottom Left Tree Value	find-bottom-left-tree-value	Medium	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
514	Freedom Trail	freedom-trail	Hard	{String,"Dynamic Programming","Depth-First Search","Breadth-First Search"}
515	Find Largest Value in Each Tree Row	find-largest-value-in-each-tree-row	Medium	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
516	Longest Palindromic Subsequence	longest-palindromic-subsequence	Medium	{String,"Dynamic Programming"}
517	Super Washing Machines	super-washing-machines	Hard	{Array,Greedy}
519	Random Flip Matrix	random-flip-matrix	Medium	{"Hash Table",Math,"Reservoir Sampling",Randomized}
520	Detect Capital	detect-capital	Easy	{String}
521	Longest Uncommon Subsequence I	longest-uncommon-subsequence-i	Easy	{String}
522	Longest Uncommon Subsequence II	longest-uncommon-subsequence-ii	Medium	{Array,"Hash Table","Two Pointers",String,Sorting}
523	Continuous Subarray Sum	continuous-subarray-sum	Medium	{Array,"Hash Table",Math,"Prefix Sum"}
524	Longest Word in Dictionary through Deleting	longest-word-in-dictionary-through-deleting	Medium	{Array,"Two Pointers",String,Sorting}
525	Contiguous Array	contiguous-array	Medium	{Array,"Hash Table","Prefix Sum"}
526	Beautiful Arrangement	beautiful-arrangement	Medium	{Array,"Dynamic Programming",Backtracking,"Bit Manipulation",Bitmask}
527	Word Abbreviation	word-abbreviation	Hard	{Array,String,Greedy,Trie,Sorting}
528	Random Pick with Weight	random-pick-with-weight	Medium	{Array,Math,"Binary Search","Prefix Sum",Randomized}
529	Minesweeper	minesweeper	Medium	{Array,"Depth-First Search","Breadth-First Search",Matrix}
530	Minimum Absolute Difference in BST	minimum-absolute-difference-in-bst	Easy	{Tree,"Depth-First Search","Breadth-First Search","Binary Search Tree","Binary Tree"}
531	Lonely Pixel I	lonely-pixel-i	Medium	{Array,"Hash Table",Matrix}
532	K-diff Pairs in an Array	k-diff-pairs-in-an-array	Medium	{Array,"Hash Table","Two Pointers","Binary Search",Sorting}
533	Lonely Pixel II	lonely-pixel-ii	Medium	{Array,"Hash Table",Matrix}
534	Game Play Analysis III	game-play-analysis-iii	Medium	{Database}
535	Encode and Decode TinyURL	encode-and-decode-tinyurl	Medium	{"Hash Table",String,Design,"Hash Function"}
536	Construct Binary Tree from String	construct-binary-tree-from-string	Medium	{String,Stack,Tree,"Depth-First Search","Binary Tree"}
537	Complex Number Multiplication	complex-number-multiplication	Medium	{Math,String,Simulation}
538	Convert BST to Greater Tree	convert-bst-to-greater-tree	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
539	Minimum Time Difference	minimum-time-difference	Medium	{Array,Math,String,Sorting}
540	Single Element in a Sorted Array	single-element-in-a-sorted-array	Medium	{Array,"Binary Search"}
541	Reverse String II	reverse-string-ii	Easy	{"Two Pointers",String}
542	01 Matrix	01-matrix	Medium	{Array,"Dynamic Programming","Breadth-First Search",Matrix}
543	Diameter of Binary Tree	diameter-of-binary-tree	Easy	{Tree,"Depth-First Search","Binary Tree"}
544	Output Contest Matches	output-contest-matches	Medium	{String,Recursion,Simulation}
545	Boundary of Binary Tree	boundary-of-binary-tree	Medium	{Tree,"Depth-First Search","Binary Tree"}
546	Remove Boxes	remove-boxes	Hard	{Array,"Dynamic Programming",Memoization}
547	Number of Provinces	number-of-provinces	Medium	{"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
548	Split Array with Equal Sum	split-array-with-equal-sum	Hard	{Array,"Hash Table","Prefix Sum"}
549	Binary Tree Longest Consecutive Sequence II	binary-tree-longest-consecutive-sequence-ii	Medium	{Tree,"Depth-First Search","Binary Tree"}
550	Game Play Analysis IV	game-play-analysis-iv	Medium	{Database}
551	Student Attendance Record I	student-attendance-record-i	Easy	{String}
552	Student Attendance Record II	student-attendance-record-ii	Hard	{"Dynamic Programming"}
553	Optimal Division	optimal-division	Medium	{Array,Math,"Dynamic Programming"}
554	Brick Wall	brick-wall	Medium	{Array,"Hash Table"}
555	Split Concatenated Strings	split-concatenated-strings	Medium	{Array,String,Greedy}
556	Next Greater Element III	next-greater-element-iii	Medium	{Math,"Two Pointers",String}
557	Reverse Words in a String III	reverse-words-in-a-string-iii	Easy	{"Two Pointers",String}
558	Logical OR of Two Binary Grids Represented as Quad-Trees	logical-or-of-two-binary-grids-represented-as-quad-trees	Medium	{"Divide and Conquer",Tree}
559	Maximum Depth of N-ary Tree	maximum-depth-of-n-ary-tree	Easy	{Tree,"Depth-First Search","Breadth-First Search"}
560	Subarray Sum Equals K	subarray-sum-equals-k	Medium	{Array,"Hash Table","Prefix Sum"}
561	Array Partition	array-partition	Easy	{Array,Greedy,Sorting,"Counting Sort"}
562	Longest Line of Consecutive One in Matrix	longest-line-of-consecutive-one-in-matrix	Medium	{Array,"Dynamic Programming",Matrix}
563	Binary Tree Tilt	binary-tree-tilt	Easy	{Tree,"Depth-First Search","Binary Tree"}
564	Find the Closest Palindrome	find-the-closest-palindrome	Hard	{Math,String}
565	Array Nesting	array-nesting	Medium	{Array,"Depth-First Search"}
566	Reshape the Matrix	reshape-the-matrix	Easy	{Array,Matrix,Simulation}
567	Permutation in String	permutation-in-string	Medium	{"Hash Table","Two Pointers",String,"Sliding Window"}
568	Maximum Vacation Days	maximum-vacation-days	Hard	{Array,"Dynamic Programming",Matrix}
569	Median Employee Salary	median-employee-salary	Hard	{Database}
570	Managers with at Least 5 Direct Reports	managers-with-at-least-5-direct-reports	Medium	{Database}
571	Find Median Given Frequency of Numbers	find-median-given-frequency-of-numbers	Hard	{Database}
572	Subtree of Another Tree	subtree-of-another-tree	Easy	{Tree,"Depth-First Search","String Matching","Binary Tree","Hash Function"}
573	Squirrel Simulation	squirrel-simulation	Medium	{Array,Math}
574	Winning Candidate	winning-candidate	Medium	{Database}
575	Distribute Candies	distribute-candies	Easy	{Array,"Hash Table"}
576	Out of Boundary Paths	out-of-boundary-paths	Medium	{"Dynamic Programming"}
577	Employee Bonus	employee-bonus	Easy	{Database}
578	Get Highest Answer Rate Question	get-highest-answer-rate-question	Medium	{Database}
579	Find Cumulative Salary of an Employee	find-cumulative-salary-of-an-employee	Hard	{Database}
580	Count Student Number in Departments	count-student-number-in-departments	Medium	{Database}
581	Shortest Unsorted Continuous Subarray	shortest-unsorted-continuous-subarray	Medium	{Array,"Two Pointers",Stack,Greedy,Sorting,"Monotonic Stack"}
582	Kill Process	kill-process	Medium	{Array,"Hash Table",Tree,"Depth-First Search","Breadth-First Search"}
583	Delete Operation for Two Strings	delete-operation-for-two-strings	Medium	{String,"Dynamic Programming"}
584	Find Customer Referee	find-customer-referee	Easy	{Database}
585	Investments in 2016	investments-in-2016	Medium	{Database}
586	Customer Placing the Largest Number of Orders	customer-placing-the-largest-number-of-orders	Easy	{Database}
587	Erect the Fence	erect-the-fence	Hard	{Array,Math,Geometry}
588	Design In-Memory File System	design-in-memory-file-system	Hard	{"Hash Table",String,Design,Trie,Sorting}
589	N-ary Tree Preorder Traversal	n-ary-tree-preorder-traversal	Easy	{Stack,Tree,"Depth-First Search"}
590	N-ary Tree Postorder Traversal	n-ary-tree-postorder-traversal	Easy	{Stack,Tree,"Depth-First Search"}
591	Tag Validator	tag-validator	Hard	{String,Stack}
592	Fraction Addition and Subtraction	fraction-addition-and-subtraction	Medium	{Math,String,Simulation}
593	Valid Square	valid-square	Medium	{Math,Geometry}
594	Longest Harmonious Subsequence	longest-harmonious-subsequence	Easy	{Array,"Hash Table","Sliding Window",Sorting,Counting}
595	Big Countries	big-countries	Easy	{Database}
596	Classes With at Least 5 Students	classes-with-at-least-5-students	Easy	{Database}
597	Friend Requests I: Overall Acceptance Rate	friend-requests-i-overall-acceptance-rate	Easy	{Database}
598	Range Addition II	range-addition-ii	Easy	{Array,Math}
599	Minimum Index Sum of Two Lists	minimum-index-sum-of-two-lists	Easy	{Array,"Hash Table",String}
600	Non-negative Integers without Consecutive Ones	non-negative-integers-without-consecutive-ones	Hard	{"Dynamic Programming"}
601	Human Traffic of Stadium	human-traffic-of-stadium	Hard	{Database}
602	Friend Requests II: Who Has the Most Friends	friend-requests-ii-who-has-the-most-friends	Medium	{Database}
603	Consecutive Available Seats	consecutive-available-seats	Easy	{Database}
604	Design Compressed String Iterator	design-compressed-string-iterator	Easy	{Array,String,Design,Iterator}
605	Can Place Flowers	can-place-flowers	Easy	{Array,Greedy}
606	Construct String from Binary Tree	construct-string-from-binary-tree	Medium	{String,Tree,"Depth-First Search","Binary Tree"}
607	Sales Person	sales-person	Easy	{Database}
608	Tree Node	tree-node	Medium	{Database}
609	Find Duplicate File in System	find-duplicate-file-in-system	Medium	{Array,"Hash Table",String}
610	Triangle Judgement	triangle-judgement	Easy	{Database}
611	Valid Triangle Number	valid-triangle-number	Medium	{Array,"Two Pointers","Binary Search",Greedy,Sorting}
612	Shortest Distance in a Plane	shortest-distance-in-a-plane	Medium	{Database}
613	Shortest Distance in a Line	shortest-distance-in-a-line	Easy	{Database}
614	Second Degree Follower	second-degree-follower	Medium	{Database}
615	Average Salary: Departments VS Company	average-salary-departments-vs-company	Hard	{Database}
616	Add Bold Tag in String	add-bold-tag-in-string	Medium	{Array,"Hash Table",String,Trie,"String Matching"}
617	Merge Two Binary Trees	merge-two-binary-trees	Easy	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
618	Students Report By Geography	students-report-by-geography	Hard	{Database}
619	Biggest Single Number	biggest-single-number	Easy	{Database}
620	Not Boring Movies	not-boring-movies	Easy	{Database}
621	Task Scheduler	task-scheduler	Medium	{Array,"Hash Table",Greedy,Sorting,"Heap (Priority Queue)",Counting}
622	Design Circular Queue	design-circular-queue	Medium	{Array,"Linked List",Design,Queue}
623	Add One Row to Tree	add-one-row-to-tree	Medium	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
624	Maximum Distance in Arrays	maximum-distance-in-arrays	Medium	{Array,Greedy}
625	Minimum Factorization	minimum-factorization	Medium	{Math,Greedy}
626	Exchange Seats	exchange-seats	Medium	{Database}
628	Maximum Product of Three Numbers	maximum-product-of-three-numbers	Easy	{Array,Math,Sorting}
629	K Inverse Pairs Array	k-inverse-pairs-array	Hard	{"Dynamic Programming"}
630	Course Schedule III	course-schedule-iii	Hard	{Array,Greedy,Sorting,"Heap (Priority Queue)"}
631	Design Excel Sum Formula	design-excel-sum-formula	Hard	{Array,"Hash Table",String,"Graph Theory",Design,"Topological Sort",Matrix}
632	Smallest Range Covering Elements from K Lists	smallest-range-covering-elements-from-k-lists	Hard	{Array,"Hash Table",Greedy,"Sliding Window",Sorting,"Heap (Priority Queue)"}
633	Sum of Square Numbers	sum-of-square-numbers	Medium	{Math,"Two Pointers","Binary Search"}
634	Find the Derangement of An Array	find-the-derangement-of-an-array	Medium	{Math,"Dynamic Programming",Combinatorics}
635	Design Log Storage System	design-log-storage-system	Medium	{"Hash Table",String,Design,"Ordered Set"}
636	Exclusive Time of Functions	exclusive-time-of-functions	Medium	{Array,Stack}
637	Average of Levels in Binary Tree	average-of-levels-in-binary-tree	Easy	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
638	Shopping Offers	shopping-offers	Medium	{Array,"Dynamic Programming",Backtracking,"Bit Manipulation",Memoization,Bitmask}
639	Decode Ways II	decode-ways-ii	Hard	{String,"Dynamic Programming"}
640	Solve the Equation	solve-the-equation	Medium	{Math,String,Simulation}
641	Design Circular Deque	design-circular-deque	Medium	{Array,"Linked List",Design,Queue}
642	Design Search Autocomplete System	design-search-autocomplete-system	Hard	{String,"Depth-First Search",Design,Trie,Sorting,"Heap (Priority Queue)","Data Stream"}
643	Maximum Average Subarray I	maximum-average-subarray-i	Easy	{Array,"Sliding Window"}
644	Maximum Average Subarray II	maximum-average-subarray-ii	Hard	{Array,"Binary Search","Prefix Sum"}
645	Set Mismatch	set-mismatch	Easy	{Array,"Hash Table","Bit Manipulation",Sorting}
646	Maximum Length of Pair Chain	maximum-length-of-pair-chain	Medium	{Array,"Dynamic Programming",Greedy,Sorting}
647	Palindromic Substrings	palindromic-substrings	Medium	{"Two Pointers",String,"Dynamic Programming"}
648	Replace Words	replace-words	Medium	{Array,"Hash Table",String,Trie}
649	Dota2 Senate	dota2-senate	Medium	{String,Greedy,Queue}
650	2 Keys Keyboard	2-keys-keyboard	Medium	{Math,"Dynamic Programming"}
651	4 Keys Keyboard	4-keys-keyboard	Medium	{Math,"Dynamic Programming"}
652	Find Duplicate Subtrees	find-duplicate-subtrees	Medium	{"Hash Table",Tree,"Depth-First Search","Binary Tree"}
653	Two Sum IV - Input is a BST	two-sum-iv-input-is-a-bst	Easy	{"Hash Table","Two Pointers",Tree,"Depth-First Search","Breadth-First Search","Binary Search Tree","Binary Tree"}
654	Maximum Binary Tree	maximum-binary-tree	Medium	{Array,"Divide and Conquer",Stack,Tree,"Monotonic Stack","Binary Tree"}
655	Print Binary Tree	print-binary-tree	Medium	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
656	Coin Path	coin-path	Hard	{Array,"Dynamic Programming"}
657	Robot Return to Origin	robot-return-to-origin	Easy	{String,Simulation}
658	Find K Closest Elements	find-k-closest-elements	Medium	{Array,"Two Pointers","Binary Search","Sliding Window",Sorting,"Heap (Priority Queue)"}
659	Split Array into Consecutive Subsequences	split-array-into-consecutive-subsequences	Medium	{Array,"Hash Table",Greedy,"Heap (Priority Queue)"}
660	Remove 9	remove-9	Hard	{Math}
661	Image Smoother	image-smoother	Easy	{Array,Matrix}
662	Maximum Width of Binary Tree	maximum-width-of-binary-tree	Medium	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
663	Equal Tree Partition	equal-tree-partition	Medium	{Tree,"Depth-First Search","Binary Tree"}
664	Strange Printer	strange-printer	Hard	{String,"Dynamic Programming"}
665	Non-decreasing Array	non-decreasing-array	Medium	{Array}
666	Path Sum IV	path-sum-iv	Medium	{Array,"Hash Table",Tree,"Depth-First Search","Binary Tree"}
667	Beautiful Arrangement II	beautiful-arrangement-ii	Medium	{Array,Math}
668	Kth Smallest Number in Multiplication Table	kth-smallest-number-in-multiplication-table	Hard	{Math,"Binary Search"}
669	Trim a Binary Search Tree	trim-a-binary-search-tree	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
670	Maximum Swap	maximum-swap	Medium	{Math,Greedy}
671	Second Minimum Node In a Binary Tree	second-minimum-node-in-a-binary-tree	Easy	{Tree,"Depth-First Search","Binary Tree"}
672	Bulb Switcher II	bulb-switcher-ii	Medium	{Math,"Bit Manipulation","Depth-First Search","Breadth-First Search"}
673	Number of Longest Increasing Subsequence	number-of-longest-increasing-subsequence	Medium	{Array,"Dynamic Programming","Binary Indexed Tree","Segment Tree"}
674	Longest Continuous Increasing Subsequence	longest-continuous-increasing-subsequence	Easy	{Array}
675	Cut Off Trees for Golf Event	cut-off-trees-for-golf-event	Hard	{Array,"Breadth-First Search","Heap (Priority Queue)",Matrix}
676	Implement Magic Dictionary	implement-magic-dictionary	Medium	{"Hash Table",String,"Depth-First Search",Design,Trie}
677	Map Sum Pairs	map-sum-pairs	Medium	{"Hash Table",String,Design,Trie}
678	Valid Parenthesis String	valid-parenthesis-string	Medium	{String,"Dynamic Programming",Stack,Greedy}
679	24 Game	24-game	Hard	{Array,Math,Backtracking}
680	Valid Palindrome II	valid-palindrome-ii	Easy	{"Two Pointers",String,Greedy}
681	Next Closest Time	next-closest-time	Medium	{"Hash Table",String,Backtracking,Enumeration}
682	Baseball Game	baseball-game	Easy	{Array,Stack,Simulation}
683	K Empty Slots	k-empty-slots	Hard	{Array,"Binary Indexed Tree","Segment Tree",Queue,"Sliding Window","Heap (Priority Queue)","Ordered Set","Monotonic Queue"}
684	Redundant Connection	redundant-connection	Medium	{"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
685	Redundant Connection II	redundant-connection-ii	Hard	{"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
686	Repeated String Match	repeated-string-match	Medium	{String,"String Matching"}
687	Longest Univalue Path	longest-univalue-path	Medium	{Tree,"Depth-First Search","Binary Tree"}
688	Knight Probability in Chessboard	knight-probability-in-chessboard	Medium	{"Dynamic Programming"}
689	Maximum Sum of 3 Non-Overlapping Subarrays	maximum-sum-of-3-non-overlapping-subarrays	Hard	{Array,"Dynamic Programming","Sliding Window","Prefix Sum"}
690	Employee Importance	employee-importance	Medium	{Array,"Hash Table",Tree,"Depth-First Search","Breadth-First Search"}
691	Stickers to Spell Word	stickers-to-spell-word	Hard	{Array,"Hash Table",String,"Dynamic Programming",Backtracking,"Bit Manipulation",Memoization,Bitmask}
692	Top K Frequent Words	top-k-frequent-words	Medium	{Array,"Hash Table",String,Trie,Sorting,"Heap (Priority Queue)","Bucket Sort",Counting}
693	Binary Number with Alternating Bits	binary-number-with-alternating-bits	Easy	{"Bit Manipulation"}
694	Number of Distinct Islands	number-of-distinct-islands	Medium	{Array,"Hash Table","Depth-First Search","Breadth-First Search",Union-Find,Sorting,Matrix,"Hash Function"}
695	Max Area of Island	max-area-of-island	Medium	{Array,"Depth-First Search","Breadth-First Search",Union-Find,Matrix}
696	Count Binary Substrings	count-binary-substrings	Easy	{"Two Pointers",String}
697	Degree of an Array	degree-of-an-array	Easy	{Array,"Hash Table"}
698	Partition to K Equal Sum Subsets	partition-to-k-equal-sum-subsets	Medium	{Array,"Dynamic Programming",Backtracking,"Bit Manipulation",Memoization,Bitmask}
699	Falling Squares	falling-squares	Hard	{Array,"Segment Tree","Ordered Set"}
700	Search in a Binary Search Tree	search-in-a-binary-search-tree	Easy	{Tree,"Binary Search Tree","Binary Tree"}
701	Insert into a Binary Search Tree	insert-into-a-binary-search-tree	Medium	{Tree,"Binary Search Tree","Binary Tree"}
702	Search in a Sorted Array of Unknown Size	search-in-a-sorted-array-of-unknown-size	Medium	{Array,"Binary Search",Interactive}
703	Kth Largest Element in a Stream	kth-largest-element-in-a-stream	Easy	{Tree,Design,"Binary Search Tree","Heap (Priority Queue)","Binary Tree","Data Stream"}
704	Binary Search	binary-search	Easy	{Array,"Binary Search"}
705	Design HashSet	design-hashset	Easy	{Array,"Hash Table","Linked List",Design,"Hash Function"}
706	Design HashMap	design-hashmap	Easy	{Array,"Hash Table","Linked List",Design,"Hash Function"}
707	Design Linked List	design-linked-list	Medium	{"Linked List",Design}
708	Insert into a Sorted Circular Linked List	insert-into-a-sorted-circular-linked-list	Medium	{"Linked List"}
709	To Lower Case	to-lower-case	Easy	{String}
710	Random Pick with Blacklist	random-pick-with-blacklist	Hard	{Array,"Hash Table",Math,"Binary Search",Sorting,Randomized}
711	Number of Distinct Islands II	number-of-distinct-islands-ii	Hard	{Array,"Hash Table","Depth-First Search","Breadth-First Search",Union-Find,Sorting,Matrix,"Hash Function"}
712	Minimum ASCII Delete Sum for Two Strings	minimum-ascii-delete-sum-for-two-strings	Medium	{String,"Dynamic Programming"}
713	Subarray Product Less Than K	subarray-product-less-than-k	Medium	{Array,"Binary Search","Sliding Window","Prefix Sum"}
714	Best Time to Buy and Sell Stock with Transaction Fee	best-time-to-buy-and-sell-stock-with-transaction-fee	Medium	{Array,"Dynamic Programming",Greedy}
715	Range Module	range-module	Hard	{Design,"Segment Tree","Ordered Set"}
716	Max Stack	max-stack	Hard	{"Linked List",Stack,Design,"Doubly-Linked List","Ordered Set"}
717	1-bit and 2-bit Characters	1-bit-and-2-bit-characters	Easy	{Array}
718	Maximum Length of Repeated Subarray	maximum-length-of-repeated-subarray	Medium	{Array,"Binary Search","Dynamic Programming","Sliding Window","Rolling Hash","Hash Function"}
719	Find K-th Smallest Pair Distance	find-k-th-smallest-pair-distance	Hard	{Array,"Two Pointers","Binary Search",Sorting}
720	Longest Word in Dictionary	longest-word-in-dictionary	Medium	{Array,"Hash Table",String,Trie,Sorting}
721	Accounts Merge	accounts-merge	Medium	{Array,"Hash Table",String,"Depth-First Search","Breadth-First Search",Union-Find,Sorting}
722	Remove Comments	remove-comments	Medium	{Array,String}
723	Candy Crush	candy-crush	Medium	{Array,"Two Pointers",Matrix,Simulation}
724	Find Pivot Index	find-pivot-index	Easy	{Array,"Prefix Sum"}
725	Split Linked List in Parts	split-linked-list-in-parts	Medium	{"Linked List"}
726	Number of Atoms	number-of-atoms	Hard	{"Hash Table",String,Stack,Sorting}
727	Minimum Window Subsequence	minimum-window-subsequence	Hard	{String,"Dynamic Programming","Sliding Window"}
728	Self Dividing Numbers	self-dividing-numbers	Easy	{Math}
729	My Calendar I	my-calendar-i	Medium	{Array,"Binary Search",Design,"Segment Tree","Ordered Set"}
730	Count Different Palindromic Subsequences	count-different-palindromic-subsequences	Hard	{String,"Dynamic Programming"}
731	My Calendar II	my-calendar-ii	Medium	{Array,"Binary Search",Design,"Segment Tree","Prefix Sum","Ordered Set"}
732	My Calendar III	my-calendar-iii	Hard	{"Binary Search",Design,"Segment Tree","Prefix Sum","Ordered Set"}
733	Flood Fill	flood-fill	Easy	{Array,"Depth-First Search","Breadth-First Search",Matrix}
734	Sentence Similarity	sentence-similarity	Easy	{Array,"Hash Table",String}
735	Asteroid Collision	asteroid-collision	Medium	{Array,Stack,Simulation}
736	Parse Lisp Expression	parse-lisp-expression	Hard	{"Hash Table",String,Stack,Recursion}
737	Sentence Similarity II	sentence-similarity-ii	Medium	{Array,"Hash Table",String,"Depth-First Search","Breadth-First Search",Union-Find}
738	Monotone Increasing Digits	monotone-increasing-digits	Medium	{Math,Greedy}
739	Daily Temperatures	daily-temperatures	Medium	{Array,Stack,"Monotonic Stack"}
740	Delete and Earn	delete-and-earn	Medium	{Array,"Hash Table","Dynamic Programming"}
741	Cherry Pickup	cherry-pickup	Hard	{Array,"Dynamic Programming",Matrix}
742	Closest Leaf in a Binary Tree	closest-leaf-in-a-binary-tree	Medium	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
743	Network Delay Time	network-delay-time	Medium	{"Depth-First Search","Breadth-First Search","Graph Theory","Heap (Priority Queue)","Shortest Path"}
744	Find Smallest Letter Greater Than Target	find-smallest-letter-greater-than-target	Easy	{Array,"Binary Search"}
745	Prefix and Suffix Search	prefix-and-suffix-search	Hard	{Array,"Hash Table",String,Design,Trie}
746	Min Cost Climbing Stairs	min-cost-climbing-stairs	Easy	{Array,"Dynamic Programming"}
747	Largest Number At Least Twice of Others	largest-number-at-least-twice-of-others	Easy	{Array,Sorting}
748	Shortest Completing Word	shortest-completing-word	Easy	{Array,"Hash Table",String}
749	Contain Virus	contain-virus	Hard	{Array,"Depth-First Search","Breadth-First Search",Matrix,Simulation}
750	Number Of Corner Rectangles	number-of-corner-rectangles	Medium	{Array,Math,"Dynamic Programming",Matrix}
751	IP to CIDR	ip-to-cidr	Medium	{String,"Bit Manipulation"}
752	Open the Lock	open-the-lock	Medium	{Array,"Hash Table",String,"Breadth-First Search"}
753	Cracking the Safe	cracking-the-safe	Hard	{String,"Depth-First Search","Graph Theory","Eulerian Circuit"}
754	Reach a Number	reach-a-number	Medium	{Math,"Binary Search"}
755	Pour Water	pour-water	Medium	{Array,Simulation}
756	Pyramid Transition Matrix	pyramid-transition-matrix	Medium	{"Hash Table",String,Backtracking,"Bit Manipulation"}
757	Set Intersection Size At Least Two	set-intersection-size-at-least-two	Hard	{Array,Greedy,Sorting}
758	Bold Words in String	bold-words-in-string	Medium	{Array,"Hash Table",String,Trie,"String Matching"}
759	Employee Free Time	employee-free-time	Hard	{Array,"Sweep Line",Sorting,"Heap (Priority Queue)"}
760	Find Anagram Mappings	find-anagram-mappings	Easy	{Array,"Hash Table"}
761	Special Binary String	special-binary-string	Hard	{String,"Divide and Conquer",Sorting}
762	Prime Number of Set Bits in Binary Representation	prime-number-of-set-bits-in-binary-representation	Easy	{Math,"Bit Manipulation"}
763	Partition Labels	partition-labels	Medium	{"Hash Table","Two Pointers",String,Greedy}
764	Largest Plus Sign	largest-plus-sign	Medium	{Array,"Dynamic Programming"}
765	Couples Holding Hands	couples-holding-hands	Hard	{Greedy,"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
766	Toeplitz Matrix	toeplitz-matrix	Easy	{Array,Matrix}
767	Reorganize String	reorganize-string	Medium	{"Hash Table",String,Greedy,Sorting,"Heap (Priority Queue)",Counting}
768	Max Chunks To Make Sorted II	max-chunks-to-make-sorted-ii	Hard	{Array,Stack,Greedy,Sorting,"Monotonic Stack"}
769	Max Chunks To Make Sorted	max-chunks-to-make-sorted	Medium	{Array,Stack,Greedy,Sorting,"Monotonic Stack"}
770	Basic Calculator IV	basic-calculator-iv	Hard	{"Hash Table",Math,String,Stack,Recursion}
771	Jewels and Stones	jewels-and-stones	Easy	{"Hash Table",String}
772	Basic Calculator III	basic-calculator-iii	Hard	{Math,String,Stack,Recursion}
773	Sliding Puzzle	sliding-puzzle	Hard	{Array,"Dynamic Programming",Backtracking,"Breadth-First Search",Memoization,Matrix}
774	Minimize Max Distance to Gas Station	minimize-max-distance-to-gas-station	Hard	{Array,"Binary Search"}
775	Global and Local Inversions	global-and-local-inversions	Medium	{Array,Math}
776	Split BST	split-bst	Medium	{Tree,"Binary Search Tree",Recursion,"Binary Tree"}
777	Swap Adjacent in LR String	swap-adjacent-in-lr-string	Medium	{"Two Pointers",String}
778	Swim in Rising Water	swim-in-rising-water	Hard	{Array,"Binary Search","Depth-First Search","Breadth-First Search",Union-Find,"Heap (Priority Queue)",Matrix}
779	K-th Symbol in Grammar	k-th-symbol-in-grammar	Medium	{Math,"Bit Manipulation",Recursion}
780	Reaching Points	reaching-points	Hard	{Math}
781	Rabbits in Forest	rabbits-in-forest	Medium	{Array,"Hash Table",Math,Greedy}
782	Transform to Chessboard	transform-to-chessboard	Hard	{Array,Math,"Bit Manipulation",Matrix}
783	Minimum Distance Between BST Nodes	minimum-distance-between-bst-nodes	Easy	{Tree,"Depth-First Search","Breadth-First Search","Binary Search Tree","Binary Tree"}
784	Letter Case Permutation	letter-case-permutation	Medium	{String,Backtracking,"Bit Manipulation"}
785	Is Graph Bipartite?	is-graph-bipartite	Medium	{"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
786	K-th Smallest Prime Fraction	k-th-smallest-prime-fraction	Medium	{Array,"Two Pointers","Binary Search",Sorting,"Heap (Priority Queue)"}
787	Cheapest Flights Within K Stops	cheapest-flights-within-k-stops	Medium	{"Dynamic Programming","Depth-First Search","Breadth-First Search","Graph Theory","Heap (Priority Queue)","Shortest Path"}
788	Rotated Digits	rotated-digits	Medium	{Math,"Dynamic Programming"}
789	Escape The Ghosts	escape-the-ghosts	Medium	{Array,Math}
790	Domino and Tromino Tiling	domino-and-tromino-tiling	Medium	{"Dynamic Programming"}
791	Custom Sort String	custom-sort-string	Medium	{"Hash Table",String,Sorting}
792	Number of Matching Subsequences	number-of-matching-subsequences	Medium	{Array,"Hash Table",String,"Binary Search","Dynamic Programming",Trie,Sorting}
793	Preimage Size of Factorial Zeroes Function	preimage-size-of-factorial-zeroes-function	Hard	{Math,"Binary Search"}
794	Valid Tic-Tac-Toe State	valid-tic-tac-toe-state	Medium	{Array,Matrix}
795	Number of Subarrays with Bounded Maximum	number-of-subarrays-with-bounded-maximum	Medium	{Array,"Two Pointers"}
796	Rotate String	rotate-string	Easy	{String,"String Matching"}
797	All Paths From Source to Target	all-paths-from-source-to-target	Medium	{Backtracking,"Depth-First Search","Breadth-First Search","Graph Theory"}
798	Smallest Rotation with Highest Score	smallest-rotation-with-highest-score	Hard	{Array,"Prefix Sum"}
799	Champagne Tower	champagne-tower	Medium	{"Dynamic Programming"}
800	Similar RGB Color	similar-rgb-color	Easy	{Math,String,Enumeration}
801	Minimum Swaps To Make Sequences Increasing	minimum-swaps-to-make-sequences-increasing	Hard	{Array,"Dynamic Programming"}
802	Find Eventual Safe States	find-eventual-safe-states	Medium	{"Depth-First Search","Breadth-First Search","Graph Theory","Topological Sort"}
803	Bricks Falling When Hit	bricks-falling-when-hit	Hard	{Array,Union-Find,Matrix}
804	Unique Morse Code Words	unique-morse-code-words	Easy	{Array,"Hash Table",String}
805	Split Array With Same Average	split-array-with-same-average	Hard	{Array,"Hash Table",Math,"Dynamic Programming","Bit Manipulation",Bitmask}
806	Number of Lines To Write String	number-of-lines-to-write-string	Easy	{Array,String}
807	Max Increase to Keep City Skyline	max-increase-to-keep-city-skyline	Medium	{Array,Greedy,Matrix}
808	Soup Servings	soup-servings	Medium	{Math,"Dynamic Programming","Probability and Statistics"}
809	Expressive Words	expressive-words	Medium	{Array,"Two Pointers",String}
810	Chalkboard XOR Game	chalkboard-xor-game	Hard	{Array,Math,"Bit Manipulation",Brainteaser,"Game Theory"}
811	Subdomain Visit Count	subdomain-visit-count	Medium	{Array,"Hash Table",String,Counting}
812	Largest Triangle Area	largest-triangle-area	Easy	{Array,Math,Geometry}
813	Largest Sum of Averages	largest-sum-of-averages	Medium	{Array,"Dynamic Programming","Prefix Sum"}
814	Binary Tree Pruning	binary-tree-pruning	Medium	{Tree,"Depth-First Search","Binary Tree"}
815	Bus Routes	bus-routes	Hard	{Array,"Hash Table","Breadth-First Search"}
816	Ambiguous Coordinates	ambiguous-coordinates	Medium	{String,Backtracking,Enumeration}
817	Linked List Components	linked-list-components	Medium	{Array,"Hash Table","Linked List"}
818	Race Car	race-car	Hard	{"Dynamic Programming"}
819	Most Common Word	most-common-word	Easy	{Array,"Hash Table",String,Counting}
820	Short Encoding of Words	short-encoding-of-words	Medium	{Array,"Hash Table",String,Trie}
821	Shortest Distance to a Character	shortest-distance-to-a-character	Easy	{Array,"Two Pointers",String}
822	Card Flipping Game	card-flipping-game	Medium	{Array,"Hash Table"}
823	Binary Trees With Factors	binary-trees-with-factors	Medium	{Array,"Hash Table","Dynamic Programming",Sorting}
824	Goat Latin	goat-latin	Easy	{String}
825	Friends Of Appropriate Ages	friends-of-appropriate-ages	Medium	{Array,"Two Pointers","Binary Search",Sorting}
826	Most Profit Assigning Work	most-profit-assigning-work	Medium	{Array,"Two Pointers","Binary Search",Greedy,Sorting}
827	Making A Large Island	making-a-large-island	Hard	{Array,"Depth-First Search","Breadth-First Search",Union-Find,Matrix}
828	Count Unique Characters of All Substrings of a Given String	count-unique-characters-of-all-substrings-of-a-given-string	Hard	{"Hash Table",String,"Dynamic Programming"}
829	Consecutive Numbers Sum	consecutive-numbers-sum	Hard	{Math,Enumeration}
830	Positions of Large Groups	positions-of-large-groups	Easy	{String}
831	Masking Personal Information	masking-personal-information	Medium	{String}
832	Flipping an Image	flipping-an-image	Easy	{Array,"Two Pointers","Bit Manipulation",Matrix,Simulation}
833	Find And Replace in String	find-and-replace-in-string	Medium	{Array,"Hash Table",String,Sorting}
834	Sum of Distances in Tree	sum-of-distances-in-tree	Hard	{"Dynamic Programming",Tree,"Depth-First Search","Graph Theory"}
835	Image Overlap	image-overlap	Medium	{Array,Matrix}
836	Rectangle Overlap	rectangle-overlap	Easy	{Math,Geometry}
837	New 21 Game	new-21-game	Medium	{Math,"Dynamic Programming","Sliding Window","Probability and Statistics"}
838	Push Dominoes	push-dominoes	Medium	{"Two Pointers",String,"Dynamic Programming"}
839	Similar String Groups	similar-string-groups	Hard	{Array,"Hash Table",String,"Depth-First Search","Breadth-First Search",Union-Find}
840	Magic Squares In Grid	magic-squares-in-grid	Medium	{Array,"Hash Table",Math,Matrix}
841	Keys and Rooms	keys-and-rooms	Medium	{"Depth-First Search","Breadth-First Search","Graph Theory"}
842	Split Array into Fibonacci Sequence	split-array-into-fibonacci-sequence	Medium	{String,Backtracking}
843	Guess the Word	guess-the-word	Hard	{Array,Math,String,Interactive,"Game Theory"}
844	Backspace String Compare	backspace-string-compare	Easy	{"Two Pointers",String,Stack,Simulation}
845	Longest Mountain in Array	longest-mountain-in-array	Medium	{Array,"Two Pointers","Dynamic Programming",Enumeration}
846	Hand of Straights	hand-of-straights	Medium	{Array,"Hash Table",Greedy,Sorting}
847	Shortest Path Visiting All Nodes	shortest-path-visiting-all-nodes	Hard	{"Dynamic Programming","Bit Manipulation","Breadth-First Search","Graph Theory",Bitmask}
848	Shifting Letters	shifting-letters	Medium	{Array,String,"Prefix Sum"}
849	Maximize Distance to Closest Person	maximize-distance-to-closest-person	Medium	{Array}
850	Rectangle Area II	rectangle-area-ii	Hard	{Array,"Segment Tree","Sweep Line","Ordered Set"}
851	Loud and Rich	loud-and-rich	Medium	{Array,"Depth-First Search","Graph Theory","Topological Sort"}
852	Peak Index in a Mountain Array	peak-index-in-a-mountain-array	Medium	{Array,"Binary Search"}
853	Car Fleet	car-fleet	Medium	{Array,Stack,Sorting,"Monotonic Stack"}
854	K-Similar Strings	k-similar-strings	Hard	{"Hash Table",String,"Breadth-First Search"}
855	Exam Room	exam-room	Medium	{Design,"Heap (Priority Queue)","Ordered Set"}
856	Score of Parentheses	score-of-parentheses	Medium	{String,Stack}
857	Minimum Cost to Hire K Workers	minimum-cost-to-hire-k-workers	Hard	{Array,Greedy,Sorting,"Heap (Priority Queue)"}
858	Mirror Reflection	mirror-reflection	Medium	{Math,Geometry,"Number Theory"}
859	Buddy Strings	buddy-strings	Easy	{"Hash Table",String}
860	Lemonade Change	lemonade-change	Easy	{Array,Greedy}
861	Score After Flipping Matrix	score-after-flipping-matrix	Medium	{Array,Greedy,"Bit Manipulation",Matrix}
862	Shortest Subarray with Sum at Least K	shortest-subarray-with-sum-at-least-k	Hard	{Array,"Binary Search",Queue,"Sliding Window","Heap (Priority Queue)","Prefix Sum","Monotonic Queue"}
863	All Nodes Distance K in Binary Tree	all-nodes-distance-k-in-binary-tree	Medium	{"Hash Table",Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
864	Shortest Path to Get All Keys	shortest-path-to-get-all-keys	Hard	{Array,"Bit Manipulation","Breadth-First Search",Matrix}
865	Smallest Subtree with all the Deepest Nodes	smallest-subtree-with-all-the-deepest-nodes	Medium	{"Hash Table",Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
866	Prime Palindrome	prime-palindrome	Medium	{Math,"Number Theory"}
867	Transpose Matrix	transpose-matrix	Easy	{Array,Matrix,Simulation}
868	Binary Gap	binary-gap	Easy	{"Bit Manipulation"}
869	Reordered Power of 2	reordered-power-of-2	Medium	{"Hash Table",Math,Sorting,Counting,Enumeration}
870	Advantage Shuffle	advantage-shuffle	Medium	{Array,"Two Pointers",Greedy,Sorting}
871	Minimum Number of Refueling Stops	minimum-number-of-refueling-stops	Hard	{Array,"Dynamic Programming",Greedy,"Heap (Priority Queue)"}
872	Leaf-Similar Trees	leaf-similar-trees	Easy	{Tree,"Depth-First Search","Binary Tree"}
873	Length of Longest Fibonacci Subsequence	length-of-longest-fibonacci-subsequence	Medium	{Array,"Hash Table","Dynamic Programming"}
874	Walking Robot Simulation	walking-robot-simulation	Medium	{Array,"Hash Table",Simulation}
875	Koko Eating Bananas	koko-eating-bananas	Medium	{Array,"Binary Search"}
876	Middle of the Linked List	middle-of-the-linked-list	Easy	{"Linked List","Two Pointers"}
877	Stone Game	stone-game	Medium	{Array,Math,"Dynamic Programming","Game Theory"}
878	Nth Magical Number	nth-magical-number	Hard	{Math,"Binary Search"}
879	Profitable Schemes	profitable-schemes	Hard	{Array,"Dynamic Programming"}
880	Decoded String at Index	decoded-string-at-index	Medium	{String,Stack}
881	Boats to Save People	boats-to-save-people	Medium	{Array,"Two Pointers",Greedy,Sorting}
882	Reachable Nodes In Subdivided Graph	reachable-nodes-in-subdivided-graph	Hard	{"Graph Theory","Heap (Priority Queue)","Shortest Path"}
883	Projection Area of 3D Shapes	projection-area-of-3d-shapes	Easy	{Array,Math,Geometry,Matrix}
884	Uncommon Words from Two Sentences	uncommon-words-from-two-sentences	Easy	{"Hash Table",String,Counting}
885	Spiral Matrix III	spiral-matrix-iii	Medium	{Array,Matrix,Simulation}
886	Possible Bipartition	possible-bipartition	Medium	{"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
887	Super Egg Drop	super-egg-drop	Hard	{Math,"Binary Search","Dynamic Programming"}
888	Fair Candy Swap	fair-candy-swap	Easy	{Array,"Hash Table","Binary Search",Sorting}
889	Construct Binary Tree from Preorder and Postorder Traversal	construct-binary-tree-from-preorder-and-postorder-traversal	Medium	{Array,"Hash Table","Divide and Conquer",Tree,"Binary Tree"}
890	Find and Replace Pattern	find-and-replace-pattern	Medium	{Array,"Hash Table",String}
891	Sum of Subsequence Widths	sum-of-subsequence-widths	Hard	{Array,Math,Sorting}
892	Surface Area of 3D Shapes	surface-area-of-3d-shapes	Easy	{Array,Math,Geometry,Matrix}
893	Groups of Special-Equivalent Strings	groups-of-special-equivalent-strings	Medium	{Array,"Hash Table",String,Sorting}
894	All Possible Full Binary Trees	all-possible-full-binary-trees	Medium	{"Dynamic Programming",Tree,Recursion,Memoization,"Binary Tree"}
895	Maximum Frequency Stack	maximum-frequency-stack	Hard	{"Hash Table",Stack,Design,"Ordered Set"}
896	Monotonic Array	monotonic-array	Easy	{Array}
897	Increasing Order Search Tree	increasing-order-search-tree	Easy	{Stack,Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
898	Bitwise ORs of Subarrays	bitwise-ors-of-subarrays	Medium	{Array,"Dynamic Programming","Bit Manipulation"}
899	Orderly Queue	orderly-queue	Hard	{Math,String,Sorting}
900	RLE Iterator	rle-iterator	Medium	{Array,Design,Counting,Iterator}
901	Online Stock Span	online-stock-span	Medium	{Stack,Design,"Monotonic Stack","Data Stream"}
902	Numbers At Most N Given Digit Set	numbers-at-most-n-given-digit-set	Hard	{Array,Math,String,"Binary Search","Dynamic Programming"}
903	Valid Permutations for DI Sequence	valid-permutations-for-di-sequence	Hard	{String,"Dynamic Programming","Prefix Sum"}
904	Fruit Into Baskets	fruit-into-baskets	Medium	{Array,"Hash Table","Sliding Window"}
905	Sort Array By Parity	sort-array-by-parity	Easy	{Array,"Two Pointers",Sorting}
906	Super Palindromes	super-palindromes	Hard	{Math,String,Enumeration}
907	Sum of Subarray Minimums	sum-of-subarray-minimums	Medium	{Array,"Dynamic Programming",Stack,"Monotonic Stack"}
908	Smallest Range I	smallest-range-i	Easy	{Array,Math}
909	Snakes and Ladders	snakes-and-ladders	Medium	{Array,"Breadth-First Search",Matrix}
910	Smallest Range II	smallest-range-ii	Medium	{Array,Math,Greedy,Sorting}
911	Online Election	online-election	Medium	{Array,"Hash Table","Binary Search",Design}
912	Sort an Array	sort-an-array	Medium	{Array,"Divide and Conquer",Sorting,"Heap (Priority Queue)","Merge Sort","Bucket Sort","Radix Sort","Counting Sort"}
913	Cat and Mouse	cat-and-mouse	Hard	{Math,"Dynamic Programming","Graph Theory","Topological Sort",Memoization,"Game Theory"}
914	X of a Kind in a Deck of Cards	x-of-a-kind-in-a-deck-of-cards	Easy	{Array,"Hash Table",Math,Counting,"Number Theory"}
915	Partition Array into Disjoint Intervals	partition-array-into-disjoint-intervals	Medium	{Array}
916	Word Subsets	word-subsets	Medium	{Array,"Hash Table",String}
917	Reverse Only Letters	reverse-only-letters	Easy	{"Two Pointers",String}
918	Maximum Sum Circular Subarray	maximum-sum-circular-subarray	Medium	{Array,"Divide and Conquer","Dynamic Programming",Queue,"Monotonic Queue"}
919	Complete Binary Tree Inserter	complete-binary-tree-inserter	Medium	{Tree,"Breadth-First Search",Design,"Binary Tree"}
920	Number of Music Playlists	number-of-music-playlists	Hard	{Math,"Dynamic Programming",Combinatorics}
921	Minimum Add to Make Parentheses Valid	minimum-add-to-make-parentheses-valid	Medium	{String,Stack,Greedy}
922	Sort Array By Parity II	sort-array-by-parity-ii	Easy	{Array,"Two Pointers",Sorting}
923	3Sum With Multiplicity	3sum-with-multiplicity	Medium	{Array,"Hash Table","Two Pointers",Sorting,Counting}
924	Minimize Malware Spread	minimize-malware-spread	Hard	{Array,"Hash Table","Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
925	Long Pressed Name	long-pressed-name	Easy	{"Two Pointers",String}
926	Flip String to Monotone Increasing	flip-string-to-monotone-increasing	Medium	{String,"Dynamic Programming"}
927	Three Equal Parts	three-equal-parts	Hard	{Array,Math}
928	Minimize Malware Spread II	minimize-malware-spread-ii	Hard	{Array,"Hash Table","Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
929	Unique Email Addresses	unique-email-addresses	Easy	{Array,"Hash Table",String}
930	Binary Subarrays With Sum	binary-subarrays-with-sum	Medium	{Array,"Hash Table","Sliding Window","Prefix Sum"}
931	Minimum Falling Path Sum	minimum-falling-path-sum	Medium	{Array,"Dynamic Programming",Matrix}
932	Beautiful Array	beautiful-array	Medium	{Array,Math,"Divide and Conquer"}
933	Number of Recent Calls	number-of-recent-calls	Easy	{Design,Queue,"Data Stream"}
934	Shortest Bridge	shortest-bridge	Medium	{Array,"Depth-First Search","Breadth-First Search",Matrix}
935	Knight Dialer	knight-dialer	Medium	{"Dynamic Programming"}
936	Stamping The Sequence	stamping-the-sequence	Hard	{String,Stack,Greedy,Queue}
937	Reorder Data in Log Files	reorder-data-in-log-files	Medium	{Array,String,Sorting}
938	Range Sum of BST	range-sum-of-bst	Easy	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
939	Minimum Area Rectangle	minimum-area-rectangle	Medium	{Array,"Hash Table",Math,Geometry,Sorting}
940	Distinct Subsequences II	distinct-subsequences-ii	Hard	{String,"Dynamic Programming"}
941	Valid Mountain Array	valid-mountain-array	Easy	{Array}
942	DI String Match	di-string-match	Easy	{Array,"Two Pointers",String,Greedy}
943	Find the Shortest Superstring	find-the-shortest-superstring	Hard	{Array,String,"Dynamic Programming","Bit Manipulation",Bitmask}
944	Delete Columns to Make Sorted	delete-columns-to-make-sorted	Easy	{Array,String}
945	Minimum Increment to Make Array Unique	minimum-increment-to-make-array-unique	Medium	{Array,Greedy,Sorting,Counting}
946	Validate Stack Sequences	validate-stack-sequences	Medium	{Array,Stack,Simulation}
947	Most Stones Removed with Same Row or Column	most-stones-removed-with-same-row-or-column	Medium	{"Hash Table","Depth-First Search",Union-Find,"Graph Theory"}
948	Bag of Tokens	bag-of-tokens	Medium	{Array,"Two Pointers",Greedy,Sorting}
949	Largest Time for Given Digits	largest-time-for-given-digits	Medium	{Array,String,Backtracking,Enumeration}
950	Reveal Cards In Increasing Order	reveal-cards-in-increasing-order	Medium	{Array,Queue,Sorting,Simulation}
951	Flip Equivalent Binary Trees	flip-equivalent-binary-trees	Medium	{Tree,"Depth-First Search","Binary Tree"}
952	Largest Component Size by Common Factor	largest-component-size-by-common-factor	Hard	{Array,"Hash Table",Math,Union-Find,"Number Theory"}
953	Verifying an Alien Dictionary	verifying-an-alien-dictionary	Easy	{Array,"Hash Table",String}
954	Array of Doubled Pairs	array-of-doubled-pairs	Medium	{Array,"Hash Table",Greedy,Sorting}
955	Delete Columns to Make Sorted II	delete-columns-to-make-sorted-ii	Medium	{Array,String,Greedy}
956	Tallest Billboard	tallest-billboard	Hard	{Array,"Dynamic Programming"}
957	Prison Cells After N Days	prison-cells-after-n-days	Medium	{Array,"Hash Table",Math,"Bit Manipulation"}
958	Check Completeness of a Binary Tree	check-completeness-of-a-binary-tree	Medium	{Tree,"Breadth-First Search","Binary Tree"}
959	Regions Cut By Slashes	regions-cut-by-slashes	Medium	{Array,"Hash Table","Depth-First Search","Breadth-First Search",Union-Find,Matrix}
960	Delete Columns to Make Sorted III	delete-columns-to-make-sorted-iii	Hard	{Array,String,"Dynamic Programming"}
961	N-Repeated Element in Size 2N Array	n-repeated-element-in-size-2n-array	Easy	{Array,"Hash Table"}
962	Maximum Width Ramp	maximum-width-ramp	Medium	{Array,"Two Pointers",Stack,"Monotonic Stack"}
963	Minimum Area Rectangle II	minimum-area-rectangle-ii	Medium	{Array,"Hash Table",Math,Geometry}
964	Least Operators to Express Number	least-operators-to-express-number	Hard	{Math,"Dynamic Programming",Memoization}
965	Univalued Binary Tree	univalued-binary-tree	Easy	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
966	Vowel Spellchecker	vowel-spellchecker	Medium	{Array,"Hash Table",String}
967	Numbers With Same Consecutive Differences	numbers-with-same-consecutive-differences	Medium	{Backtracking,"Breadth-First Search"}
968	Binary Tree Cameras	binary-tree-cameras	Hard	{"Dynamic Programming",Tree,"Depth-First Search","Binary Tree"}
969	Pancake Sorting	pancake-sorting	Medium	{Array,"Two Pointers",Greedy,Sorting}
970	Powerful Integers	powerful-integers	Medium	{"Hash Table",Math,Enumeration}
971	Flip Binary Tree To Match Preorder Traversal	flip-binary-tree-to-match-preorder-traversal	Medium	{Tree,"Depth-First Search","Binary Tree"}
972	Equal Rational Numbers	equal-rational-numbers	Hard	{Math,String}
973	K Closest Points to Origin	k-closest-points-to-origin	Medium	{Array,Math,"Divide and Conquer",Geometry,Sorting,"Heap (Priority Queue)",Quickselect}
974	Subarray Sums Divisible by K	subarray-sums-divisible-by-k	Medium	{Array,"Hash Table","Prefix Sum"}
975	Odd Even Jump	odd-even-jump	Hard	{Array,"Dynamic Programming",Stack,Sorting,"Monotonic Stack","Ordered Set"}
976	Largest Perimeter Triangle	largest-perimeter-triangle	Easy	{Array,Math,Greedy,Sorting}
977	Squares of a Sorted Array	squares-of-a-sorted-array	Easy	{Array,"Two Pointers",Sorting}
978	Longest Turbulent Subarray	longest-turbulent-subarray	Medium	{Array,"Dynamic Programming","Sliding Window"}
979	Distribute Coins in Binary Tree	distribute-coins-in-binary-tree	Medium	{Tree,"Depth-First Search","Binary Tree"}
980	Unique Paths III	unique-paths-iii	Hard	{Array,Backtracking,"Bit Manipulation",Matrix}
981	Time Based Key-Value Store	time-based-key-value-store	Medium	{"Hash Table",String,"Binary Search",Design}
982	Triples with Bitwise AND Equal To Zero	triples-with-bitwise-and-equal-to-zero	Hard	{Array,"Hash Table","Bit Manipulation"}
983	Minimum Cost For Tickets	minimum-cost-for-tickets	Medium	{Array,"Dynamic Programming"}
984	String Without AAA or BBB	string-without-aaa-or-bbb	Medium	{String,Greedy}
985	Sum of Even Numbers After Queries	sum-of-even-numbers-after-queries	Medium	{Array,Simulation}
986	Interval List Intersections	interval-list-intersections	Medium	{Array,"Two Pointers","Sweep Line"}
987	Vertical Order Traversal of a Binary Tree	vertical-order-traversal-of-a-binary-tree	Hard	{"Hash Table",Tree,"Depth-First Search","Breadth-First Search",Sorting,"Binary Tree"}
988	Smallest String Starting From Leaf	smallest-string-starting-from-leaf	Medium	{String,Backtracking,Tree,"Depth-First Search","Binary Tree"}
989	Add to Array-Form of Integer	add-to-array-form-of-integer	Easy	{Array,Math}
990	Satisfiability of Equality Equations	satisfiability-of-equality-equations	Medium	{Array,String,Union-Find,"Graph Theory"}
991	Broken Calculator	broken-calculator	Medium	{Math,Greedy}
992	Subarrays with K Different Integers	subarrays-with-k-different-integers	Hard	{Array,"Hash Table","Sliding Window",Counting}
993	Cousins in Binary Tree	cousins-in-binary-tree	Easy	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
994	Rotting Oranges	rotting-oranges	Medium	{Array,"Breadth-First Search",Matrix}
995	Minimum Number of K Consecutive Bit Flips	minimum-number-of-k-consecutive-bit-flips	Hard	{Array,"Bit Manipulation",Queue,"Sliding Window","Prefix Sum"}
996	Number of Squareful Arrays	number-of-squareful-arrays	Hard	{Array,"Hash Table",Math,"Dynamic Programming",Backtracking,"Bit Manipulation",Bitmask}
997	Find the Town Judge	find-the-town-judge	Easy	{Array,"Hash Table","Graph Theory"}
998	Maximum Binary Tree II	maximum-binary-tree-ii	Medium	{Tree,"Binary Tree"}
999	Available Captures for Rook	available-captures-for-rook	Easy	{Array,Matrix,Simulation}
1000	Minimum Cost to Merge Stones	minimum-cost-to-merge-stones	Hard	{Array,"Dynamic Programming","Prefix Sum"}
1001	Grid Illumination	grid-illumination	Hard	{Array,"Hash Table"}
1002	Find Common Characters	find-common-characters	Easy	{Array,"Hash Table",String}
1003	Check If Word Is Valid After Substitutions	check-if-word-is-valid-after-substitutions	Medium	{String,Stack}
1004	Max Consecutive Ones III	max-consecutive-ones-iii	Medium	{Array,"Binary Search","Sliding Window","Prefix Sum"}
1005	Maximize Sum Of Array After K Negations	maximize-sum-of-array-after-k-negations	Easy	{Array,Greedy,Sorting}
1006	Clumsy Factorial	clumsy-factorial	Medium	{Math,Stack,Simulation}
1007	Minimum Domino Rotations For Equal Row	minimum-domino-rotations-for-equal-row	Medium	{Array,Greedy}
1008	Construct Binary Search Tree from Preorder Traversal	construct-binary-search-tree-from-preorder-traversal	Medium	{Array,Stack,Tree,"Binary Search Tree","Monotonic Stack","Binary Tree"}
1009	Complement of Base 10 Integer	complement-of-base-10-integer	Easy	{"Bit Manipulation"}
1010	Pairs of Songs With Total Durations Divisible by 60	pairs-of-songs-with-total-durations-divisible-by-60	Medium	{Array,"Hash Table",Counting}
1011	Capacity To Ship Packages Within D Days	capacity-to-ship-packages-within-d-days	Medium	{Array,"Binary Search"}
1012	Numbers With Repeated Digits	numbers-with-repeated-digits	Hard	{Math,"Dynamic Programming"}
1013	Partition Array Into Three Parts With Equal Sum	partition-array-into-three-parts-with-equal-sum	Easy	{Array,Greedy}
1014	Best Sightseeing Pair	best-sightseeing-pair	Medium	{Array,"Dynamic Programming"}
1015	Smallest Integer Divisible by K	smallest-integer-divisible-by-k	Medium	{"Hash Table",Math}
1016	Binary String With Substrings Representing 1 To N	binary-string-with-substrings-representing-1-to-n	Medium	{"Hash Table",String,"Bit Manipulation","Sliding Window"}
1017	Convert to Base -2	convert-to-base-2	Medium	{Math}
1018	Binary Prefix Divisible By 5	binary-prefix-divisible-by-5	Easy	{Array,"Bit Manipulation"}
1019	Next Greater Node In Linked List	next-greater-node-in-linked-list	Medium	{Array,"Linked List",Stack,"Monotonic Stack"}
1020	Number of Enclaves	number-of-enclaves	Medium	{Array,"Depth-First Search","Breadth-First Search",Union-Find,Matrix}
1070	Product Sales Analysis III	product-sales-analysis-iii	Medium	{Database}
1021	Remove Outermost Parentheses	remove-outermost-parentheses	Easy	{String,Stack}
1022	Sum of Root To Leaf Binary Numbers	sum-of-root-to-leaf-binary-numbers	Easy	{Tree,"Depth-First Search","Binary Tree"}
1023	Camelcase Matching	camelcase-matching	Medium	{Array,"Two Pointers",String,Trie,"String Matching"}
1024	Video Stitching	video-stitching	Medium	{Array,"Dynamic Programming",Greedy}
1025	Divisor Game	divisor-game	Easy	{Math,"Dynamic Programming",Brainteaser,"Game Theory"}
1026	Maximum Difference Between Node and Ancestor	maximum-difference-between-node-and-ancestor	Medium	{Tree,"Depth-First Search","Binary Tree"}
1027	Longest Arithmetic Subsequence	longest-arithmetic-subsequence	Medium	{Array,"Hash Table","Binary Search","Dynamic Programming"}
1028	Recover a Tree From Preorder Traversal	recover-a-tree-from-preorder-traversal	Hard	{String,Tree,"Depth-First Search","Binary Tree"}
1029	Two City Scheduling	two-city-scheduling	Medium	{Array,Greedy,Sorting}
1030	Matrix Cells in Distance Order	matrix-cells-in-distance-order	Easy	{Array,Math,Geometry,Sorting,Matrix}
1031	Maximum Sum of Two Non-Overlapping Subarrays	maximum-sum-of-two-non-overlapping-subarrays	Medium	{Array,"Dynamic Programming","Sliding Window"}
1032	Stream of Characters	stream-of-characters	Hard	{Array,String,Design,Trie,"Data Stream"}
1033	Moving Stones Until Consecutive	moving-stones-until-consecutive	Medium	{Math,Brainteaser}
1034	Coloring A Border	coloring-a-border	Medium	{Array,"Depth-First Search","Breadth-First Search",Matrix}
1035	Uncrossed Lines	uncrossed-lines	Medium	{Array,"Dynamic Programming"}
1036	Escape a Large Maze	escape-a-large-maze	Hard	{Array,"Hash Table","Depth-First Search","Breadth-First Search"}
1037	Valid Boomerang	valid-boomerang	Easy	{Array,Math,Geometry}
1038	Binary Search Tree to Greater Sum Tree	binary-search-tree-to-greater-sum-tree	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
1039	Minimum Score Triangulation of Polygon	minimum-score-triangulation-of-polygon	Medium	{Array,"Dynamic Programming"}
1040	Moving Stones Until Consecutive II	moving-stones-until-consecutive-ii	Medium	{Array,Math,"Sliding Window",Sorting}
1041	Robot Bounded In Circle	robot-bounded-in-circle	Medium	{Math,String,Simulation}
1042	Flower Planting With No Adjacent	flower-planting-with-no-adjacent	Medium	{"Depth-First Search","Breadth-First Search","Graph Theory"}
1043	Partition Array for Maximum Sum	partition-array-for-maximum-sum	Medium	{Array,"Dynamic Programming"}
1044	Longest Duplicate Substring	longest-duplicate-substring	Hard	{String,"Binary Search","Sliding Window","Rolling Hash","Suffix Array","Hash Function"}
1045	Customers Who Bought All Products	customers-who-bought-all-products	Medium	{Database}
1046	Last Stone Weight	last-stone-weight	Easy	{Array,"Heap (Priority Queue)"}
1047	Remove All Adjacent Duplicates In String	remove-all-adjacent-duplicates-in-string	Easy	{String,Stack}
1048	Longest String Chain	longest-string-chain	Medium	{Array,"Hash Table","Two Pointers",String,"Dynamic Programming",Sorting}
1049	Last Stone Weight II	last-stone-weight-ii	Medium	{Array,"Dynamic Programming"}
1050	Actors and Directors Who Cooperated At Least Three Times	actors-and-directors-who-cooperated-at-least-three-times	Easy	{Database}
1051	Height Checker	height-checker	Easy	{Array,Sorting,"Counting Sort"}
1052	Grumpy Bookstore Owner	grumpy-bookstore-owner	Medium	{Array,"Sliding Window"}
1053	Previous Permutation With One Swap	previous-permutation-with-one-swap	Medium	{Array,Greedy}
1054	Distant Barcodes	distant-barcodes	Medium	{Array,"Hash Table",Greedy,Sorting,"Heap (Priority Queue)",Counting}
1055	Shortest Way to Form String	shortest-way-to-form-string	Medium	{"Two Pointers",String,"Binary Search",Greedy}
1056	Confusing Number	confusing-number	Easy	{Math}
1057	Campus Bikes	campus-bikes	Medium	{Array,Sorting,"Heap (Priority Queue)"}
1058	Minimize Rounding Error to Meet Target	minimize-rounding-error-to-meet-target	Medium	{Array,Math,String,Greedy,Sorting}
1059	All Paths from Source Lead to Destination	all-paths-from-source-lead-to-destination	Medium	{"Graph Theory","Topological Sort"}
1060	Missing Element in Sorted Array	missing-element-in-sorted-array	Medium	{Array,"Binary Search"}
1061	Lexicographically Smallest Equivalent String	lexicographically-smallest-equivalent-string	Medium	{String,Union-Find}
1062	Longest Repeating Substring	longest-repeating-substring	Medium	{String,"Binary Search","Dynamic Programming","Rolling Hash","Suffix Array","Hash Function"}
1063	Number of Valid Subarrays	number-of-valid-subarrays	Hard	{Array,Stack,"Monotonic Stack"}
1064	Fixed Point	fixed-point	Easy	{Array,"Binary Search"}
1065	Index Pairs of a String	index-pairs-of-a-string	Easy	{Array,String,Trie,Sorting}
1066	Campus Bikes II	campus-bikes-ii	Medium	{Array,"Dynamic Programming",Backtracking,"Bit Manipulation",Bitmask}
1067	Digit Count in Range	digit-count-in-range	Hard	{Math,"Dynamic Programming"}
1068	Product Sales Analysis I	product-sales-analysis-i	Easy	{Database}
1069	Product Sales Analysis II	product-sales-analysis-ii	Easy	{Database}
1071	Greatest Common Divisor of Strings	greatest-common-divisor-of-strings	Easy	{Math,String}
1072	Flip Columns For Maximum Number of Equal Rows	flip-columns-for-maximum-number-of-equal-rows	Medium	{Array,"Hash Table",Matrix}
1073	Adding Two Negabinary Numbers	adding-two-negabinary-numbers	Medium	{Array,Math}
1074	Number of Submatrices That Sum to Target	number-of-submatrices-that-sum-to-target	Hard	{Array,"Hash Table",Matrix,"Prefix Sum"}
1075	Project Employees I	project-employees-i	Easy	{Database}
1076	Project Employees II	project-employees-ii	Easy	{Database}
1077	Project Employees III	project-employees-iii	Medium	{Database}
1078	Occurrences After Bigram	occurrences-after-bigram	Easy	{String}
1079	Letter Tile Possibilities	letter-tile-possibilities	Medium	{"Hash Table",String,Backtracking,Counting}
1080	Insufficient Nodes in Root to Leaf Paths	insufficient-nodes-in-root-to-leaf-paths	Medium	{Tree,"Depth-First Search","Binary Tree"}
1081	Smallest Subsequence of Distinct Characters	smallest-subsequence-of-distinct-characters	Medium	{String,Stack,Greedy,"Monotonic Stack"}
1082	Sales Analysis I	sales-analysis-i	Easy	{Database}
1083	Sales Analysis II	sales-analysis-ii	Easy	{Database}
1084	Sales Analysis III	sales-analysis-iii	Easy	{Database}
1085	Sum of Digits in the Minimum Number	sum-of-digits-in-the-minimum-number	Easy	{Array,Math}
1086	High Five	high-five	Easy	{Array,"Hash Table",Sorting,"Heap (Priority Queue)"}
1087	Brace Expansion	brace-expansion	Medium	{String,Backtracking,Stack,"Breadth-First Search",Sorting}
1088	Confusing Number II	confusing-number-ii	Hard	{Math,Backtracking}
1089	Duplicate Zeros	duplicate-zeros	Easy	{Array,"Two Pointers"}
1090	Largest Values From Labels	largest-values-from-labels	Medium	{Array,"Hash Table",Greedy,Sorting,Counting}
1091	Shortest Path in Binary Matrix	shortest-path-in-binary-matrix	Medium	{Array,"Breadth-First Search",Matrix}
1092	Shortest Common Supersequence 	shortest-common-supersequence	Hard	{String,"Dynamic Programming"}
1093	Statistics from a Large Sample	statistics-from-a-large-sample	Medium	{Array,Math,"Probability and Statistics"}
1094	Car Pooling	car-pooling	Medium	{Array,Sorting,"Heap (Priority Queue)",Simulation,"Prefix Sum"}
1095	Find in Mountain Array	find-in-mountain-array	Hard	{Array,"Binary Search",Interactive}
1096	Brace Expansion II	brace-expansion-ii	Hard	{"Hash Table",String,Backtracking,Stack,"Breadth-First Search",Sorting}
1097	Game Play Analysis V	game-play-analysis-v	Hard	{Database}
1098	Unpopular Books	unpopular-books	Medium	{Database}
1099	Two Sum Less Than K	two-sum-less-than-k	Easy	{Array,"Two Pointers","Binary Search",Sorting}
1100	Find K-Length Substrings With No Repeated Characters	find-k-length-substrings-with-no-repeated-characters	Medium	{"Hash Table",String,"Sliding Window"}
1101	The Earliest Moment When Everyone Become Friends	the-earliest-moment-when-everyone-become-friends	Medium	{Array,Union-Find,Sorting}
1102	Path With Maximum Minimum Value	path-with-maximum-minimum-value	Medium	{Array,"Binary Search","Depth-First Search","Breadth-First Search",Union-Find,"Heap (Priority Queue)",Matrix}
1103	Distribute Candies to People	distribute-candies-to-people	Easy	{Math,Simulation}
1104	Path In Zigzag Labelled Binary Tree	path-in-zigzag-labelled-binary-tree	Medium	{Math,Tree,"Binary Tree"}
1105	Filling Bookcase Shelves	filling-bookcase-shelves	Medium	{Array,"Dynamic Programming"}
1106	Parsing A Boolean Expression	parsing-a-boolean-expression	Hard	{String,Stack,Recursion}
1107	New Users Daily Count	new-users-daily-count	Medium	{Database}
1108	Defanging an IP Address	defanging-an-ip-address	Easy	{String}
1109	Corporate Flight Bookings	corporate-flight-bookings	Medium	{Array,"Prefix Sum"}
1110	Delete Nodes And Return Forest	delete-nodes-and-return-forest	Medium	{Array,"Hash Table",Tree,"Depth-First Search","Binary Tree"}
1111	Maximum Nesting Depth of Two Valid Parentheses Strings	maximum-nesting-depth-of-two-valid-parentheses-strings	Medium	{String,Stack}
1112	Highest Grade For Each Student	highest-grade-for-each-student	Medium	{Database}
1113	Reported Posts	reported-posts	Easy	{Database}
1114	Print in Order	print-in-order	Easy	{Concurrency}
1115	Print FooBar Alternately	print-foobar-alternately	Medium	{Concurrency}
1116	Print Zero Even Odd	print-zero-even-odd	Medium	{Concurrency}
1117	Building H2O	building-h2o	Medium	{Concurrency}
1118	Number of Days in a Month	number-of-days-in-a-month	Easy	{Math}
1119	Remove Vowels from a String	remove-vowels-from-a-string	Easy	{String}
1120	Maximum Average Subtree	maximum-average-subtree	Medium	{Tree,"Depth-First Search","Binary Tree"}
1121	Divide Array Into Increasing Sequences	divide-array-into-increasing-sequences	Hard	{Array,Counting}
1122	Relative Sort Array	relative-sort-array	Easy	{Array,"Hash Table",Sorting,"Counting Sort"}
1492	The kth Factor of n	the-kth-factor-of-n	Medium	{Math,"Number Theory"}
1123	Lowest Common Ancestor of Deepest Leaves	lowest-common-ancestor-of-deepest-leaves	Medium	{"Hash Table",Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
1124	Longest Well-Performing Interval	longest-well-performing-interval	Medium	{Array,"Hash Table",Stack,"Monotonic Stack","Prefix Sum"}
1125	Smallest Sufficient Team	smallest-sufficient-team	Hard	{Array,"Dynamic Programming","Bit Manipulation",Bitmask}
1126	Active Businesses	active-businesses	Medium	{Database}
1127	User Purchase Platform	user-purchase-platform	Hard	{Database}
1128	Number of Equivalent Domino Pairs	number-of-equivalent-domino-pairs	Easy	{Array,"Hash Table",Counting}
1129	Shortest Path with Alternating Colors	shortest-path-with-alternating-colors	Medium	{"Breadth-First Search","Graph Theory"}
1130	Minimum Cost Tree From Leaf Values	minimum-cost-tree-from-leaf-values	Medium	{Array,"Dynamic Programming",Stack,Greedy,"Monotonic Stack"}
1131	Maximum of Absolute Value Expression	maximum-of-absolute-value-expression	Medium	{Array,Math}
1132	Reported Posts II	reported-posts-ii	Medium	{Database}
1133	Largest Unique Number	largest-unique-number	Easy	{Array,"Hash Table",Sorting}
1134	Armstrong Number	armstrong-number	Easy	{Math}
1135	Connecting Cities With Minimum Cost	connecting-cities-with-minimum-cost	Medium	{Union-Find,"Graph Theory","Heap (Priority Queue)","Minimum Spanning Tree"}
1136	Parallel Courses	parallel-courses	Medium	{"Graph Theory","Topological Sort"}
1137	N-th Tribonacci Number	n-th-tribonacci-number	Easy	{Math,"Dynamic Programming",Memoization}
1138	Alphabet Board Path	alphabet-board-path	Medium	{"Hash Table",String}
1139	Largest 1-Bordered Square	largest-1-bordered-square	Medium	{Array,"Dynamic Programming",Matrix}
1140	Stone Game II	stone-game-ii	Medium	{Array,Math,"Dynamic Programming","Prefix Sum","Game Theory"}
1141	User Activity for the Past 30 Days I	user-activity-for-the-past-30-days-i	Easy	{Database}
1142	User Activity for the Past 30 Days II	user-activity-for-the-past-30-days-ii	Easy	{Database}
1143	Longest Common Subsequence	longest-common-subsequence	Medium	{String,"Dynamic Programming"}
1144	Decrease Elements To Make Array Zigzag	decrease-elements-to-make-array-zigzag	Medium	{Array,Greedy}
1145	Binary Tree Coloring Game	binary-tree-coloring-game	Medium	{Tree,"Depth-First Search","Binary Tree"}
1146	Snapshot Array	snapshot-array	Medium	{Array,"Hash Table","Binary Search",Design}
1147	Longest Chunked Palindrome Decomposition	longest-chunked-palindrome-decomposition	Hard	{"Two Pointers",String,"Dynamic Programming",Greedy,"Rolling Hash","Hash Function"}
1148	Article Views I	article-views-i	Easy	{Database}
1149	Article Views II	article-views-ii	Medium	{Database}
1150	Check If a Number Is Majority Element in a Sorted Array	check-if-a-number-is-majority-element-in-a-sorted-array	Easy	{Array,"Binary Search"}
1151	Minimum Swaps to Group All 1's Together	minimum-swaps-to-group-all-1s-together	Medium	{Array,"Sliding Window"}
1152	Analyze User Website Visit Pattern	analyze-user-website-visit-pattern	Medium	{Array,"Hash Table",String,Sorting}
1153	String Transforms Into Another String	string-transforms-into-another-string	Hard	{"Hash Table",String,"Graph Theory"}
1154	Day of the Year	day-of-the-year	Easy	{Math,String}
1155	Number of Dice Rolls With Target Sum	number-of-dice-rolls-with-target-sum	Medium	{"Dynamic Programming"}
1156	Swap For Longest Repeated Character Substring	swap-for-longest-repeated-character-substring	Medium	{"Hash Table",String,"Sliding Window"}
1157	Online Majority Element In Subarray	online-majority-element-in-subarray	Hard	{Array,"Binary Search",Design,"Binary Indexed Tree","Segment Tree"}
1158	Market Analysis I	market-analysis-i	Medium	{Database}
1159	Market Analysis II	market-analysis-ii	Hard	{Database}
1160	Find Words That Can Be Formed by Characters	find-words-that-can-be-formed-by-characters	Easy	{Array,"Hash Table",String,Counting}
1161	Maximum Level Sum of a Binary Tree	maximum-level-sum-of-a-binary-tree	Medium	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
1162	As Far from Land as Possible	as-far-from-land-as-possible	Medium	{Array,"Dynamic Programming","Breadth-First Search",Matrix}
1163	Last Substring in Lexicographical Order	last-substring-in-lexicographical-order	Hard	{"Two Pointers",String}
1164	Product Price at a Given Date	product-price-at-a-given-date	Medium	{Database}
1165	Single-Row Keyboard	single-row-keyboard	Easy	{"Hash Table",String}
1166	Design File System	design-file-system	Medium	{"Hash Table",String,Design,Trie}
1167	Minimum Cost to Connect Sticks	minimum-cost-to-connect-sticks	Medium	{Array,Greedy,"Heap (Priority Queue)"}
1168	Optimize Water Distribution in a Village	optimize-water-distribution-in-a-village	Hard	{Union-Find,"Graph Theory","Heap (Priority Queue)","Minimum Spanning Tree"}
1169	Invalid Transactions	invalid-transactions	Medium	{Array,"Hash Table",String,Sorting}
1170	Compare Strings by Frequency of the Smallest Character	compare-strings-by-frequency-of-the-smallest-character	Medium	{Array,"Hash Table",String,"Binary Search",Sorting}
1853	Convert Date Format	convert-date-format	Easy	{Database}
1171	Remove Zero Sum Consecutive Nodes from Linked List	remove-zero-sum-consecutive-nodes-from-linked-list	Medium	{"Hash Table","Linked List"}
1172	Dinner Plate Stacks	dinner-plate-stacks	Hard	{"Hash Table",Stack,Design,"Heap (Priority Queue)"}
1173	Immediate Food Delivery I	immediate-food-delivery-i	Easy	{Database}
1174	Immediate Food Delivery II	immediate-food-delivery-ii	Medium	{Database}
1175	Prime Arrangements	prime-arrangements	Easy	{Math}
1176	Diet Plan Performance	diet-plan-performance	Easy	{Array,"Sliding Window"}
1177	Can Make Palindrome from Substring	can-make-palindrome-from-substring	Medium	{Array,"Hash Table",String,"Bit Manipulation","Prefix Sum"}
1178	Number of Valid Words for Each Puzzle	number-of-valid-words-for-each-puzzle	Hard	{Array,"Hash Table",String,"Bit Manipulation",Trie}
1179	Reformat Department Table	reformat-department-table	Easy	{Database}
1180	Count Substrings with Only One Distinct Letter	count-substrings-with-only-one-distinct-letter	Easy	{Math,String}
1181	Before and After Puzzle	before-and-after-puzzle	Medium	{Array,"Hash Table",String,Sorting}
1182	Shortest Distance to Target Color	shortest-distance-to-target-color	Medium	{Array,"Binary Search","Dynamic Programming"}
1183	Maximum Number of Ones	maximum-number-of-ones	Hard	{Math,Greedy,Sorting,"Heap (Priority Queue)"}
1184	Distance Between Bus Stops	distance-between-bus-stops	Easy	{Array}
1185	Day of the Week	day-of-the-week	Easy	{Math}
1186	Maximum Subarray Sum with One Deletion	maximum-subarray-sum-with-one-deletion	Medium	{Array,"Dynamic Programming"}
1187	Make Array Strictly Increasing	make-array-strictly-increasing	Hard	{Array,"Binary Search","Dynamic Programming",Sorting}
1188	Design Bounded Blocking Queue	design-bounded-blocking-queue	Medium	{Concurrency}
1189	Maximum Number of Balloons	maximum-number-of-balloons	Easy	{"Hash Table",String,Counting}
1190	Reverse Substrings Between Each Pair of Parentheses	reverse-substrings-between-each-pair-of-parentheses	Medium	{String,Stack}
1191	K-Concatenation Maximum Sum	k-concatenation-maximum-sum	Medium	{Array,"Dynamic Programming"}
1192	Critical Connections in a Network	critical-connections-in-a-network	Hard	{"Depth-First Search","Graph Theory","Biconnected Component"}
1193	Monthly Transactions I	monthly-transactions-i	Medium	{Database}
1194	Tournament Winners	tournament-winners	Hard	{Database}
1195	Fizz Buzz Multithreaded	fizz-buzz-multithreaded	Medium	{Concurrency}
1196	How Many Apples Can You Put into the Basket	how-many-apples-can-you-put-into-the-basket	Easy	{Array,Greedy,Sorting}
1197	Minimum Knight Moves	minimum-knight-moves	Medium	{"Breadth-First Search"}
1198	Find Smallest Common Element in All Rows	find-smallest-common-element-in-all-rows	Medium	{Array,"Hash Table","Binary Search",Matrix,Counting}
1199	Minimum Time to Build Blocks	minimum-time-to-build-blocks	Hard	{Array,Math,Greedy,"Heap (Priority Queue)"}
1200	Minimum Absolute Difference	minimum-absolute-difference	Easy	{Array,Sorting}
1201	Ugly Number III	ugly-number-iii	Medium	{Math,"Binary Search",Combinatorics,"Number Theory"}
1202	Smallest String With Swaps	smallest-string-with-swaps	Medium	{Array,"Hash Table",String,"Depth-First Search","Breadth-First Search",Union-Find,Sorting}
1203	Sort Items by Groups Respecting Dependencies	sort-items-by-groups-respecting-dependencies	Hard	{"Depth-First Search","Breadth-First Search","Graph Theory","Topological Sort"}
1204	Last Person to Fit in the Bus	last-person-to-fit-in-the-bus	Medium	{Database}
1205	Monthly Transactions II	monthly-transactions-ii	Medium	{Database}
1206	Design Skiplist	design-skiplist	Hard	{"Linked List",Design}
1207	Unique Number of Occurrences	unique-number-of-occurrences	Easy	{Array,"Hash Table"}
1208	Get Equal Substrings Within Budget	get-equal-substrings-within-budget	Medium	{String,"Binary Search","Sliding Window","Prefix Sum"}
1209	Remove All Adjacent Duplicates in String II	remove-all-adjacent-duplicates-in-string-ii	Medium	{String,Stack}
1210	Minimum Moves to Reach Target with Rotations	minimum-moves-to-reach-target-with-rotations	Hard	{Array,"Breadth-First Search",Matrix}
1211	Queries Quality and Percentage	queries-quality-and-percentage	Easy	{Database}
1212	Team Scores in Football Tournament	team-scores-in-football-tournament	Medium	{Database}
1213	Intersection of Three Sorted Arrays	intersection-of-three-sorted-arrays	Easy	{Array,"Hash Table","Binary Search",Counting}
1214	Two Sum BSTs	two-sum-bsts	Medium	{"Two Pointers","Binary Search",Stack,Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
1215	Stepping Numbers	stepping-numbers	Medium	{Math,Backtracking,"Breadth-First Search"}
1216	Valid Palindrome III	valid-palindrome-iii	Hard	{String,"Dynamic Programming"}
1217	Minimum Cost to Move Chips to The Same Position	minimum-cost-to-move-chips-to-the-same-position	Easy	{Array,Math,Greedy}
1218	Longest Arithmetic Subsequence of Given Difference	longest-arithmetic-subsequence-of-given-difference	Medium	{Array,"Hash Table","Dynamic Programming"}
1219	Path with Maximum Gold	path-with-maximum-gold	Medium	{Array,Backtracking,Matrix}
1220	Count Vowels Permutation	count-vowels-permutation	Hard	{"Dynamic Programming"}
1221	Split a String in Balanced Strings	split-a-string-in-balanced-strings	Easy	{String,Greedy,Counting}
1222	Queens That Can Attack the King	queens-that-can-attack-the-king	Medium	{Array,Matrix,Simulation}
1223	Dice Roll Simulation	dice-roll-simulation	Hard	{Array,"Dynamic Programming"}
1224	Maximum Equal Frequency	maximum-equal-frequency	Hard	{Array,"Hash Table"}
1225	Report Contiguous Dates	report-contiguous-dates	Hard	{Database}
1226	The Dining Philosophers	the-dining-philosophers	Medium	{Concurrency}
1227	Airplane Seat Assignment Probability	airplane-seat-assignment-probability	Medium	{Math,"Dynamic Programming",Brainteaser,"Probability and Statistics"}
1228	Missing Number In Arithmetic Progression	missing-number-in-arithmetic-progression	Easy	{Array,Math}
1229	Meeting Scheduler	meeting-scheduler	Medium	{Array,"Two Pointers",Sorting}
1230	Toss Strange Coins	toss-strange-coins	Medium	{Array,Math,"Dynamic Programming","Probability and Statistics"}
1231	Divide Chocolate	divide-chocolate	Hard	{Array,"Binary Search"}
1232	Check If It Is a Straight Line	check-if-it-is-a-straight-line	Easy	{Array,Math,Geometry}
1233	Remove Sub-Folders from the Filesystem	remove-sub-folders-from-the-filesystem	Medium	{Array,String,"Depth-First Search",Trie}
1234	Replace the Substring for Balanced String	replace-the-substring-for-balanced-string	Medium	{String,"Sliding Window"}
1235	Maximum Profit in Job Scheduling	maximum-profit-in-job-scheduling	Hard	{Array,"Binary Search","Dynamic Programming",Sorting}
1236	Web Crawler	web-crawler	Medium	{String,"Depth-First Search","Breadth-First Search",Interactive}
1237	Find Positive Integer Solution for a Given Equation	find-positive-integer-solution-for-a-given-equation	Medium	{Math,"Two Pointers","Binary Search",Interactive}
1238	Circular Permutation in Binary Representation	circular-permutation-in-binary-representation	Medium	{Math,Backtracking,"Bit Manipulation"}
1239	Maximum Length of a Concatenated String with Unique Characters	maximum-length-of-a-concatenated-string-with-unique-characters	Medium	{Array,String,Backtracking,"Bit Manipulation"}
1240	Tiling a Rectangle with the Fewest Squares	tiling-a-rectangle-with-the-fewest-squares	Hard	{Backtracking}
1241	Number of Comments per Post	number-of-comments-per-post	Easy	{Database}
1242	Web Crawler Multithreaded	web-crawler-multithreaded	Medium	{"Depth-First Search","Breadth-First Search",Concurrency}
1243	Array Transformation	array-transformation	Easy	{Array,Simulation}
1244	Design A Leaderboard	design-a-leaderboard	Medium	{"Hash Table",Design,Sorting}
1245	Tree Diameter	tree-diameter	Medium	{Tree,"Depth-First Search","Breadth-First Search","Graph Theory","Topological Sort"}
1246	Palindrome Removal	palindrome-removal	Hard	{Array,"Dynamic Programming"}
1247	Minimum Swaps to Make Strings Equal	minimum-swaps-to-make-strings-equal	Medium	{Math,String,Greedy}
1248	Count Number of Nice Subarrays	count-number-of-nice-subarrays	Medium	{Array,"Hash Table",Math,"Sliding Window","Prefix Sum"}
1249	Minimum Remove to Make Valid Parentheses	minimum-remove-to-make-valid-parentheses	Medium	{String,Stack}
1250	Check If It Is a Good Array	check-if-it-is-a-good-array	Hard	{Array,Math,"Number Theory"}
1251	Average Selling Price	average-selling-price	Easy	{Database}
1252	Cells with Odd Values in a Matrix	cells-with-odd-values-in-a-matrix	Easy	{Array,Math,Simulation}
1253	Reconstruct a 2-Row Binary Matrix	reconstruct-a-2-row-binary-matrix	Medium	{Array,Greedy,Matrix}
1254	Number of Closed Islands	number-of-closed-islands	Medium	{Array,"Depth-First Search","Breadth-First Search",Union-Find,Matrix}
1255	Maximum Score Words Formed by Letters	maximum-score-words-formed-by-letters	Hard	{Array,"Hash Table",String,"Dynamic Programming",Backtracking,"Bit Manipulation",Counting,Bitmask}
1256	Encode Number	encode-number	Medium	{Math,String,"Bit Manipulation"}
1257	Smallest Common Region	smallest-common-region	Medium	{Array,"Hash Table",String,Tree,"Depth-First Search","Breadth-First Search"}
1258	Synonymous Sentences	synonymous-sentences	Medium	{Array,"Hash Table",String,Backtracking,Sort,Union-Find}
1259	Handshakes That Don't Cross	handshakes-that-dont-cross	Hard	{Math,"Dynamic Programming"}
1260	Shift 2D Grid	shift-2d-grid	Easy	{Array,Matrix,Simulation}
1261	Find Elements in a Contaminated Binary Tree	find-elements-in-a-contaminated-binary-tree	Medium	{"Hash Table",Tree,"Depth-First Search","Breadth-First Search",Design,"Binary Tree"}
1262	Greatest Sum Divisible by Three	greatest-sum-divisible-by-three	Medium	{Array,"Dynamic Programming",Greedy,Sorting}
1263	Minimum Moves to Move a Box to Their Target Location	minimum-moves-to-move-a-box-to-their-target-location	Hard	{Array,"Breadth-First Search","Heap (Priority Queue)",Matrix}
1264	Page Recommendations	page-recommendations	Medium	{Database}
1265	Print Immutable Linked List in Reverse	print-immutable-linked-list-in-reverse	Medium	{"Linked List","Two Pointers",Stack,Recursion}
1266	Minimum Time Visiting All Points	minimum-time-visiting-all-points	Easy	{Array,Math,Geometry}
1267	Count Servers that Communicate	count-servers-that-communicate	Medium	{Array,"Depth-First Search","Breadth-First Search",Union-Find,Matrix,Counting}
1268	Search Suggestions System	search-suggestions-system	Medium	{Array,String,"Binary Search",Trie,Sorting,"Heap (Priority Queue)"}
1269	Number of Ways to Stay in the Same Place After Some Steps	number-of-ways-to-stay-in-the-same-place-after-some-steps	Hard	{"Dynamic Programming"}
1270	All People Report to the Given Manager	all-people-report-to-the-given-manager	Medium	{Database}
1271	Hexspeak	hexspeak	Easy	{Math,String}
1272	Remove Interval	remove-interval	Medium	{Array}
1273	Delete Tree Nodes	delete-tree-nodes	Medium	{Array,Tree,"Depth-First Search","Breadth-First Search"}
1274	Number of Ships in a Rectangle	number-of-ships-in-a-rectangle	Hard	{Array,"Divide and Conquer",Interactive}
1275	Find Winner on a Tic Tac Toe Game	find-winner-on-a-tic-tac-toe-game	Easy	{Array,"Hash Table",Matrix,Simulation}
1276	Number of Burgers with No Waste of Ingredients	number-of-burgers-with-no-waste-of-ingredients	Medium	{Math}
1277	Count Square Submatrices with All Ones	count-square-submatrices-with-all-ones	Medium	{Array,"Dynamic Programming",Matrix}
1278	Palindrome Partitioning III	palindrome-partitioning-iii	Hard	{String,"Dynamic Programming"}
1279	Traffic Light Controlled Intersection	traffic-light-controlled-intersection	Easy	{Concurrency}
1280	Students and Examinations	students-and-examinations	Easy	{Database}
1281	Subtract the Product and Sum of Digits of an Integer	subtract-the-product-and-sum-of-digits-of-an-integer	Easy	{Math}
1282	Group the People Given the Group Size They Belong To	group-the-people-given-the-group-size-they-belong-to	Medium	{Array,"Hash Table",Greedy}
1283	Find the Smallest Divisor Given a Threshold	find-the-smallest-divisor-given-a-threshold	Medium	{Array,"Binary Search"}
1284	Minimum Number of Flips to Convert Binary Matrix to Zero Matrix	minimum-number-of-flips-to-convert-binary-matrix-to-zero-matrix	Hard	{Array,"Hash Table","Bit Manipulation","Breadth-First Search",Matrix}
1285	Find the Start and End Number of Continuous Ranges	find-the-start-and-end-number-of-continuous-ranges	Medium	{Database}
1286	Iterator for Combination	iterator-for-combination	Medium	{String,Backtracking,Design,Iterator}
1287	Element Appearing More Than 25% In Sorted Array	element-appearing-more-than-25-in-sorted-array	Easy	{Array}
1288	Remove Covered Intervals	remove-covered-intervals	Medium	{Array,Sorting}
1289	Minimum Falling Path Sum II	minimum-falling-path-sum-ii	Hard	{Array,"Dynamic Programming",Matrix}
1290	Convert Binary Number in a Linked List to Integer	convert-binary-number-in-a-linked-list-to-integer	Easy	{"Linked List",Math}
1291	Sequential Digits	sequential-digits	Medium	{Enumeration}
1292	Maximum Side Length of a Square with Sum Less than or Equal to Threshold	maximum-side-length-of-a-square-with-sum-less-than-or-equal-to-threshold	Medium	{Array,"Binary Search",Matrix,"Prefix Sum"}
1293	Shortest Path in a Grid with Obstacles Elimination	shortest-path-in-a-grid-with-obstacles-elimination	Hard	{Array,"Breadth-First Search",Matrix}
1294	Weather Type in Each Country	weather-type-in-each-country	Easy	{Database}
1295	Find Numbers with Even Number of Digits	find-numbers-with-even-number-of-digits	Easy	{Array,Math}
1296	Divide Array in Sets of K Consecutive Numbers	divide-array-in-sets-of-k-consecutive-numbers	Medium	{Array,"Hash Table",Greedy,Sorting}
1297	Maximum Number of Occurrences of a Substring	maximum-number-of-occurrences-of-a-substring	Medium	{"Hash Table",String,"Sliding Window"}
1298	Maximum Candies You Can Get from Boxes	maximum-candies-you-can-get-from-boxes	Hard	{Array,"Breadth-First Search","Graph Theory"}
1299	Replace Elements with Greatest Element on Right Side	replace-elements-with-greatest-element-on-right-side	Easy	{Array}
1300	Sum of Mutated Array Closest to Target	sum-of-mutated-array-closest-to-target	Medium	{Array,"Binary Search",Sorting}
1301	Number of Paths with Max Score	number-of-paths-with-max-score	Hard	{Array,"Dynamic Programming",Matrix}
1302	Deepest Leaves Sum	deepest-leaves-sum	Medium	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
1303	Find the Team Size	find-the-team-size	Easy	{Database}
1304	Find N Unique Integers Sum up to Zero	find-n-unique-integers-sum-up-to-zero	Easy	{Array,Math}
1305	All Elements in Two Binary Search Trees	all-elements-in-two-binary-search-trees	Medium	{Tree,"Depth-First Search","Binary Search Tree",Sorting,"Binary Tree"}
1306	Jump Game III	jump-game-iii	Medium	{Array,"Depth-First Search","Breadth-First Search"}
1307	Verbal Arithmetic Puzzle	verbal-arithmetic-puzzle	Hard	{Array,Math,String,Backtracking}
1308	Running Total for Different Genders	running-total-for-different-genders	Medium	{Database}
1309	Decrypt String from Alphabet to Integer Mapping	decrypt-string-from-alphabet-to-integer-mapping	Easy	{String}
1310	XOR Queries of a Subarray	xor-queries-of-a-subarray	Medium	{Array,"Bit Manipulation","Prefix Sum"}
1311	Get Watched Videos by Your Friends	get-watched-videos-by-your-friends	Medium	{Array,"Hash Table","Breadth-First Search","Graph Theory",Sorting}
1312	Minimum Insertion Steps to Make a String Palindrome	minimum-insertion-steps-to-make-a-string-palindrome	Hard	{String,"Dynamic Programming"}
1313	Decompress Run-Length Encoded List	decompress-run-length-encoded-list	Easy	{Array}
1314	Matrix Block Sum	matrix-block-sum	Medium	{Array,Matrix,"Prefix Sum"}
1315	Sum of Nodes with Even-Valued Grandparent	sum-of-nodes-with-even-valued-grandparent	Medium	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
1316	Distinct Echo Substrings	distinct-echo-substrings	Hard	{String,Trie,"Rolling Hash","Hash Function"}
1317	Convert Integer to the Sum of Two No-Zero Integers	convert-integer-to-the-sum-of-two-no-zero-integers	Easy	{Math}
1318	Minimum Flips to Make a OR b Equal to c	minimum-flips-to-make-a-or-b-equal-to-c	Medium	{"Bit Manipulation"}
1319	Number of Operations to Make Network Connected	number-of-operations-to-make-network-connected	Medium	{"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
1320	Minimum Distance to Type a Word Using Two Fingers	minimum-distance-to-type-a-word-using-two-fingers	Hard	{String,"Dynamic Programming"}
1321	Restaurant Growth	restaurant-growth	Medium	{Database}
1322	Ads Performance	ads-performance	Easy	{Database}
1323	Maximum 69 Number	maximum-69-number	Easy	{Math,Greedy}
1324	Print Words Vertically	print-words-vertically	Medium	{Array,String,Simulation}
1325	Delete Leaves With a Given Value	delete-leaves-with-a-given-value	Medium	{Tree,"Depth-First Search","Binary Tree"}
1326	Minimum Number of Taps to Open to Water a Garden	minimum-number-of-taps-to-open-to-water-a-garden	Hard	{Array,"Dynamic Programming",Greedy}
1327	List the Products Ordered in a Period	list-the-products-ordered-in-a-period	Easy	{Database}
1328	Break a Palindrome	break-a-palindrome	Medium	{String,Greedy}
1329	Sort the Matrix Diagonally	sort-the-matrix-diagonally	Medium	{Array,Sorting,Matrix}
1330	Reverse Subarray To Maximize Array Value	reverse-subarray-to-maximize-array-value	Hard	{Array,Math,Greedy}
1331	Rank Transform of an Array	rank-transform-of-an-array	Easy	{Array,"Hash Table",Sorting}
1332	Remove Palindromic Subsequences	remove-palindromic-subsequences	Easy	{"Two Pointers",String}
1333	Filter Restaurants by Vegan-Friendly, Price and Distance	filter-restaurants-by-vegan-friendly-price-and-distance	Medium	{Array,Sorting}
1334	Find the City With the Smallest Number of Neighbors at a Threshold Distance	find-the-city-with-the-smallest-number-of-neighbors-at-a-threshold-distance	Medium	{"Dynamic Programming","Graph Theory","Shortest Path"}
1335	Minimum Difficulty of a Job Schedule	minimum-difficulty-of-a-job-schedule	Hard	{Array,"Dynamic Programming"}
1336	Number of Transactions per Visit	number-of-transactions-per-visit	Hard	{Database}
1337	The K Weakest Rows in a Matrix	the-k-weakest-rows-in-a-matrix	Easy	{Array,"Binary Search",Sorting,"Heap (Priority Queue)",Matrix}
1338	Reduce Array Size to The Half	reduce-array-size-to-the-half	Medium	{Array,"Hash Table",Greedy,Sorting,"Heap (Priority Queue)"}
1339	Maximum Product of Splitted Binary Tree	maximum-product-of-splitted-binary-tree	Medium	{Tree,"Depth-First Search","Binary Tree"}
1340	Jump Game V	jump-game-v	Hard	{Array,"Dynamic Programming",Sorting}
1341	Movie Rating	movie-rating	Medium	{Database}
1342	Number of Steps to Reduce a Number to Zero	number-of-steps-to-reduce-a-number-to-zero	Easy	{Math,"Bit Manipulation"}
1343	Number of Sub-arrays of Size K and Average Greater than or Equal to Threshold	number-of-sub-arrays-of-size-k-and-average-greater-than-or-equal-to-threshold	Medium	{Array,"Sliding Window"}
1344	Angle Between Hands of a Clock	angle-between-hands-of-a-clock	Medium	{Math}
1345	Jump Game IV	jump-game-iv	Hard	{Array,"Hash Table","Breadth-First Search"}
1346	Check If N and Its Double Exist	check-if-n-and-its-double-exist	Easy	{Array,"Hash Table","Two Pointers","Binary Search",Sorting}
1347	Minimum Number of Steps to Make Two Strings Anagram	minimum-number-of-steps-to-make-two-strings-anagram	Medium	{"Hash Table",String,Counting}
1348	Tweet Counts Per Frequency	tweet-counts-per-frequency	Medium	{"Hash Table",String,"Binary Search",Design,Sorting,"Ordered Set"}
1349	Maximum Students Taking Exam	maximum-students-taking-exam	Hard	{Array,"Dynamic Programming","Bit Manipulation",Matrix,Bitmask}
1350	Students With Invalid Departments	students-with-invalid-departments	Easy	{Database}
1351	Count Negative Numbers in a Sorted Matrix	count-negative-numbers-in-a-sorted-matrix	Easy	{Array,"Binary Search",Matrix}
1352	Product of the Last K Numbers	product-of-the-last-k-numbers	Medium	{Array,Math,Design,"Data Stream","Prefix Sum"}
1353	Maximum Number of Events That Can Be Attended	maximum-number-of-events-that-can-be-attended	Medium	{Array,Greedy,Sorting,"Heap (Priority Queue)"}
1354	Construct Target Array With Multiple Sums	construct-target-array-with-multiple-sums	Hard	{Array,"Heap (Priority Queue)"}
1355	Activity Participants	activity-participants	Medium	{Database}
1356	Sort Integers by The Number of 1 Bits	sort-integers-by-the-number-of-1-bits	Easy	{Array,"Bit Manipulation",Sorting,Counting}
1357	Apply Discount Every n Orders	apply-discount-every-n-orders	Medium	{Array,"Hash Table",Design}
1358	Number of Substrings Containing All Three Characters	number-of-substrings-containing-all-three-characters	Medium	{"Hash Table",String,"Sliding Window"}
1359	Count All Valid Pickup and Delivery Options	count-all-valid-pickup-and-delivery-options	Hard	{Math,"Dynamic Programming",Combinatorics}
1360	Number of Days Between Two Dates	number-of-days-between-two-dates	Easy	{Math,String}
1361	Validate Binary Tree Nodes	validate-binary-tree-nodes	Medium	{Tree,"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory","Binary Tree"}
1362	Closest Divisors	closest-divisors	Medium	{Math}
1363	Largest Multiple of Three	largest-multiple-of-three	Hard	{Array,Math,"Dynamic Programming",Greedy,Sorting}
1364	Number of Trusted Contacts of a Customer	number-of-trusted-contacts-of-a-customer	Medium	{Database}
1365	How Many Numbers Are Smaller Than the Current Number	how-many-numbers-are-smaller-than-the-current-number	Easy	{Array,"Hash Table",Sorting,"Counting Sort"}
1366	Rank Teams by Votes	rank-teams-by-votes	Medium	{Array,"Hash Table",String,Sorting,Counting}
1367	Linked List in Binary Tree	linked-list-in-binary-tree	Medium	{"Linked List",Tree,"Depth-First Search","Binary Tree"}
1368	Minimum Cost to Make at Least One Valid Path in a Grid	minimum-cost-to-make-at-least-one-valid-path-in-a-grid	Hard	{Array,"Breadth-First Search","Graph Theory","Heap (Priority Queue)",Matrix,"Shortest Path"}
1369	Get the Second Most Recent Activity	get-the-second-most-recent-activity	Hard	{Database}
1370	Increasing Decreasing String	increasing-decreasing-string	Easy	{"Hash Table",String,Counting}
1371	Find the Longest Substring Containing Vowels in Even Counts	find-the-longest-substring-containing-vowels-in-even-counts	Medium	{"Hash Table",String,"Bit Manipulation","Prefix Sum"}
1372	Longest ZigZag Path in a Binary Tree	longest-zigzag-path-in-a-binary-tree	Medium	{"Dynamic Programming",Tree,"Depth-First Search","Binary Tree"}
1373	Maximum Sum BST in Binary Tree	maximum-sum-bst-in-binary-tree	Hard	{"Dynamic Programming",Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
1374	Generate a String With Characters That Have Odd Counts	generate-a-string-with-characters-that-have-odd-counts	Easy	{String}
1375	Number of Times Binary String Is Prefix-Aligned	number-of-times-binary-string-is-prefix-aligned	Medium	{Array}
1376	Time Needed to Inform All Employees	time-needed-to-inform-all-employees	Medium	{Tree,"Depth-First Search","Breadth-First Search"}
1377	Frog Position After T Seconds	frog-position-after-t-seconds	Hard	{Tree,"Depth-First Search","Breadth-First Search","Graph Theory"}
1378	Replace Employee ID With The Unique Identifier	replace-employee-id-with-the-unique-identifier	Easy	{Database}
1379	Find a Corresponding Node of a Binary Tree in a Clone of That Tree	find-a-corresponding-node-of-a-binary-tree-in-a-clone-of-that-tree	Easy	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
1380	Lucky Numbers in a Matrix	lucky-numbers-in-a-matrix	Easy	{Array,Matrix}
1381	Design a Stack With Increment Operation	design-a-stack-with-increment-operation	Medium	{Array,Stack,Design}
1382	Balance a Binary Search Tree	balance-a-binary-search-tree	Medium	{"Divide and Conquer",Greedy,Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
1383	Maximum Performance of a Team	maximum-performance-of-a-team	Hard	{Array,Greedy,Sorting,"Heap (Priority Queue)"}
1384	Total Sales Amount by Year	total-sales-amount-by-year	Hard	{Database}
1385	Find the Distance Value Between Two Arrays	find-the-distance-value-between-two-arrays	Easy	{Array,"Two Pointers","Binary Search",Sorting}
1386	Cinema Seat Allocation	cinema-seat-allocation	Medium	{Array,"Hash Table",Greedy,"Bit Manipulation"}
1387	Sort Integers by The Power Value	sort-integers-by-the-power-value	Medium	{"Dynamic Programming",Memoization,Sorting}
1388	Pizza With 3n Slices	pizza-with-3n-slices	Hard	{Array,"Dynamic Programming",Greedy,"Heap (Priority Queue)"}
1389	Create Target Array in the Given Order	create-target-array-in-the-given-order	Easy	{Array,Simulation}
1390	Four Divisors	four-divisors	Medium	{Array,Math}
1391	Check if There is a Valid Path in a Grid	check-if-there-is-a-valid-path-in-a-grid	Medium	{Array,"Depth-First Search","Breadth-First Search",Union-Find,Matrix}
1392	Longest Happy Prefix	longest-happy-prefix	Hard	{String,"Rolling Hash","String Matching","Hash Function"}
1393	Capital Gain/Loss	capital-gainloss	Medium	{Database}
1394	Find Lucky Integer in an Array	find-lucky-integer-in-an-array	Easy	{Array,"Hash Table",Counting}
1395	Count Number of Teams	count-number-of-teams	Medium	{Array,"Dynamic Programming","Binary Indexed Tree","Segment Tree"}
1396	Design Underground System	design-underground-system	Medium	{"Hash Table",String,Design}
1397	Find All Good Strings	find-all-good-strings	Hard	{String,"Dynamic Programming","String Matching"}
1398	Customers Who Bought Products A and B but Not C	customers-who-bought-products-a-and-b-but-not-c	Medium	{Database}
1399	Count Largest Group	count-largest-group	Easy	{"Hash Table",Math,Counting}
1400	Construct K Palindrome Strings	construct-k-palindrome-strings	Medium	{"Hash Table",String,Greedy,Counting}
1401	Circle and Rectangle Overlapping	circle-and-rectangle-overlapping	Medium	{Math,Geometry}
1402	Reducing Dishes	reducing-dishes	Hard	{Array,"Dynamic Programming",Greedy,Sorting}
1403	Minimum Subsequence in Non-Increasing Order	minimum-subsequence-in-non-increasing-order	Easy	{Array,Greedy,Sorting}
1404	Number of Steps to Reduce a Number in Binary Representation to One	number-of-steps-to-reduce-a-number-in-binary-representation-to-one	Medium	{String,"Bit Manipulation",Simulation}
1405	Longest Happy String	longest-happy-string	Medium	{String,Greedy,"Heap (Priority Queue)"}
1406	Stone Game III	stone-game-iii	Hard	{Array,Math,"Dynamic Programming","Game Theory"}
1407	Top Travellers	top-travellers	Easy	{Database}
1408	String Matching in an Array	string-matching-in-an-array	Easy	{Array,String,"String Matching"}
1409	Queries on a Permutation With Key	queries-on-a-permutation-with-key	Medium	{Array,"Binary Indexed Tree",Simulation}
1410	HTML Entity Parser	html-entity-parser	Medium	{"Hash Table",String}
1411	Number of Ways to Paint N × 3 Grid	number-of-ways-to-paint-n-3-grid	Hard	{"Dynamic Programming"}
1412	Find the Quiet Students in All Exams	find-the-quiet-students-in-all-exams	Hard	{Database}
1413	Minimum Value to Get Positive Step by Step Sum	minimum-value-to-get-positive-step-by-step-sum	Easy	{Array,"Prefix Sum"}
1414	Find the Minimum Number of Fibonacci Numbers Whose Sum Is K	find-the-minimum-number-of-fibonacci-numbers-whose-sum-is-k	Medium	{Math,Greedy}
1415	The k-th Lexicographical String of All Happy Strings of Length n	the-k-th-lexicographical-string-of-all-happy-strings-of-length-n	Medium	{String,Backtracking}
1416	Restore The Array	restore-the-array	Hard	{String,"Dynamic Programming"}
1417	Reformat The String	reformat-the-string	Easy	{String}
1418	Display Table of Food Orders in a Restaurant	display-table-of-food-orders-in-a-restaurant	Medium	{Array,"Hash Table",String,Sorting,"Ordered Set"}
1419	Minimum Number of Frogs Croaking	minimum-number-of-frogs-croaking	Medium	{String,Counting}
1420	Build Array Where You Can Find The Maximum Exactly K Comparisons	build-array-where-you-can-find-the-maximum-exactly-k-comparisons	Hard	{"Dynamic Programming","Prefix Sum"}
1421	NPV Queries	npv-queries	Easy	{Database}
1422	Maximum Score After Splitting a String	maximum-score-after-splitting-a-string	Easy	{String,"Prefix Sum"}
1423	Maximum Points You Can Obtain from Cards	maximum-points-you-can-obtain-from-cards	Medium	{Array,"Sliding Window","Prefix Sum"}
1424	Diagonal Traverse II	diagonal-traverse-ii	Medium	{Array,Sorting,"Heap (Priority Queue)"}
1425	Constrained Subsequence Sum	constrained-subsequence-sum	Hard	{Array,"Dynamic Programming",Queue,"Sliding Window","Heap (Priority Queue)","Monotonic Queue"}
1426	Counting Elements	counting-elements	Easy	{Array,"Hash Table"}
1427	Perform String Shifts	perform-string-shifts	Easy	{Array,Math,String}
1428	Leftmost Column with at Least a One	leftmost-column-with-at-least-a-one	Medium	{Array,"Binary Search",Matrix,Interactive}
1429	First Unique Number	first-unique-number	Medium	{Array,"Hash Table",Design,Queue,"Data Stream"}
1430	Check If a String Is a Valid Sequence from Root to Leaves Path in a Binary Tree	check-if-a-string-is-a-valid-sequence-from-root-to-leaves-path-in-a-binary-tree	Medium	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
1431	Kids With the Greatest Number of Candies	kids-with-the-greatest-number-of-candies	Easy	{Array}
1432	Max Difference You Can Get From Changing an Integer	max-difference-you-can-get-from-changing-an-integer	Medium	{Math,Greedy}
1433	Check If a String Can Break Another String	check-if-a-string-can-break-another-string	Medium	{String,Greedy,Sorting}
1434	Number of Ways to Wear Different Hats to Each Other	number-of-ways-to-wear-different-hats-to-each-other	Hard	{Array,"Dynamic Programming","Bit Manipulation",Bitmask}
1435	Create a Session Bar Chart	create-a-session-bar-chart	Easy	{Database}
1436	Destination City	destination-city	Easy	{Array,"Hash Table",String}
1437	Check If All 1's Are at Least Length K Places Away	check-if-all-1s-are-at-least-length-k-places-away	Easy	{Array}
1438	Longest Continuous Subarray With Absolute Diff Less Than or Equal to Limit	longest-continuous-subarray-with-absolute-diff-less-than-or-equal-to-limit	Medium	{Array,Queue,"Sliding Window","Heap (Priority Queue)","Ordered Set","Monotonic Queue"}
1439	Find the Kth Smallest Sum of a Matrix With Sorted Rows	find-the-kth-smallest-sum-of-a-matrix-with-sorted-rows	Hard	{Array,"Binary Search","Heap (Priority Queue)",Matrix}
1440	Evaluate Boolean Expression	evaluate-boolean-expression	Medium	{Database}
1441	Build an Array With Stack Operations	build-an-array-with-stack-operations	Medium	{Array,Stack,Simulation}
1442	Count Triplets That Can Form Two Arrays of Equal XOR	count-triplets-that-can-form-two-arrays-of-equal-xor	Medium	{Array,"Hash Table",Math,"Bit Manipulation","Prefix Sum"}
1443	Minimum Time to Collect All Apples in a Tree	minimum-time-to-collect-all-apples-in-a-tree	Medium	{"Hash Table",Tree,"Depth-First Search","Breadth-First Search"}
1444	Number of Ways of Cutting a Pizza	number-of-ways-of-cutting-a-pizza	Hard	{Array,"Dynamic Programming",Memoization,Matrix,"Prefix Sum"}
1445	Apples & Oranges	apples-oranges	Medium	{Database}
1446	Consecutive Characters	consecutive-characters	Easy	{String}
1447	Simplified Fractions	simplified-fractions	Medium	{Math,String,"Number Theory"}
1448	Count Good Nodes in Binary Tree	count-good-nodes-in-binary-tree	Medium	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
1449	Form Largest Integer With Digits That Add up to Target	form-largest-integer-with-digits-that-add-up-to-target	Hard	{Array,"Dynamic Programming"}
1450	Number of Students Doing Homework at a Given Time	number-of-students-doing-homework-at-a-given-time	Easy	{Array}
1451	Rearrange Words in a Sentence	rearrange-words-in-a-sentence	Medium	{String,Sorting}
1452	People Whose List of Favorite Companies Is Not a Subset of Another List	people-whose-list-of-favorite-companies-is-not-a-subset-of-another-list	Medium	{Array,"Hash Table",String}
1453	Maximum Number of Darts Inside of a Circular Dartboard	maximum-number-of-darts-inside-of-a-circular-dartboard	Hard	{Array,Math,Geometry}
1454	Active Users	active-users	Medium	{Database}
1455	Check If a Word Occurs As a Prefix of Any Word in a Sentence	check-if-a-word-occurs-as-a-prefix-of-any-word-in-a-sentence	Easy	{"Two Pointers",String,"String Matching"}
1456	Maximum Number of Vowels in a Substring of Given Length	maximum-number-of-vowels-in-a-substring-of-given-length	Medium	{String,"Sliding Window"}
1457	Pseudo-Palindromic Paths in a Binary Tree	pseudo-palindromic-paths-in-a-binary-tree	Medium	{"Bit Manipulation",Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
1458	Max Dot Product of Two Subsequences	max-dot-product-of-two-subsequences	Hard	{Array,"Dynamic Programming"}
1459	Rectangles Area	rectangles-area	Medium	{Database}
1460	Make Two Arrays Equal by Reversing Subarrays	make-two-arrays-equal-by-reversing-subarrays	Easy	{Array,"Hash Table",Sorting}
1461	Check If a String Contains All Binary Codes of Size K	check-if-a-string-contains-all-binary-codes-of-size-k	Medium	{"Hash Table",String,"Bit Manipulation","Rolling Hash","Hash Function"}
1462	Course Schedule IV	course-schedule-iv	Medium	{"Depth-First Search","Breadth-First Search","Graph Theory","Topological Sort"}
1463	Cherry Pickup II	cherry-pickup-ii	Hard	{Array,"Dynamic Programming",Matrix}
1464	Maximum Product of Two Elements in an Array	maximum-product-of-two-elements-in-an-array	Easy	{Array,Sorting,"Heap (Priority Queue)"}
1465	Maximum Area of a Piece of Cake After Horizontal and Vertical Cuts	maximum-area-of-a-piece-of-cake-after-horizontal-and-vertical-cuts	Medium	{Array,Greedy,Sorting}
1466	Reorder Routes to Make All Paths Lead to the City Zero	reorder-routes-to-make-all-paths-lead-to-the-city-zero	Medium	{"Depth-First Search","Breadth-First Search","Graph Theory"}
1467	Probability of a Two Boxes Having The Same Number of Distinct Balls	probability-of-a-two-boxes-having-the-same-number-of-distinct-balls	Hard	{Array,Math,"Dynamic Programming",Backtracking,Combinatorics,"Probability and Statistics"}
1468	Calculate Salaries	calculate-salaries	Medium	{Database}
1469	Find All The Lonely Nodes	find-all-the-lonely-nodes	Easy	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
1470	Shuffle the Array	shuffle-the-array	Easy	{Array}
1471	The k Strongest Values in an Array	the-k-strongest-values-in-an-array	Medium	{Array,"Two Pointers",Sorting}
1472	Design Browser History	design-browser-history	Medium	{Array,"Linked List",Stack,Design,"Doubly-Linked List","Data Stream"}
1473	Paint House III	paint-house-iii	Hard	{Array,"Dynamic Programming"}
1474	Delete N Nodes After M Nodes of a Linked List	delete-n-nodes-after-m-nodes-of-a-linked-list	Easy	{"Linked List"}
1475	Final Prices With a Special Discount in a Shop	final-prices-with-a-special-discount-in-a-shop	Easy	{Array,Stack,"Monotonic Stack"}
1476	Subrectangle Queries	subrectangle-queries	Medium	{Array,Design,Matrix}
1477	Find Two Non-overlapping Sub-arrays Each With Target Sum	find-two-non-overlapping-sub-arrays-each-with-target-sum	Medium	{Array,"Hash Table","Binary Search","Dynamic Programming","Sliding Window"}
1478	Allocate Mailboxes	allocate-mailboxes	Hard	{Array,Math,"Dynamic Programming",Sorting}
1479	Sales by Day of the Week	sales-by-day-of-the-week	Hard	{Database}
1480	Running Sum of 1d Array	running-sum-of-1d-array	Easy	{Array,"Prefix Sum"}
1481	Least Number of Unique Integers after K Removals	least-number-of-unique-integers-after-k-removals	Medium	{Array,"Hash Table",Greedy,Sorting,Counting}
1482	Minimum Number of Days to Make m Bouquets	minimum-number-of-days-to-make-m-bouquets	Medium	{Array,"Binary Search"}
1483	Kth Ancestor of a Tree Node	kth-ancestor-of-a-tree-node	Hard	{"Binary Search","Dynamic Programming","Bit Manipulation",Tree,"Depth-First Search","Breadth-First Search",Design}
1484	Group Sold Products By The Date	group-sold-products-by-the-date	Easy	{Database}
1485	Clone Binary Tree With Random Pointer	clone-binary-tree-with-random-pointer	Medium	{"Hash Table",Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
1486	XOR Operation in an Array	xor-operation-in-an-array	Easy	{Math,"Bit Manipulation"}
1487	Making File Names Unique	making-file-names-unique	Medium	{Array,"Hash Table",String}
1488	Avoid Flood in The City	avoid-flood-in-the-city	Medium	{Array,"Hash Table","Binary Search",Greedy,"Heap (Priority Queue)"}
1489	Find Critical and Pseudo-Critical Edges in Minimum Spanning Tree	find-critical-and-pseudo-critical-edges-in-minimum-spanning-tree	Hard	{Union-Find,"Graph Theory",Sorting,"Minimum Spanning Tree","Strongly Connected Component"}
1490	Clone N-ary Tree	clone-n-ary-tree	Medium	{"Hash Table",Tree,"Depth-First Search","Breadth-First Search"}
1491	Average Salary Excluding the Minimum and Maximum Salary	average-salary-excluding-the-minimum-and-maximum-salary	Easy	{Array,Sorting}
1493	Longest Subarray of 1's After Deleting One Element	longest-subarray-of-1s-after-deleting-one-element	Medium	{Array,"Dynamic Programming","Sliding Window"}
1494	Parallel Courses II	parallel-courses-ii	Hard	{"Dynamic Programming","Bit Manipulation","Graph Theory",Bitmask}
1495	Friendly Movies Streamed Last Month	friendly-movies-streamed-last-month	Easy	{Database}
1496	Path Crossing	path-crossing	Easy	{"Hash Table",String}
1497	Check If Array Pairs Are Divisible by k	check-if-array-pairs-are-divisible-by-k	Medium	{Array,"Hash Table",Counting}
1498	Number of Subsequences That Satisfy the Given Sum Condition	number-of-subsequences-that-satisfy-the-given-sum-condition	Medium	{Array,"Two Pointers","Binary Search",Sorting}
1499	Max Value of Equation	max-value-of-equation	Hard	{Array,Queue,"Sliding Window","Heap (Priority Queue)","Monotonic Queue"}
1500	Design a File Sharing System	design-a-file-sharing-system	Medium	{"Hash Table",Design,Sorting,"Heap (Priority Queue)","Data Stream"}
1501	Countries You Can Safely Invest In	countries-you-can-safely-invest-in	Medium	{Database}
1502	Can Make Arithmetic Progression From Sequence	can-make-arithmetic-progression-from-sequence	Easy	{Array,Sorting}
1503	Last Moment Before All Ants Fall Out of a Plank	last-moment-before-all-ants-fall-out-of-a-plank	Medium	{Array,Brainteaser,Simulation}
1504	Count Submatrices With All Ones	count-submatrices-with-all-ones	Medium	{Array,"Dynamic Programming",Stack,Matrix,"Monotonic Stack"}
1505	Minimum Possible Integer After at Most K Adjacent Swaps On Digits	minimum-possible-integer-after-at-most-k-adjacent-swaps-on-digits	Hard	{String,Greedy,"Binary Indexed Tree","Segment Tree"}
1506	Find Root of N-Ary Tree	find-root-of-n-ary-tree	Medium	{"Hash Table","Bit Manipulation",Tree,"Depth-First Search"}
1507	Reformat Date	reformat-date	Easy	{String}
1508	Range Sum of Sorted Subarray Sums	range-sum-of-sorted-subarray-sums	Medium	{Array,"Two Pointers","Binary Search",Sorting,"Prefix Sum"}
1509	Minimum Difference Between Largest and Smallest Value in Three Moves	minimum-difference-between-largest-and-smallest-value-in-three-moves	Medium	{Array,Greedy,Sorting}
1510	Stone Game IV	stone-game-iv	Hard	{Math,"Dynamic Programming","Game Theory"}
1511	Customer Order Frequency	customer-order-frequency	Easy	{Database}
1512	Number of Good Pairs	number-of-good-pairs	Easy	{Array,"Hash Table",Math,Counting}
1513	Number of Substrings With Only 1s	number-of-substrings-with-only-1s	Medium	{Math,String}
1514	Path with Maximum Probability	path-with-maximum-probability	Medium	{Array,"Graph Theory","Heap (Priority Queue)","Shortest Path"}
1515	Best Position for a Service Centre	best-position-for-a-service-centre	Hard	{Array,Math,Geometry,Randomized}
1516	Move Sub-Tree of N-Ary Tree	move-sub-tree-of-n-ary-tree	Hard	{Tree,"Depth-First Search"}
1517	Find Users With Valid E-Mails	find-users-with-valid-e-mails	Easy	{Database}
1518	Water Bottles	water-bottles	Easy	{Math,Simulation}
1519	Number of Nodes in the Sub-Tree With the Same Label	number-of-nodes-in-the-sub-tree-with-the-same-label	Medium	{"Hash Table",Tree,"Depth-First Search","Breadth-First Search",Counting}
1520	Maximum Number of Non-Overlapping Substrings	maximum-number-of-non-overlapping-substrings	Hard	{"Hash Table",String,Greedy,Sorting}
1521	Find a Value of a Mysterious Function Closest to Target	find-a-value-of-a-mysterious-function-closest-to-target	Hard	{Array,"Binary Search","Bit Manipulation","Segment Tree"}
1522	Diameter of N-Ary Tree	diameter-of-n-ary-tree	Medium	{Tree,"Depth-First Search"}
1523	Count Odd Numbers in an Interval Range	count-odd-numbers-in-an-interval-range	Easy	{Math}
1524	Number of Sub-arrays With Odd Sum	number-of-sub-arrays-with-odd-sum	Medium	{Array,Math,"Dynamic Programming","Prefix Sum"}
1525	Number of Good Ways to Split a String	number-of-good-ways-to-split-a-string	Medium	{"Hash Table",String,"Dynamic Programming","Bit Manipulation"}
1526	Minimum Number of Increments on Subarrays to Form a Target Array	minimum-number-of-increments-on-subarrays-to-form-a-target-array	Hard	{Array,"Dynamic Programming",Stack,Greedy,"Monotonic Stack"}
1527	Patients With a Condition	patients-with-a-condition	Easy	{Database}
1528	Shuffle String	shuffle-string	Easy	{Array,String}
1529	Minimum Suffix Flips	minimum-suffix-flips	Medium	{String,Greedy}
1530	Number of Good Leaf Nodes Pairs	number-of-good-leaf-nodes-pairs	Medium	{Tree,"Depth-First Search","Binary Tree"}
1531	String Compression II	string-compression-ii	Hard	{String,"Dynamic Programming"}
1532	The Most Recent Three Orders	the-most-recent-three-orders	Medium	{Database}
1533	Find the Index of the Large Integer	find-the-index-of-the-large-integer	Medium	{Array,"Binary Search",Interactive}
1534	Count Good Triplets	count-good-triplets	Easy	{Array,Enumeration}
1535	Find the Winner of an Array Game	find-the-winner-of-an-array-game	Medium	{Array,Simulation}
1536	Minimum Swaps to Arrange a Binary Grid	minimum-swaps-to-arrange-a-binary-grid	Medium	{Array,Greedy,Matrix}
1537	Get the Maximum Score	get-the-maximum-score	Hard	{Array,"Two Pointers","Dynamic Programming",Greedy}
1538	Guess the Majority in a Hidden Array	guess-the-majority-in-a-hidden-array	Medium	{Array,Math,Interactive}
1539	Kth Missing Positive Number	kth-missing-positive-number	Easy	{Array,"Binary Search"}
1540	Can Convert String in K Moves	can-convert-string-in-k-moves	Medium	{"Hash Table",String}
1541	Minimum Insertions to Balance a Parentheses String	minimum-insertions-to-balance-a-parentheses-string	Medium	{String,Stack,Greedy}
1542	Find Longest Awesome Substring	find-longest-awesome-substring	Hard	{"Hash Table",String,"Bit Manipulation"}
1543	Fix Product Name Format	fix-product-name-format	Easy	{Database}
1544	Make The String Great	make-the-string-great	Easy	{String,Stack}
1545	Find Kth Bit in Nth Binary String	find-kth-bit-in-nth-binary-string	Medium	{String,Recursion,Simulation}
1546	Maximum Number of Non-Overlapping Subarrays With Sum Equals Target	maximum-number-of-non-overlapping-subarrays-with-sum-equals-target	Medium	{Array,"Hash Table",Greedy,"Prefix Sum"}
1547	Minimum Cost to Cut a Stick	minimum-cost-to-cut-a-stick	Hard	{Array,"Dynamic Programming",Sorting}
1548	The Most Similar Path in a Graph	the-most-similar-path-in-a-graph	Hard	{"Dynamic Programming","Graph Theory"}
1549	The Most Recent Orders for Each Product	the-most-recent-orders-for-each-product	Medium	{Database}
1550	Three Consecutive Odds	three-consecutive-odds	Easy	{Array}
1551	Minimum Operations to Make Array Equal	minimum-operations-to-make-array-equal	Medium	{Math}
1552	Magnetic Force Between Two Balls	magnetic-force-between-two-balls	Medium	{Array,"Binary Search",Sorting}
1553	Minimum Number of Days to Eat N Oranges	minimum-number-of-days-to-eat-n-oranges	Hard	{"Dynamic Programming",Memoization}
1554	Strings Differ by One Character	strings-differ-by-one-character	Medium	{"Hash Table",String,"Rolling Hash","Hash Function"}
1555	Bank Account Summary	bank-account-summary	Medium	{Database}
1556	Thousand Separator	thousand-separator	Easy	{String}
1557	Minimum Number of Vertices to Reach All Nodes	minimum-number-of-vertices-to-reach-all-nodes	Medium	{"Graph Theory"}
1558	Minimum Numbers of Function Calls to Make Target Array	minimum-numbers-of-function-calls-to-make-target-array	Medium	{Array,Greedy,"Bit Manipulation"}
1559	Detect Cycles in 2D Grid	detect-cycles-in-2d-grid	Medium	{Array,"Depth-First Search","Breadth-First Search",Union-Find,Matrix}
1560	Most Visited Sector in  a Circular Track	most-visited-sector-in-a-circular-track	Easy	{Array,Simulation}
1561	Maximum Number of Coins You Can Get	maximum-number-of-coins-you-can-get	Medium	{Array,Math,Greedy,Sorting,"Game Theory"}
1562	Find Latest Group of Size M	find-latest-group-of-size-m	Medium	{Array,"Hash Table","Binary Search",Simulation}
1563	Stone Game V	stone-game-v	Hard	{Array,Math,"Dynamic Programming","Game Theory"}
1564	Put Boxes Into the Warehouse I	put-boxes-into-the-warehouse-i	Medium	{Array,Greedy,Sorting}
1565	Unique Orders and Customers Per Month	unique-orders-and-customers-per-month	Easy	{Database}
1566	Detect Pattern of Length M Repeated K or More Times	detect-pattern-of-length-m-repeated-k-or-more-times	Easy	{Array,Enumeration}
1567	Maximum Length of Subarray With Positive Product	maximum-length-of-subarray-with-positive-product	Medium	{Array,"Dynamic Programming",Greedy}
1568	Minimum Number of Days to Disconnect Island	minimum-number-of-days-to-disconnect-island	Hard	{Array,"Depth-First Search","Breadth-First Search",Matrix,"Strongly Connected Component"}
1569	Number of Ways to Reorder Array to Get Same BST	number-of-ways-to-reorder-array-to-get-same-bst	Hard	{Array,Math,"Divide and Conquer","Dynamic Programming",Tree,Union-Find,"Binary Search Tree",Memoization,Combinatorics,"Binary Tree"}
1570	Dot Product of Two Sparse Vectors	dot-product-of-two-sparse-vectors	Medium	{Array,"Hash Table","Two Pointers",Design}
1571	Warehouse Manager	warehouse-manager	Easy	{Database}
1572	Matrix Diagonal Sum	matrix-diagonal-sum	Easy	{Array,Matrix}
1573	Number of Ways to Split a String	number-of-ways-to-split-a-string	Medium	{Math,String}
1574	Shortest Subarray to be Removed to Make Array Sorted	shortest-subarray-to-be-removed-to-make-array-sorted	Medium	{Array,"Two Pointers","Binary Search",Stack,"Monotonic Stack"}
1575	Count All Possible Routes	count-all-possible-routes	Hard	{Array,"Dynamic Programming",Memoization}
1576	Replace All ?'s to Avoid Consecutive Repeating Characters	replace-all-s-to-avoid-consecutive-repeating-characters	Easy	{String}
1577	Number of Ways Where Square of Number Is Equal to Product of Two Numbers	number-of-ways-where-square-of-number-is-equal-to-product-of-two-numbers	Medium	{Array,"Hash Table",Math,"Two Pointers"}
1578	Minimum Time to Make Rope Colorful	minimum-time-to-make-rope-colorful	Medium	{Array,String,"Dynamic Programming",Greedy}
1579	Remove Max Number of Edges to Keep Graph Fully Traversable	remove-max-number-of-edges-to-keep-graph-fully-traversable	Hard	{Union-Find,"Graph Theory"}
1580	Put Boxes Into the Warehouse II	put-boxes-into-the-warehouse-ii	Medium	{Array,Greedy,Sorting}
1581	Customer Who Visited but Did Not Make Any Transactions	customer-who-visited-but-did-not-make-any-transactions	Easy	{Database}
1582	Special Positions in a Binary Matrix	special-positions-in-a-binary-matrix	Easy	{Array,Matrix}
1583	Count Unhappy Friends	count-unhappy-friends	Medium	{Array,Simulation}
2072	The Winner University	the-winner-university	Easy	{Database}
1584	Min Cost to Connect All Points	min-cost-to-connect-all-points	Medium	{Array,Union-Find,"Graph Theory","Minimum Spanning Tree"}
1585	Check If String Is Transformable With Substring Sort Operations	check-if-string-is-transformable-with-substring-sort-operations	Hard	{String,Greedy,Sorting}
1586	Binary Search Tree Iterator II	binary-search-tree-iterator-ii	Medium	{Stack,Tree,Design,"Binary Search Tree","Binary Tree",Iterator}
1587	Bank Account Summary II	bank-account-summary-ii	Easy	{Database}
1588	Sum of All Odd Length Subarrays	sum-of-all-odd-length-subarrays	Easy	{Array,Math,"Prefix Sum"}
1589	Maximum Sum Obtained of Any Permutation	maximum-sum-obtained-of-any-permutation	Medium	{Array,Greedy,Sorting,"Prefix Sum"}
1590	Make Sum Divisible by P	make-sum-divisible-by-p	Medium	{Array,"Hash Table","Prefix Sum"}
1591	Strange Printer II	strange-printer-ii	Hard	{Array,"Graph Theory","Topological Sort",Matrix}
1592	Rearrange Spaces Between Words	rearrange-spaces-between-words	Easy	{String}
1593	Split a String Into the Max Number of Unique Substrings	split-a-string-into-the-max-number-of-unique-substrings	Medium	{"Hash Table",String,Backtracking}
1594	Maximum Non Negative Product in a Matrix	maximum-non-negative-product-in-a-matrix	Medium	{Array,"Dynamic Programming",Matrix}
1595	Minimum Cost to Connect Two Groups of Points	minimum-cost-to-connect-two-groups-of-points	Hard	{Array,"Dynamic Programming","Bit Manipulation",Matrix,Bitmask}
1596	The Most Frequently Ordered Products for Each Customer	the-most-frequently-ordered-products-for-each-customer	Medium	{Database}
1597	Build Binary Expression Tree From Infix Expression	build-binary-expression-tree-from-infix-expression	Hard	{String,Stack,Tree,"Binary Tree"}
1598	Crawler Log Folder	crawler-log-folder	Easy	{Array,String,Stack}
1599	Maximum Profit of Operating a Centennial Wheel	maximum-profit-of-operating-a-centennial-wheel	Medium	{Array,Simulation}
1600	Throne Inheritance	throne-inheritance	Medium	{"Hash Table",Tree,"Depth-First Search",Design}
1601	Maximum Number of Achievable Transfer Requests	maximum-number-of-achievable-transfer-requests	Hard	{Array,Backtracking,"Bit Manipulation",Enumeration}
1602	Find Nearest Right Node in Binary Tree	find-nearest-right-node-in-binary-tree	Medium	{Tree,"Breadth-First Search","Binary Tree"}
1603	Design Parking System	design-parking-system	Easy	{Design,Simulation,Counting}
1604	Alert Using Same Key-Card Three or More Times in a One Hour Period	alert-using-same-key-card-three-or-more-times-in-a-one-hour-period	Medium	{Array,"Hash Table",String,Sorting}
1605	Find Valid Matrix Given Row and Column Sums	find-valid-matrix-given-row-and-column-sums	Medium	{Array,Greedy,Matrix}
1606	Find Servers That Handled Most Number of Requests	find-servers-that-handled-most-number-of-requests	Hard	{Array,"Heap (Priority Queue)",Simulation,"Ordered Set"}
1607	Sellers With No Sales	sellers-with-no-sales	Easy	{Database}
1608	Special Array With X Elements Greater Than or Equal X	special-array-with-x-elements-greater-than-or-equal-x	Easy	{Array,"Binary Search",Sorting}
1609	Even Odd Tree	even-odd-tree	Medium	{Tree,"Breadth-First Search","Binary Tree"}
1610	Maximum Number of Visible Points	maximum-number-of-visible-points	Hard	{Array,Math,Geometry,"Sliding Window",Sorting}
1611	Minimum One Bit Operations to Make Integers Zero	minimum-one-bit-operations-to-make-integers-zero	Hard	{Math,"Dynamic Programming","Bit Manipulation",Recursion,Memoization}
1612	Check If Two Expression Trees are Equivalent	check-if-two-expression-trees-are-equivalent	Medium	{"Hash Table",Tree,"Depth-First Search","Binary Tree",Counting}
1613	Find the Missing IDs	find-the-missing-ids	Medium	{Database}
1614	Maximum Nesting Depth of the Parentheses	maximum-nesting-depth-of-the-parentheses	Easy	{String,Stack}
1615	Maximal Network Rank	maximal-network-rank	Medium	{"Graph Theory"}
1616	Split Two Strings to Make Palindrome	split-two-strings-to-make-palindrome	Medium	{"Two Pointers",String}
1617	Count Subtrees With Max Distance Between Cities	count-subtrees-with-max-distance-between-cities	Hard	{"Dynamic Programming","Bit Manipulation",Tree,Enumeration,Bitmask}
1618	Maximum Font to Fit a Sentence in a Screen	maximum-font-to-fit-a-sentence-in-a-screen	Medium	{Array,String,"Binary Search",Interactive}
1619	Mean of Array After Removing Some Elements	mean-of-array-after-removing-some-elements	Easy	{Array,Sorting}
1620	Coordinate With Maximum Network Quality	coordinate-with-maximum-network-quality	Medium	{Array,Enumeration}
1621	Number of Sets of K Non-Overlapping Line Segments	number-of-sets-of-k-non-overlapping-line-segments	Medium	{Math,"Dynamic Programming",Combinatorics,"Prefix Sum"}
1622	Fancy Sequence	fancy-sequence	Hard	{Math,Design,"Segment Tree"}
1623	All Valid Triplets That Can Represent a Country	all-valid-triplets-that-can-represent-a-country	Easy	{Database}
1624	Largest Substring Between Two Equal Characters	largest-substring-between-two-equal-characters	Easy	{"Hash Table",String}
1625	Lexicographically Smallest String After Applying Operations	lexicographically-smallest-string-after-applying-operations	Medium	{String,"Depth-First Search","Breadth-First Search",Enumeration}
1626	Best Team With No Conflicts	best-team-with-no-conflicts	Medium	{Array,"Dynamic Programming",Sorting}
2293	Min Max Game	min-max-game	Easy	{Array,Simulation}
1627	Graph Connectivity With Threshold	graph-connectivity-with-threshold	Hard	{Array,Math,Union-Find,"Number Theory"}
1628	Design an Expression Tree With Evaluate Function	design-an-expression-tree-with-evaluate-function	Medium	{Array,Math,Stack,Tree,Design,"Binary Tree"}
1629	Slowest Key	slowest-key	Easy	{Array,String}
1630	Arithmetic Subarrays	arithmetic-subarrays	Medium	{Array,"Hash Table",Sorting}
1631	Path With Minimum Effort	path-with-minimum-effort	Medium	{Array,"Binary Search","Depth-First Search","Breadth-First Search",Union-Find,"Heap (Priority Queue)",Matrix}
1632	Rank Transform of a Matrix	rank-transform-of-a-matrix	Hard	{Array,Union-Find,"Graph Theory","Topological Sort",Sorting,Matrix}
1633	Percentage of Users Attended a Contest	percentage-of-users-attended-a-contest	Easy	{Database}
1634	Add Two Polynomials Represented as Linked Lists	add-two-polynomials-represented-as-linked-lists	Medium	{"Linked List",Math,"Two Pointers"}
1635	Hopper Company Queries I	hopper-company-queries-i	Hard	{Database}
1636	Sort Array by Increasing Frequency	sort-array-by-increasing-frequency	Easy	{Array,"Hash Table",Sorting}
1637	Widest Vertical Area Between Two Points Containing No Points	widest-vertical-area-between-two-points-containing-no-points	Easy	{Array,Sorting}
1638	Count Substrings That Differ by One Character	count-substrings-that-differ-by-one-character	Medium	{"Hash Table",String,"Dynamic Programming",Enumeration}
1639	Number of Ways to Form a Target String Given a Dictionary	number-of-ways-to-form-a-target-string-given-a-dictionary	Hard	{Array,String,"Dynamic Programming"}
1640	Check Array Formation Through Concatenation	check-array-formation-through-concatenation	Easy	{Array,"Hash Table"}
1641	Count Sorted Vowel Strings	count-sorted-vowel-strings	Medium	{Math,"Dynamic Programming",Combinatorics}
1642	Furthest Building You Can Reach	furthest-building-you-can-reach	Medium	{Array,Greedy,"Heap (Priority Queue)"}
1643	Kth Smallest Instructions	kth-smallest-instructions	Hard	{Array,Math,"Dynamic Programming",Combinatorics}
1644	Lowest Common Ancestor of a Binary Tree II	lowest-common-ancestor-of-a-binary-tree-ii	Medium	{Tree,"Depth-First Search","Binary Tree"}
1645	Hopper Company Queries II	hopper-company-queries-ii	Hard	{Database}
1646	Get Maximum in Generated Array	get-maximum-in-generated-array	Easy	{Array,Simulation}
1647	Minimum Deletions to Make Character Frequencies Unique	minimum-deletions-to-make-character-frequencies-unique	Medium	{"Hash Table",String,Greedy,Sorting}
1648	Sell Diminishing-Valued Colored Balls	sell-diminishing-valued-colored-balls	Medium	{Array,Math,"Binary Search",Greedy,Sorting,"Heap (Priority Queue)"}
1649	Create Sorted Array through Instructions	create-sorted-array-through-instructions	Hard	{Array,"Binary Search","Divide and Conquer","Binary Indexed Tree","Segment Tree","Merge Sort","Ordered Set"}
1650	Lowest Common Ancestor of a Binary Tree III	lowest-common-ancestor-of-a-binary-tree-iii	Medium	{"Hash Table","Two Pointers",Tree,"Binary Tree"}
1651	Hopper Company Queries III	hopper-company-queries-iii	Hard	{Database}
1652	Defuse the Bomb	defuse-the-bomb	Easy	{Array,"Sliding Window"}
1653	Minimum Deletions to Make String Balanced	minimum-deletions-to-make-string-balanced	Medium	{String,"Dynamic Programming",Stack}
1654	Minimum Jumps to Reach Home	minimum-jumps-to-reach-home	Medium	{Array,"Hash Table","Breadth-First Search"}
1655	Distribute Repeating Integers	distribute-repeating-integers	Hard	{Array,"Hash Table","Dynamic Programming",Backtracking,"Bit Manipulation",Counting,Bitmask}
1656	Design an Ordered Stream	design-an-ordered-stream	Easy	{Array,"Hash Table",Design,"Data Stream"}
1657	Determine if Two Strings Are Close	determine-if-two-strings-are-close	Medium	{"Hash Table",String,Sorting,Counting}
1658	Minimum Operations to Reduce X to Zero	minimum-operations-to-reduce-x-to-zero	Medium	{Array,"Hash Table","Binary Search","Sliding Window","Prefix Sum"}
1659	Maximize Grid Happiness	maximize-grid-happiness	Hard	{"Dynamic Programming","Bit Manipulation",Memoization,Bitmask}
1660	Correct a Binary Tree	correct-a-binary-tree	Medium	{"Hash Table",Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
1661	Average Time of Process per Machine	average-time-of-process-per-machine	Easy	{Database}
1662	Check If Two String Arrays are Equivalent	check-if-two-string-arrays-are-equivalent	Easy	{Array,String}
1663	Smallest String With A Given Numeric Value	smallest-string-with-a-given-numeric-value	Medium	{String,Greedy}
1664	Ways to Make a Fair Array	ways-to-make-a-fair-array	Medium	{Array,"Prefix Sum"}
1665	Minimum Initial Energy to Finish Tasks	minimum-initial-energy-to-finish-tasks	Hard	{Array,Greedy,Sorting}
1666	Change the Root of a Binary Tree	change-the-root-of-a-binary-tree	Medium	{Tree,"Depth-First Search","Binary Tree"}
1667	Fix Names in a Table	fix-names-in-a-table	Easy	{Database}
1668	Maximum Repeating Substring	maximum-repeating-substring	Easy	{String,"Dynamic Programming","String Matching"}
1669	Merge In Between Linked Lists	merge-in-between-linked-lists	Medium	{"Linked List"}
1670	Design Front Middle Back Queue	design-front-middle-back-queue	Medium	{Array,"Linked List",Design,Queue,"Doubly-Linked List","Data Stream"}
1671	Minimum Number of Removals to Make Mountain Array	minimum-number-of-removals-to-make-mountain-array	Hard	{Array,"Binary Search","Dynamic Programming",Greedy}
1672	Richest Customer Wealth	richest-customer-wealth	Easy	{Array,Matrix}
1673	Find the Most Competitive Subsequence	find-the-most-competitive-subsequence	Medium	{Array,Stack,Greedy,"Monotonic Stack"}
1674	Minimum Moves to Make Array Complementary	minimum-moves-to-make-array-complementary	Medium	{Array,"Hash Table","Prefix Sum"}
1675	Minimize Deviation in Array	minimize-deviation-in-array	Hard	{Array,Greedy,"Heap (Priority Queue)","Ordered Set"}
1676	Lowest Common Ancestor of a Binary Tree IV	lowest-common-ancestor-of-a-binary-tree-iv	Medium	{"Hash Table",Tree,"Depth-First Search","Binary Tree"}
1677	Product's Worth Over Invoices	products-worth-over-invoices	Easy	{Database}
1678	Goal Parser Interpretation	goal-parser-interpretation	Easy	{String}
1679	Max Number of K-Sum Pairs	max-number-of-k-sum-pairs	Medium	{Array,"Hash Table","Two Pointers",Sorting}
1680	Concatenation of Consecutive Binary Numbers	concatenation-of-consecutive-binary-numbers	Medium	{Math,"Bit Manipulation",Simulation}
1681	Minimum Incompatibility	minimum-incompatibility	Hard	{Array,"Hash Table","Dynamic Programming","Bit Manipulation",Bitmask}
1682	Longest Palindromic Subsequence II	longest-palindromic-subsequence-ii	Medium	{String,"Dynamic Programming"}
1683	Invalid Tweets	invalid-tweets	Easy	{Database}
1684	Count the Number of Consistent Strings	count-the-number-of-consistent-strings	Easy	{Array,"Hash Table",String,"Bit Manipulation",Counting}
1685	Sum of Absolute Differences in a Sorted Array	sum-of-absolute-differences-in-a-sorted-array	Medium	{Array,Math,"Prefix Sum"}
1686	Stone Game VI	stone-game-vi	Medium	{Array,Math,Greedy,Sorting,"Heap (Priority Queue)","Game Theory"}
1687	Delivering Boxes from Storage to Ports	delivering-boxes-from-storage-to-ports	Hard	{Array,"Dynamic Programming","Segment Tree",Queue,"Heap (Priority Queue)","Prefix Sum","Monotonic Queue"}
1688	Count of Matches in Tournament	count-of-matches-in-tournament	Easy	{Math,Simulation}
1689	Partitioning Into Minimum Number Of Deci-Binary Numbers	partitioning-into-minimum-number-of-deci-binary-numbers	Medium	{String,Greedy}
1690	Stone Game VII	stone-game-vii	Medium	{Array,Math,"Dynamic Programming","Game Theory"}
1691	Maximum Height by Stacking Cuboids 	maximum-height-by-stacking-cuboids	Hard	{Array,"Dynamic Programming",Sorting}
1692	Count Ways to Distribute Candies	count-ways-to-distribute-candies	Hard	{"Dynamic Programming"}
1693	Daily Leads and Partners	daily-leads-and-partners	Easy	{Database}
1694	Reformat Phone Number	reformat-phone-number	Easy	{String}
1695	Maximum Erasure Value	maximum-erasure-value	Medium	{Array,"Hash Table","Sliding Window"}
1696	Jump Game VI	jump-game-vi	Medium	{Array,"Dynamic Programming",Queue,"Heap (Priority Queue)","Monotonic Queue"}
1697	Checking Existence of Edge Length Limited Paths	checking-existence-of-edge-length-limited-paths	Hard	{Array,"Two Pointers",Union-Find,"Graph Theory",Sorting}
1698	Number of Distinct Substrings in a String	number-of-distinct-substrings-in-a-string	Medium	{String,Trie,"Rolling Hash","Suffix Array","Hash Function"}
1699	Number of Calls Between Two Persons	number-of-calls-between-two-persons	Medium	{Database}
1700	Number of Students Unable to Eat Lunch	number-of-students-unable-to-eat-lunch	Easy	{Array,Stack,Queue,Simulation}
1701	Average Waiting Time	average-waiting-time	Medium	{Array,Simulation}
1702	Maximum Binary String After Change	maximum-binary-string-after-change	Medium	{String,Greedy}
1703	Minimum Adjacent Swaps for K Consecutive Ones	minimum-adjacent-swaps-for-k-consecutive-ones	Hard	{Array,Greedy,"Sliding Window","Prefix Sum"}
1704	Determine if String Halves Are Alike	determine-if-string-halves-are-alike	Easy	{String,Counting}
1705	Maximum Number of Eaten Apples	maximum-number-of-eaten-apples	Medium	{Array,Greedy,"Heap (Priority Queue)"}
1706	Where Will the Ball Fall	where-will-the-ball-fall	Medium	{Array,Matrix,Simulation}
1707	Maximum XOR With an Element From Array	maximum-xor-with-an-element-from-array	Hard	{Array,"Bit Manipulation",Trie}
1708	Largest Subarray Length K	largest-subarray-length-k	Easy	{Array,Greedy}
1709	Biggest Window Between Visits	biggest-window-between-visits	Medium	{Database}
1710	Maximum Units on a Truck	maximum-units-on-a-truck	Easy	{Array,Greedy,Sorting}
1711	Count Good Meals	count-good-meals	Medium	{Array,"Hash Table"}
1712	Ways to Split Array Into Three Subarrays	ways-to-split-array-into-three-subarrays	Medium	{Array,"Two Pointers","Binary Search","Prefix Sum"}
1713	Minimum Operations to Make a Subsequence	minimum-operations-to-make-a-subsequence	Hard	{Array,"Hash Table","Binary Search",Greedy}
1714	Sum Of Special Evenly-Spaced Elements In Array	sum-of-special-evenly-spaced-elements-in-array	Hard	{Array,"Dynamic Programming"}
1715	Count Apples and Oranges	count-apples-and-oranges	Medium	{Database}
1716	Calculate Money in Leetcode Bank	calculate-money-in-leetcode-bank	Easy	{Math}
1717	Maximum Score From Removing Substrings	maximum-score-from-removing-substrings	Medium	{String,Stack,Greedy}
1718	Construct the Lexicographically Largest Valid Sequence	construct-the-lexicographically-largest-valid-sequence	Medium	{Array,Backtracking}
1719	Number Of Ways To Reconstruct A Tree	number-of-ways-to-reconstruct-a-tree	Hard	{Array,"Hash Table",Tree,"Graph Theory",Simulation}
1720	Decode XORed Array	decode-xored-array	Easy	{Array,"Bit Manipulation"}
1721	Swapping Nodes in a Linked List	swapping-nodes-in-a-linked-list	Medium	{"Linked List","Two Pointers"}
1722	Minimize Hamming Distance After Swap Operations	minimize-hamming-distance-after-swap-operations	Medium	{Array,"Depth-First Search",Union-Find}
1723	Find Minimum Time to Finish All Jobs	find-minimum-time-to-finish-all-jobs	Hard	{Array,"Dynamic Programming",Backtracking,"Bit Manipulation",Bitmask}
1724	Checking Existence of Edge Length Limited Paths II	checking-existence-of-edge-length-limited-paths-ii	Hard	{"Depth-First Search",Union-Find,"Graph Theory",Design,Sorting,"Heap (Priority Queue)","Minimum Spanning Tree"}
1725	Number Of Rectangles That Can Form The Largest Square	number-of-rectangles-that-can-form-the-largest-square	Easy	{Array}
1726	Tuple with Same Product	tuple-with-same-product	Medium	{Array,"Hash Table",Counting}
1727	Largest Submatrix With Rearrangements	largest-submatrix-with-rearrangements	Medium	{Array,Greedy,Sorting,Matrix}
1728	Cat and Mouse II	cat-and-mouse-ii	Hard	{Array,Math,"Dynamic Programming","Graph Theory","Topological Sort",Memoization,Matrix,"Game Theory"}
1729	Find Followers Count	find-followers-count	Easy	{Database}
1730	Shortest Path to Get Food	shortest-path-to-get-food	Medium	{Array,"Breadth-First Search",Matrix}
1731	The Number of Employees Which Report to Each Employee	the-number-of-employees-which-report-to-each-employee	Easy	{Database}
1732	Find the Highest Altitude	find-the-highest-altitude	Easy	{Array,"Prefix Sum"}
1733	Minimum Number of People to Teach	minimum-number-of-people-to-teach	Medium	{Array,"Hash Table",Greedy}
1734	Decode XORed Permutation	decode-xored-permutation	Medium	{Array,"Bit Manipulation"}
1735	Count Ways to Make Array With Product	count-ways-to-make-array-with-product	Hard	{Array,Math,"Dynamic Programming",Combinatorics,"Number Theory"}
1736	Latest Time by Replacing Hidden Digits	latest-time-by-replacing-hidden-digits	Easy	{String,Greedy}
1737	Change Minimum Characters to Satisfy One of Three Conditions	change-minimum-characters-to-satisfy-one-of-three-conditions	Medium	{"Hash Table",String,Counting,"Prefix Sum"}
1738	Find Kth Largest XOR Coordinate Value	find-kth-largest-xor-coordinate-value	Medium	{Array,"Divide and Conquer","Bit Manipulation",Sorting,"Heap (Priority Queue)",Matrix,"Prefix Sum",Quickselect}
1739	Building Boxes	building-boxes	Hard	{Math,"Binary Search",Greedy}
1740	Find Distance in a Binary Tree	find-distance-in-a-binary-tree	Medium	{"Hash Table",Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
1741	Find Total Time Spent by Each Employee	find-total-time-spent-by-each-employee	Easy	{Database}
1742	Maximum Number of Balls in a Box	maximum-number-of-balls-in-a-box	Easy	{"Hash Table",Math,Counting}
1743	Restore the Array From Adjacent Pairs	restore-the-array-from-adjacent-pairs	Medium	{Array,"Hash Table","Depth-First Search"}
1744	Can You Eat Your Favorite Candy on Your Favorite Day?	can-you-eat-your-favorite-candy-on-your-favorite-day	Medium	{Array,"Prefix Sum"}
1745	Palindrome Partitioning IV	palindrome-partitioning-iv	Hard	{String,"Dynamic Programming"}
1746	Maximum Subarray Sum After One Operation	maximum-subarray-sum-after-one-operation	Medium	{Array,"Dynamic Programming"}
1747	Leetflex Banned Accounts	leetflex-banned-accounts	Medium	{Database}
1748	Sum of Unique Elements	sum-of-unique-elements	Easy	{Array,"Hash Table",Counting}
1749	Maximum Absolute Sum of Any Subarray	maximum-absolute-sum-of-any-subarray	Medium	{Array,"Dynamic Programming"}
1750	Minimum Length of String After Deleting Similar Ends	minimum-length-of-string-after-deleting-similar-ends	Medium	{"Two Pointers",String}
1751	Maximum Number of Events That Can Be Attended II	maximum-number-of-events-that-can-be-attended-ii	Hard	{Array,"Binary Search","Dynamic Programming",Sorting}
1752	Check if Array Is Sorted and Rotated	check-if-array-is-sorted-and-rotated	Easy	{Array}
1753	Maximum Score From Removing Stones	maximum-score-from-removing-stones	Medium	{Math,Greedy,"Heap (Priority Queue)"}
1754	Largest Merge Of Two Strings	largest-merge-of-two-strings	Medium	{"Two Pointers",String,Greedy}
1755	Closest Subsequence Sum	closest-subsequence-sum	Hard	{Array,"Two Pointers","Dynamic Programming","Bit Manipulation",Sorting,Bitmask}
1756	Design Most Recently Used Queue	design-most-recently-used-queue	Medium	{Array,"Linked List","Divide and Conquer",Design,Simulation,"Doubly-Linked List"}
1757	Recyclable and Low Fat Products	recyclable-and-low-fat-products	Easy	{Database}
1758	Minimum Changes To Make Alternating Binary String	minimum-changes-to-make-alternating-binary-string	Easy	{String}
1759	Count Number of Homogenous Substrings	count-number-of-homogenous-substrings	Medium	{Math,String}
1760	Minimum Limit of Balls in a Bag	minimum-limit-of-balls-in-a-bag	Medium	{Array,"Binary Search"}
1761	Minimum Degree of a Connected Trio in a Graph	minimum-degree-of-a-connected-trio-in-a-graph	Hard	{"Graph Theory",Enumeration}
2339	All the Matches of the League	all-the-matches-of-the-league	Easy	{Database}
1762	Buildings With an Ocean View	buildings-with-an-ocean-view	Medium	{Array,Stack,"Monotonic Stack"}
1763	Longest Nice Substring	longest-nice-substring	Easy	{"Hash Table",String,"Divide and Conquer","Bit Manipulation","Sliding Window"}
1764	Form Array by Concatenating Subarrays of Another Array	form-array-by-concatenating-subarrays-of-another-array	Medium	{Array,"Two Pointers",Greedy,"String Matching"}
1765	Map of Highest Peak	map-of-highest-peak	Medium	{Array,"Breadth-First Search",Matrix}
1766	Tree of Coprimes	tree-of-coprimes	Hard	{Array,Math,Tree,"Depth-First Search","Number Theory"}
1767	Find the Subtasks That Did Not Execute	find-the-subtasks-that-did-not-execute	Hard	{Database}
1768	Merge Strings Alternately	merge-strings-alternately	Easy	{"Two Pointers",String}
1769	Minimum Number of Operations to Move All Balls to Each Box	minimum-number-of-operations-to-move-all-balls-to-each-box	Medium	{Array,String,"Prefix Sum"}
1770	Maximum Score from Performing Multiplication Operations	maximum-score-from-performing-multiplication-operations	Hard	{Array,"Dynamic Programming"}
1771	Maximize Palindrome Length From Subsequences	maximize-palindrome-length-from-subsequences	Hard	{String,"Dynamic Programming"}
1772	Sort Features by Popularity	sort-features-by-popularity	Medium	{Array,"Hash Table",String,Sorting}
1773	Count Items Matching a Rule	count-items-matching-a-rule	Easy	{Array,String}
1774	Closest Dessert Cost	closest-dessert-cost	Medium	{Array,"Dynamic Programming",Backtracking}
1775	Equal Sum Arrays With Minimum Number of Operations	equal-sum-arrays-with-minimum-number-of-operations	Medium	{Array,"Hash Table",Greedy,Counting}
1776	Car Fleet II	car-fleet-ii	Hard	{Array,Math,Stack,"Heap (Priority Queue)","Monotonic Stack"}
1777	Product's Price for Each Store	products-price-for-each-store	Easy	{Database}
1778	Shortest Path in a Hidden Grid	shortest-path-in-a-hidden-grid	Medium	{Array,"Depth-First Search","Breadth-First Search",Matrix,Interactive}
1779	Find Nearest Point That Has the Same X or Y Coordinate	find-nearest-point-that-has-the-same-x-or-y-coordinate	Easy	{Array}
1780	Check if Number is a Sum of Powers of Three	check-if-number-is-a-sum-of-powers-of-three	Medium	{Math}
1781	Sum of Beauty of All Substrings	sum-of-beauty-of-all-substrings	Medium	{"Hash Table",String,Counting}
1782	Count Pairs Of Nodes	count-pairs-of-nodes	Hard	{Array,"Hash Table","Two Pointers","Binary Search","Graph Theory",Sorting,Counting}
1783	Grand Slam Titles	grand-slam-titles	Medium	{Database}
1784	Check if Binary String Has at Most One Segment of Ones	check-if-binary-string-has-at-most-one-segment-of-ones	Easy	{String}
1785	Minimum Elements to Add to Form a Given Sum	minimum-elements-to-add-to-form-a-given-sum	Medium	{Array,Greedy}
1786	Number of Restricted Paths From First to Last Node	number-of-restricted-paths-from-first-to-last-node	Medium	{"Dynamic Programming","Graph Theory","Topological Sort","Heap (Priority Queue)","Shortest Path"}
1787	Make the XOR of All Segments Equal to Zero	make-the-xor-of-all-segments-equal-to-zero	Hard	{Array,"Hash Table","Dynamic Programming","Bit Manipulation",Counting}
1788	Maximize the Beauty of the Garden	maximize-the-beauty-of-the-garden	Hard	{Array,"Hash Table",Greedy,"Prefix Sum"}
1789	Primary Department for Each Employee	primary-department-for-each-employee	Easy	{Database}
1790	Check if One String Swap Can Make Strings Equal	check-if-one-string-swap-can-make-strings-equal	Easy	{"Hash Table",String,Counting}
1791	Find Center of Star Graph	find-center-of-star-graph	Easy	{"Graph Theory"}
1792	Maximum Average Pass Ratio	maximum-average-pass-ratio	Medium	{Array,Greedy,"Heap (Priority Queue)"}
1793	Maximum Score of a Good Subarray	maximum-score-of-a-good-subarray	Hard	{Array,"Two Pointers","Binary Search",Stack,"Monotonic Stack"}
1794	Count Pairs of Equal Substrings With Minimum Difference	count-pairs-of-equal-substrings-with-minimum-difference	Medium	{"Hash Table",String,Greedy}
1795	Rearrange Products Table	rearrange-products-table	Easy	{Database}
1796	Second Largest Digit in a String	second-largest-digit-in-a-string	Easy	{"Hash Table",String}
1797	Design Authentication Manager	design-authentication-manager	Medium	{"Hash Table","Linked List",Design,"Doubly-Linked List"}
1798	Maximum Number of Consecutive Values You Can Make	maximum-number-of-consecutive-values-you-can-make	Medium	{Array,Greedy,Sorting}
1799	Maximize Score After N Operations	maximize-score-after-n-operations	Hard	{Array,Math,"Dynamic Programming",Backtracking,"Bit Manipulation","Number Theory",Bitmask}
1800	Maximum Ascending Subarray Sum	maximum-ascending-subarray-sum	Easy	{Array}
1801	Number of Orders in the Backlog	number-of-orders-in-the-backlog	Medium	{Array,"Heap (Priority Queue)",Simulation}
1802	Maximum Value at a Given Index in a Bounded Array	maximum-value-at-a-given-index-in-a-bounded-array	Medium	{Math,"Binary Search",Greedy}
1803	Count Pairs With XOR in a Range	count-pairs-with-xor-in-a-range	Hard	{Array,"Bit Manipulation",Trie}
1804	Implement Trie II (Prefix Tree)	implement-trie-ii-prefix-tree	Medium	{"Hash Table",String,Design,Trie}
1805	Number of Different Integers in a String	number-of-different-integers-in-a-string	Easy	{"Hash Table",String}
3386	Button with Longest Push Time	button-with-longest-push-time	Easy	{Array}
1806	Minimum Number of Operations to Reinitialize a Permutation	minimum-number-of-operations-to-reinitialize-a-permutation	Medium	{Array,Math,Simulation}
1807	Evaluate the Bracket Pairs of a String	evaluate-the-bracket-pairs-of-a-string	Medium	{Array,"Hash Table",String}
1808	Maximize Number of Nice Divisors	maximize-number-of-nice-divisors	Hard	{Math,Recursion,"Number Theory"}
1809	Ad-Free Sessions	ad-free-sessions	Easy	{Database}
1810	Minimum Path Cost in a Hidden Grid	minimum-path-cost-in-a-hidden-grid	Medium	{Array,"Depth-First Search","Breadth-First Search","Graph Theory","Heap (Priority Queue)",Matrix,Interactive,"Shortest Path"}
1811	Find Interview Candidates	find-interview-candidates	Medium	{Database}
1812	Determine Color of a Chessboard Square	determine-color-of-a-chessboard-square	Easy	{Math,String}
1813	Sentence Similarity III	sentence-similarity-iii	Medium	{Array,"Two Pointers",String}
1814	Count Nice Pairs in an Array	count-nice-pairs-in-an-array	Medium	{Array,"Hash Table",Math,Counting}
1815	Maximum Number of Groups Getting Fresh Donuts	maximum-number-of-groups-getting-fresh-donuts	Hard	{Array,"Dynamic Programming","Bit Manipulation",Memoization,Bitmask}
1816	Truncate Sentence	truncate-sentence	Easy	{Array,String}
1817	Finding the Users Active Minutes	finding-the-users-active-minutes	Medium	{Array,"Hash Table"}
1818	Minimum Absolute Sum Difference	minimum-absolute-sum-difference	Medium	{Array,"Binary Search",Sorting,"Ordered Set"}
1819	Number of Different Subsequences GCDs	number-of-different-subsequences-gcds	Hard	{Array,Math,Counting,"Number Theory"}
1820	Maximum Number of Accepted Invitations	maximum-number-of-accepted-invitations	Medium	{Array,"Depth-First Search","Graph Theory",Matrix}
1821	Find Customers With Positive Revenue this Year	find-customers-with-positive-revenue-this-year	Easy	{Database}
1822	Sign of the Product of an Array	sign-of-the-product-of-an-array	Easy	{Array,Math}
1823	Find the Winner of the Circular Game	find-the-winner-of-the-circular-game	Medium	{Array,Math,Recursion,Queue,Simulation}
1824	Minimum Sideway Jumps	minimum-sideway-jumps	Medium	{Array,"Dynamic Programming",Greedy}
1825	Finding MK Average	finding-mk-average	Hard	{Design,Queue,"Heap (Priority Queue)","Data Stream","Ordered Set"}
1826	Faulty Sensor	faulty-sensor	Easy	{Array,"Two Pointers"}
1827	Minimum Operations to Make the Array Increasing	minimum-operations-to-make-the-array-increasing	Easy	{Array,Greedy}
1828	Queries on Number of Points Inside a Circle	queries-on-number-of-points-inside-a-circle	Medium	{Array,Math,Geometry}
1829	Maximum XOR for Each Query	maximum-xor-for-each-query	Medium	{Array,"Bit Manipulation","Prefix Sum"}
1830	Minimum Number of Operations to Make String Sorted	minimum-number-of-operations-to-make-string-sorted	Hard	{"Hash Table",Math,String,Combinatorics,Counting}
1831	Maximum Transaction Each Day	maximum-transaction-each-day	Medium	{Database}
1832	Check if the Sentence Is Pangram	check-if-the-sentence-is-pangram	Easy	{"Hash Table",String}
1833	Maximum Ice Cream Bars	maximum-ice-cream-bars	Medium	{Array,Greedy,Sorting,"Counting Sort"}
1834	Single-Threaded CPU	single-threaded-cpu	Medium	{Array,Sorting,"Heap (Priority Queue)"}
1835	Find XOR Sum of All Pairs Bitwise AND	find-xor-sum-of-all-pairs-bitwise-and	Hard	{Array,Math,"Bit Manipulation"}
1836	Remove Duplicates From an Unsorted Linked List	remove-duplicates-from-an-unsorted-linked-list	Medium	{"Hash Table","Linked List"}
1837	Sum of Digits in Base K	sum-of-digits-in-base-k	Easy	{Math}
1838	Frequency of the Most Frequent Element	frequency-of-the-most-frequent-element	Medium	{Array,"Binary Search",Greedy,"Sliding Window",Sorting,"Prefix Sum"}
1839	Longest Substring Of All Vowels in Order	longest-substring-of-all-vowels-in-order	Medium	{String,"Sliding Window"}
1840	Maximum Building Height	maximum-building-height	Hard	{Array,Math,Sorting}
1841	League Statistics	league-statistics	Medium	{Database}
1842	Next Palindrome Using Same Digits	next-palindrome-using-same-digits	Hard	{"Two Pointers",String}
1843	Suspicious Bank Accounts	suspicious-bank-accounts	Medium	{Database}
1844	Replace All Digits with Characters	replace-all-digits-with-characters	Easy	{String}
1845	Seat Reservation Manager	seat-reservation-manager	Medium	{Design,"Heap (Priority Queue)"}
1846	Maximum Element After Decreasing and Rearranging	maximum-element-after-decreasing-and-rearranging	Medium	{Array,Greedy,Sorting}
1847	Closest Room	closest-room	Hard	{Array,"Binary Search",Sorting,"Ordered Set"}
1848	Minimum Distance to the Target Element	minimum-distance-to-the-target-element	Easy	{Array}
1849	Splitting a String Into Descending Consecutive Values	splitting-a-string-into-descending-consecutive-values	Medium	{String,Backtracking,Enumeration}
1850	Minimum Adjacent Swaps to Reach the Kth Smallest Number	minimum-adjacent-swaps-to-reach-the-kth-smallest-number	Medium	{"Two Pointers",String,Greedy}
1851	Minimum Interval to Include Each Query	minimum-interval-to-include-each-query	Hard	{Array,"Binary Search","Sweep Line",Sorting,"Heap (Priority Queue)"}
1852	Distinct Numbers in Each Subarray	distinct-numbers-in-each-subarray	Medium	{Array,"Hash Table","Sliding Window"}
1854	Maximum Population Year	maximum-population-year	Easy	{Array,Counting,"Prefix Sum"}
1855	Maximum Distance Between a Pair of Values	maximum-distance-between-a-pair-of-values	Medium	{Array,"Two Pointers","Binary Search"}
1856	Maximum Subarray Min-Product	maximum-subarray-min-product	Medium	{Array,Stack,"Monotonic Stack","Prefix Sum"}
1857	Largest Color Value in a Directed Graph	largest-color-value-in-a-directed-graph	Hard	{"Hash Table",String,"Dynamic Programming","Graph Theory","Topological Sort",Memoization,Counting}
1858	Longest Word With All Prefixes	longest-word-with-all-prefixes	Medium	{Array,String,"Depth-First Search",Trie}
1859	Sorting the Sentence	sorting-the-sentence	Easy	{String,Sorting}
1860	Incremental Memory Leak	incremental-memory-leak	Medium	{Math,Simulation}
1861	Rotating the Box	rotating-the-box	Medium	{Array,"Two Pointers",Matrix}
1862	Sum of Floored Pairs	sum-of-floored-pairs	Hard	{Array,Math,"Binary Search",Counting,Enumeration,"Prefix Sum"}
1863	Sum of All Subset XOR Totals	sum-of-all-subset-xor-totals	Easy	{Array,Math,Backtracking,"Bit Manipulation",Combinatorics,Enumeration}
1864	Minimum Number of Swaps to Make the Binary String Alternating	minimum-number-of-swaps-to-make-the-binary-string-alternating	Medium	{String,Greedy}
1865	Finding Pairs With a Certain Sum	finding-pairs-with-a-certain-sum	Medium	{Array,"Hash Table",Design}
1866	Number of Ways to Rearrange Sticks With K Sticks Visible	number-of-ways-to-rearrange-sticks-with-k-sticks-visible	Hard	{Math,"Dynamic Programming",Combinatorics}
1867	Orders With Maximum Quantity Above Average	orders-with-maximum-quantity-above-average	Medium	{Database}
1868	Product of Two Run-Length Encoded Arrays	product-of-two-run-length-encoded-arrays	Medium	{Array,"Two Pointers"}
1869	Longer Contiguous Segments of Ones than Zeros	longer-contiguous-segments-of-ones-than-zeros	Easy	{String}
1870	Minimum Speed to Arrive on Time	minimum-speed-to-arrive-on-time	Medium	{Array,"Binary Search"}
1871	Jump Game VII	jump-game-vii	Medium	{String,"Dynamic Programming","Sliding Window","Prefix Sum"}
1872	Stone Game VIII	stone-game-viii	Hard	{Array,Math,"Dynamic Programming","Prefix Sum","Game Theory"}
1873	Calculate Special Bonus	calculate-special-bonus	Easy	{Database}
1874	Minimize Product Sum of Two Arrays	minimize-product-sum-of-two-arrays	Medium	{Array,Greedy,Sorting}
1875	Group Employees of the Same Salary	group-employees-of-the-same-salary	Medium	{Database}
1876	Substrings of Size Three with Distinct Characters	substrings-of-size-three-with-distinct-characters	Easy	{"Hash Table",String,"Sliding Window",Counting}
1877	Minimize Maximum Pair Sum in Array	minimize-maximum-pair-sum-in-array	Medium	{Array,"Two Pointers",Greedy,Sorting}
1878	Get Biggest Three Rhombus Sums in a Grid	get-biggest-three-rhombus-sums-in-a-grid	Medium	{Array,Math,Sorting,"Heap (Priority Queue)",Matrix,"Prefix Sum"}
1879	Minimum XOR Sum of Two Arrays	minimum-xor-sum-of-two-arrays	Hard	{Array,"Dynamic Programming","Bit Manipulation",Bitmask}
1880	Check if Word Equals Summation of Two Words	check-if-word-equals-summation-of-two-words	Easy	{String}
1881	Maximum Value after Insertion	maximum-value-after-insertion	Medium	{String,Greedy}
1882	Process Tasks Using Servers	process-tasks-using-servers	Medium	{Array,"Heap (Priority Queue)"}
1883	Minimum Skips to Arrive at Meeting On Time	minimum-skips-to-arrive-at-meeting-on-time	Hard	{Array,"Dynamic Programming"}
1884	Egg Drop With 2 Eggs and N Floors	egg-drop-with-2-eggs-and-n-floors	Medium	{Math,"Dynamic Programming"}
1885	Count Pairs in Two Arrays	count-pairs-in-two-arrays	Medium	{Array,"Two Pointers","Binary Search",Sorting}
1886	Determine Whether Matrix Can Be Obtained By Rotation	determine-whether-matrix-can-be-obtained-by-rotation	Easy	{Array,Matrix}
1887	Reduction Operations to Make the Array Elements Equal	reduction-operations-to-make-the-array-elements-equal	Medium	{Array,Sorting}
1888	Minimum Number of Flips to Make the Binary String Alternating	minimum-number-of-flips-to-make-the-binary-string-alternating	Medium	{String,"Dynamic Programming","Sliding Window"}
1889	Minimum Space Wasted From Packaging	minimum-space-wasted-from-packaging	Hard	{Array,"Binary Search",Sorting,"Prefix Sum"}
1890	The Latest Login in 2020	the-latest-login-in-2020	Easy	{Database}
1891	Cutting Ribbons	cutting-ribbons	Medium	{Array,"Binary Search"}
1892	Page Recommendations II	page-recommendations-ii	Hard	{Database}
1893	Check if All the Integers in a Range Are Covered	check-if-all-the-integers-in-a-range-are-covered	Easy	{Array,"Hash Table","Prefix Sum"}
1894	Find the Student that Will Replace the Chalk	find-the-student-that-will-replace-the-chalk	Medium	{Array,"Binary Search",Simulation,"Prefix Sum"}
1895	Largest Magic Square	largest-magic-square	Medium	{Array,Matrix,"Prefix Sum"}
1896	Minimum Cost to Change the Final Value of Expression	minimum-cost-to-change-the-final-value-of-expression	Hard	{Math,String,"Dynamic Programming",Stack}
1897	Redistribute Characters to Make All Strings Equal	redistribute-characters-to-make-all-strings-equal	Easy	{"Hash Table",String,Counting}
1898	Maximum Number of Removable Characters	maximum-number-of-removable-characters	Medium	{Array,"Two Pointers",String,"Binary Search"}
1899	Merge Triplets to Form Target Triplet	merge-triplets-to-form-target-triplet	Medium	{Array,Greedy}
1900	The Earliest and Latest Rounds Where Players Compete	the-earliest-and-latest-rounds-where-players-compete	Hard	{"Dynamic Programming",Memoization}
1901	Find a Peak Element II	find-a-peak-element-ii	Medium	{Array,"Binary Search",Matrix}
1902	Depth of BST Given Insertion Order	depth-of-bst-given-insertion-order	Medium	{Array,Tree,"Binary Search Tree","Binary Tree","Ordered Set"}
1903	Largest Odd Number in String	largest-odd-number-in-string	Easy	{Math,String,Greedy}
1904	The Number of Full Rounds You Have Played	the-number-of-full-rounds-you-have-played	Medium	{Math,String}
1905	Count Sub Islands	count-sub-islands	Medium	{Array,"Depth-First Search","Breadth-First Search",Union-Find,Matrix}
1906	Minimum Absolute Difference Queries	minimum-absolute-difference-queries	Medium	{Array,"Prefix Sum"}
1907	Count Salary Categories	count-salary-categories	Medium	{Database}
1908	Game of Nim	game-of-nim	Medium	{Array,Math,"Dynamic Programming","Bit Manipulation",Brainteaser,"Game Theory"}
1909	Remove One Element to Make the Array Strictly Increasing	remove-one-element-to-make-the-array-strictly-increasing	Easy	{Array}
1910	Remove All Occurrences of a Substring	remove-all-occurrences-of-a-substring	Medium	{String,Stack,Simulation}
1911	Maximum Alternating Subsequence Sum	maximum-alternating-subsequence-sum	Medium	{Array,"Dynamic Programming"}
1912	Design Movie Rental System	design-movie-rental-system	Hard	{Array,"Hash Table",Design,"Heap (Priority Queue)","Ordered Set"}
1913	Maximum Product Difference Between Two Pairs	maximum-product-difference-between-two-pairs	Easy	{Array,Sorting}
1914	Cyclically Rotating a Grid	cyclically-rotating-a-grid	Medium	{Array,Matrix,Simulation}
1915	Number of Wonderful Substrings	number-of-wonderful-substrings	Medium	{"Hash Table",String,"Bit Manipulation","Prefix Sum"}
1916	Count Ways to Build Rooms in an Ant Colony	count-ways-to-build-rooms-in-an-ant-colony	Hard	{Array,Math,"Dynamic Programming",Tree,"Depth-First Search","Graph Theory","Topological Sort",Combinatorics}
1917	Leetcodify Friends Recommendations	leetcodify-friends-recommendations	Hard	{Database}
1918	Kth Smallest Subarray Sum	kth-smallest-subarray-sum	Medium	{Array,"Binary Search","Sliding Window"}
1919	Leetcodify Similar Friends	leetcodify-similar-friends	Hard	{Database}
1920	Build Array from Permutation	build-array-from-permutation	Easy	{Array,Simulation}
1921	Eliminate Maximum Number of Monsters	eliminate-maximum-number-of-monsters	Medium	{Array,Greedy,Sorting}
1922	Count Good Numbers	count-good-numbers	Medium	{Math,Recursion}
1923	Longest Common Subpath	longest-common-subpath	Hard	{Array,"Binary Search","Rolling Hash","Suffix Array","Hash Function"}
1924	Erect the Fence II	erect-the-fence-ii	Hard	{Array,Math,Geometry}
1925	Count Square Sum Triples	count-square-sum-triples	Easy	{Math,Enumeration}
1926	Nearest Exit from Entrance in Maze	nearest-exit-from-entrance-in-maze	Medium	{Array,"Breadth-First Search",Matrix}
1927	Sum Game	sum-game	Medium	{Math,String,Greedy,"Game Theory"}
1928	Minimum Cost to Reach Destination in Time	minimum-cost-to-reach-destination-in-time	Hard	{Array,"Dynamic Programming","Graph Theory"}
1929	Concatenation of Array	concatenation-of-array	Easy	{Array,Simulation}
1930	Unique Length-3 Palindromic Subsequences	unique-length-3-palindromic-subsequences	Medium	{"Hash Table",String,"Bit Manipulation","Prefix Sum"}
1931	Painting a Grid With Three Different Colors	painting-a-grid-with-three-different-colors	Hard	{"Dynamic Programming"}
1932	Merge BSTs to Create Single BST	merge-bsts-to-create-single-bst	Hard	{Array,"Hash Table",Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
1933	Check if String Is Decomposable Into Value-Equal Substrings	check-if-string-is-decomposable-into-value-equal-substrings	Easy	{String}
1934	Confirmation Rate	confirmation-rate	Medium	{Database}
1935	Maximum Number of Words You Can Type	maximum-number-of-words-you-can-type	Easy	{"Hash Table",String}
1936	Add Minimum Number of Rungs	add-minimum-number-of-rungs	Medium	{Array,Greedy}
1937	Maximum Number of Points with Cost	maximum-number-of-points-with-cost	Medium	{Array,"Dynamic Programming",Matrix}
1938	Maximum Genetic Difference Query	maximum-genetic-difference-query	Hard	{Array,"Hash Table","Bit Manipulation","Depth-First Search",Trie}
1939	Users That Actively Request Confirmation Messages	users-that-actively-request-confirmation-messages	Easy	{Database}
1940	Longest Common Subsequence Between Sorted Arrays	longest-common-subsequence-between-sorted-arrays	Medium	{Array,"Hash Table",Counting}
1941	Check if All Characters Have Equal Number of Occurrences	check-if-all-characters-have-equal-number-of-occurrences	Easy	{"Hash Table",String,Counting}
1942	The Number of the Smallest Unoccupied Chair	the-number-of-the-smallest-unoccupied-chair	Medium	{Array,"Hash Table","Heap (Priority Queue)"}
1943	Describe the Painting	describe-the-painting	Medium	{Array,"Hash Table",Sorting,"Prefix Sum"}
1944	Number of Visible People in a Queue	number-of-visible-people-in-a-queue	Hard	{Array,Stack,"Monotonic Stack"}
1945	Sum of Digits of String After Convert	sum-of-digits-of-string-after-convert	Easy	{String,Simulation}
1946	Largest Number After Mutating Substring	largest-number-after-mutating-substring	Medium	{Array,String,Greedy}
1947	Maximum Compatibility Score Sum	maximum-compatibility-score-sum	Medium	{Array,"Dynamic Programming",Backtracking,"Bit Manipulation",Bitmask}
1948	Delete Duplicate Folders in System	delete-duplicate-folders-in-system	Hard	{Array,"Hash Table",String,Trie,"Hash Function"}
1949	Strong Friendship	strong-friendship	Medium	{Database}
1950	Maximum of Minimum Values in All Subarrays	maximum-of-minimum-values-in-all-subarrays	Medium	{Array,Stack,"Monotonic Stack"}
1951	All the Pairs With the Maximum Number of Common Followers	all-the-pairs-with-the-maximum-number-of-common-followers	Medium	{Database}
1952	Three Divisors	three-divisors	Easy	{Math,Enumeration,"Number Theory"}
1953	Maximum Number of Weeks for Which You Can Work	maximum-number-of-weeks-for-which-you-can-work	Medium	{Array,Greedy}
1954	Minimum Garden Perimeter to Collect Enough Apples	minimum-garden-perimeter-to-collect-enough-apples	Medium	{Math,"Binary Search"}
1955	Count Number of Special Subsequences	count-number-of-special-subsequences	Hard	{Array,"Dynamic Programming"}
1956	Minimum Time For K Virus Variants to Spread	minimum-time-for-k-virus-variants-to-spread	Hard	{Array,Math,"Binary Search",Geometry,Enumeration}
1957	Delete Characters to Make Fancy String	delete-characters-to-make-fancy-string	Easy	{String}
1958	Check if Move is Legal	check-if-move-is-legal	Medium	{Array,Matrix,Enumeration}
1959	Minimum Total Space Wasted With K Resizing Operations	minimum-total-space-wasted-with-k-resizing-operations	Medium	{Array,"Dynamic Programming","Prefix Sum"}
1960	Maximum Product of the Length of Two Palindromic Substrings	maximum-product-of-the-length-of-two-palindromic-substrings	Hard	{"Two Pointers",String,"Rolling Hash","Hash Function"}
1961	Check If String Is a Prefix of Array	check-if-string-is-a-prefix-of-array	Easy	{Array,"Two Pointers",String}
1962	Remove Stones to Minimize the Total	remove-stones-to-minimize-the-total	Medium	{Array,Greedy,"Heap (Priority Queue)"}
1963	Minimum Number of Swaps to Make the String Balanced	minimum-number-of-swaps-to-make-the-string-balanced	Medium	{"Two Pointers",String,Stack,Greedy}
1964	Find the Longest Valid Obstacle Course at Each Position	find-the-longest-valid-obstacle-course-at-each-position	Hard	{Array,"Binary Search","Binary Indexed Tree"}
1965	Employees With Missing Information	employees-with-missing-information	Easy	{Database}
1966	Binary Searchable Numbers in an Unsorted Array	binary-searchable-numbers-in-an-unsorted-array	Medium	{Array,"Binary Search",Stack,"Monotonic Stack"}
1967	Number of Strings That Appear as Substrings in Word	number-of-strings-that-appear-as-substrings-in-word	Easy	{Array,String}
1968	Array With Elements Not Equal to Average of Neighbors	array-with-elements-not-equal-to-average-of-neighbors	Medium	{Array,Greedy,Sorting}
1969	Minimum Non-Zero Product of the Array Elements	minimum-non-zero-product-of-the-array-elements	Medium	{Math,Greedy,Recursion}
1970	Last Day Where You Can Still Cross	last-day-where-you-can-still-cross	Hard	{Array,"Binary Search","Depth-First Search","Breadth-First Search",Union-Find,Matrix}
1971	Find if Path Exists in Graph	find-if-path-exists-in-graph	Easy	{"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
1972	First and Last Call On the Same Day	first-and-last-call-on-the-same-day	Hard	{Database}
1973	Count Nodes Equal to Sum of Descendants	count-nodes-equal-to-sum-of-descendants	Medium	{Tree,"Depth-First Search","Binary Tree"}
1974	Minimum Time to Type Word Using Special Typewriter	minimum-time-to-type-word-using-special-typewriter	Easy	{String,Greedy}
1975	Maximum Matrix Sum	maximum-matrix-sum	Medium	{Array,Greedy,Matrix}
1976	Number of Ways to Arrive at Destination	number-of-ways-to-arrive-at-destination	Medium	{"Dynamic Programming","Graph Theory","Topological Sort","Shortest Path"}
1977	Number of Ways to Separate Numbers	number-of-ways-to-separate-numbers	Hard	{String,"Dynamic Programming","Suffix Array"}
1978	Employees Whose Manager Left the Company	employees-whose-manager-left-the-company	Easy	{Database}
1979	Find Greatest Common Divisor of Array	find-greatest-common-divisor-of-array	Easy	{Array,Math,"Number Theory"}
1980	Find Unique Binary String	find-unique-binary-string	Medium	{Array,"Hash Table",String,Backtracking}
1981	Minimize the Difference Between Target and Chosen Elements	minimize-the-difference-between-target-and-chosen-elements	Medium	{Array,"Dynamic Programming",Matrix}
1982	Find Array Given Subset Sums	find-array-given-subset-sums	Hard	{Array,"Hash Table",Sorting,Counting}
1983	Widest Pair of Indices With Equal Range Sum	widest-pair-of-indices-with-equal-range-sum	Medium	{Array,"Hash Table","Prefix Sum"}
1984	Minimum Difference Between Highest and Lowest of K Scores	minimum-difference-between-highest-and-lowest-of-k-scores	Easy	{Array,"Sliding Window",Sorting}
1985	Find the Kth Largest Integer in the Array	find-the-kth-largest-integer-in-the-array	Medium	{Array,String,"Divide and Conquer",Sorting,"Heap (Priority Queue)",Quickselect}
1986	Minimum Number of Work Sessions to Finish the Tasks	minimum-number-of-work-sessions-to-finish-the-tasks	Medium	{Array,"Dynamic Programming",Backtracking,"Bit Manipulation",Bitmask}
1987	Number of Unique Good Subsequences	number-of-unique-good-subsequences	Hard	{String,"Dynamic Programming"}
1988	Find Cutoff Score for Each School	find-cutoff-score-for-each-school	Medium	{Database}
1989	Maximum Number of People That Can Be Caught in Tag	maximum-number-of-people-that-can-be-caught-in-tag	Medium	{Array,"Two Pointers",Greedy}
1990	Count the Number of Experiments	count-the-number-of-experiments	Medium	{Database}
1991	Find the Middle Index in Array	find-the-middle-index-in-array	Easy	{Array,"Prefix Sum"}
1992	Find All Groups of Farmland	find-all-groups-of-farmland	Medium	{Array,"Depth-First Search","Breadth-First Search",Matrix}
1993	Operations on Tree	operations-on-tree	Medium	{Array,"Hash Table",Tree,"Depth-First Search","Breadth-First Search",Design}
1994	The Number of Good Subsets	the-number-of-good-subsets	Hard	{Array,"Hash Table",Math,"Dynamic Programming","Bit Manipulation",Counting,"Number Theory",Bitmask}
1995	Count Special Quadruplets	count-special-quadruplets	Easy	{Array,"Hash Table",Enumeration}
1996	The Number of Weak Characters in the Game	the-number-of-weak-characters-in-the-game	Medium	{Array,Stack,Greedy,Sorting,"Monotonic Stack"}
1997	First Day Where You Have Been in All the Rooms	first-day-where-you-have-been-in-all-the-rooms	Medium	{Array,"Dynamic Programming"}
1998	GCD Sort of an Array	gcd-sort-of-an-array	Hard	{Array,Math,Union-Find,Sorting,"Number Theory"}
1999	Smallest Greater Multiple Made of Two Digits	smallest-greater-multiple-made-of-two-digits	Medium	{Math,Enumeration}
2000	Reverse Prefix of Word	reverse-prefix-of-word	Easy	{"Two Pointers",String,Stack}
2001	Number of Pairs of Interchangeable Rectangles	number-of-pairs-of-interchangeable-rectangles	Medium	{Array,"Hash Table",Math,Counting,"Number Theory"}
2002	Maximum Product of the Length of Two Palindromic Subsequences	maximum-product-of-the-length-of-two-palindromic-subsequences	Medium	{String,"Dynamic Programming",Backtracking,"Bit Manipulation",Bitmask}
2003	Smallest Missing Genetic Value in Each Subtree	smallest-missing-genetic-value-in-each-subtree	Hard	{Array,"Dynamic Programming",Tree,"Depth-First Search",Union-Find}
2004	The Number of Seniors and Juniors to Join the Company	the-number-of-seniors-and-juniors-to-join-the-company	Hard	{Database}
2005	Subtree Removal Game with Fibonacci Tree	subtree-removal-game-with-fibonacci-tree	Hard	{Math,"Dynamic Programming",Tree,"Binary Tree","Game Theory"}
2006	Count Number of Pairs With Absolute Difference K	count-number-of-pairs-with-absolute-difference-k	Easy	{Array,"Hash Table",Counting}
2007	Find Original Array From Doubled Array	find-original-array-from-doubled-array	Medium	{Array,"Hash Table",Greedy,Sorting}
2008	Maximum Earnings From Taxi	maximum-earnings-from-taxi	Medium	{Array,"Hash Table","Binary Search","Dynamic Programming",Sorting}
2009	Minimum Number of Operations to Make Array Continuous	minimum-number-of-operations-to-make-array-continuous	Hard	{Array,"Hash Table","Binary Search","Sliding Window"}
2010	The Number of Seniors and Juniors to Join the Company II	the-number-of-seniors-and-juniors-to-join-the-company-ii	Hard	{Database}
2011	Final Value of Variable After Performing Operations	final-value-of-variable-after-performing-operations	Easy	{Array,String,Simulation}
2012	Sum of Beauty in the Array	sum-of-beauty-in-the-array	Medium	{Array}
2013	Detect Squares	detect-squares	Medium	{Array,"Hash Table",Design,Counting,"Data Stream"}
2014	Longest Subsequence Repeated k Times	longest-subsequence-repeated-k-times	Hard	{"Hash Table","Two Pointers",String,Backtracking,Counting,Enumeration}
2015	Average Height of Buildings in Each Segment	average-height-of-buildings-in-each-segment	Medium	{Array,Sorting,"Heap (Priority Queue)","Prefix Sum"}
2016	Maximum Difference Between Increasing Elements	maximum-difference-between-increasing-elements	Easy	{Array}
2017	Grid Game	grid-game	Medium	{Array,Matrix,"Prefix Sum"}
2018	Check if Word Can Be Placed In Crossword	check-if-word-can-be-placed-in-crossword	Medium	{Array,Matrix,Enumeration}
2019	The Score of Students Solving Math Expression	the-score-of-students-solving-math-expression	Hard	{Array,"Hash Table",Math,String,"Dynamic Programming",Stack,Memoization}
2020	Number of Accounts That Did Not Stream	number-of-accounts-that-did-not-stream	Medium	{Database}
2021	Brightest Position on Street	brightest-position-on-street	Medium	{Array,Sorting,"Prefix Sum","Ordered Set"}
2022	Convert 1D Array Into 2D Array	convert-1d-array-into-2d-array	Easy	{Array,Matrix,Simulation}
2023	Number of Pairs of Strings With Concatenation Equal to Target	number-of-pairs-of-strings-with-concatenation-equal-to-target	Medium	{Array,"Hash Table",String,Counting}
2024	Maximize the Confusion of an Exam	maximize-the-confusion-of-an-exam	Medium	{String,"Binary Search","Sliding Window","Prefix Sum"}
2025	Maximum Number of Ways to Partition an Array	maximum-number-of-ways-to-partition-an-array	Hard	{Array,"Hash Table",Counting,Enumeration,"Prefix Sum"}
2026	Low-Quality Problems	low-quality-problems	Easy	{Database}
2027	Minimum Moves to Convert String	minimum-moves-to-convert-string	Easy	{String,Greedy}
2028	Find Missing Observations	find-missing-observations	Medium	{Array,Math,Simulation}
2029	Stone Game IX	stone-game-ix	Medium	{Array,Math,Greedy,Counting,"Game Theory"}
2030	Smallest K-Length Subsequence With Occurrences of a Letter	smallest-k-length-subsequence-with-occurrences-of-a-letter	Hard	{String,Stack,Greedy,"Monotonic Stack"}
2031	Count Subarrays With More Ones Than Zeros	count-subarrays-with-more-ones-than-zeros	Medium	{Array,"Hash Table","Binary Search","Divide and Conquer","Binary Indexed Tree","Segment Tree","Merge Sort","Ordered Set"}
2032	Two Out of Three	two-out-of-three	Easy	{Array,"Hash Table","Bit Manipulation"}
2033	Minimum Operations to Make a Uni-Value Grid	minimum-operations-to-make-a-uni-value-grid	Medium	{Array,Math,Sorting,Matrix}
2034	Stock Price Fluctuation 	stock-price-fluctuation	Medium	{"Hash Table",Design,"Heap (Priority Queue)","Data Stream","Ordered Set"}
2035	Partition Array Into Two Arrays to Minimize Sum Difference	partition-array-into-two-arrays-to-minimize-sum-difference	Hard	{Array,"Two Pointers","Binary Search","Dynamic Programming","Bit Manipulation",Sorting,"Ordered Set",Bitmask}
2036	Maximum Alternating Subarray Sum	maximum-alternating-subarray-sum	Medium	{Array,"Dynamic Programming"}
2037	Minimum Number of Moves to Seat Everyone	minimum-number-of-moves-to-seat-everyone	Easy	{Array,Greedy,Sorting,"Counting Sort"}
2038	Remove Colored Pieces if Both Neighbors are the Same Color	remove-colored-pieces-if-both-neighbors-are-the-same-color	Medium	{Math,String,Greedy,"Game Theory"}
2039	The Time When the Network Becomes Idle	the-time-when-the-network-becomes-idle	Medium	{Array,"Breadth-First Search","Graph Theory"}
2040	Kth Smallest Product of Two Sorted Arrays	kth-smallest-product-of-two-sorted-arrays	Hard	{Array,"Binary Search"}
2041	Accepted Candidates From the Interviews	accepted-candidates-from-the-interviews	Medium	{Database}
2042	Check if Numbers Are Ascending in a Sentence	check-if-numbers-are-ascending-in-a-sentence	Easy	{String}
2043	Simple Bank System	simple-bank-system	Medium	{Array,"Hash Table",Design,Simulation}
2044	Count Number of Maximum Bitwise-OR Subsets	count-number-of-maximum-bitwise-or-subsets	Medium	{Array,Backtracking,"Bit Manipulation",Enumeration}
2045	Second Minimum Time to Reach Destination	second-minimum-time-to-reach-destination	Hard	{"Breadth-First Search","Graph Theory","Shortest Path"}
2046	Sort Linked List Already Sorted Using Absolute Values	sort-linked-list-already-sorted-using-absolute-values	Medium	{"Linked List","Two Pointers",Sorting}
2047	Number of Valid Words in a Sentence	number-of-valid-words-in-a-sentence	Easy	{String}
2048	Next Greater Numerically Balanced Number	next-greater-numerically-balanced-number	Medium	{"Hash Table",Math,Backtracking,Counting,Enumeration}
2049	Count Nodes With the Highest Score	count-nodes-with-the-highest-score	Medium	{Array,Tree,"Depth-First Search","Binary Tree"}
2050	Parallel Courses III	parallel-courses-iii	Hard	{Array,"Dynamic Programming","Graph Theory","Topological Sort"}
2051	The Category of Each Member in the Store	the-category-of-each-member-in-the-store	Medium	{Database}
2052	Minimum Cost to Separate Sentence Into Rows	minimum-cost-to-separate-sentence-into-rows	Medium	{String,"Dynamic Programming"}
2053	Kth Distinct String in an Array	kth-distinct-string-in-an-array	Easy	{Array,"Hash Table",String,Counting}
2054	Two Best Non-Overlapping Events	two-best-non-overlapping-events	Medium	{Array,"Binary Search","Dynamic Programming",Sorting,"Heap (Priority Queue)"}
2055	Plates Between Candles	plates-between-candles	Medium	{Array,String,"Binary Search","Prefix Sum"}
2056	Number of Valid Move Combinations On Chessboard	number-of-valid-move-combinations-on-chessboard	Hard	{Array,String,Backtracking,Simulation}
2057	Smallest Index With Equal Value	smallest-index-with-equal-value	Easy	{Array}
2058	Find the Minimum and Maximum Number of Nodes Between Critical Points	find-the-minimum-and-maximum-number-of-nodes-between-critical-points	Medium	{"Linked List"}
2059	Minimum Operations to Convert Number	minimum-operations-to-convert-number	Medium	{Array,"Breadth-First Search"}
2060	Check if an Original String Exists Given Two Encoded Strings	check-if-an-original-string-exists-given-two-encoded-strings	Hard	{String,"Dynamic Programming"}
2061	Number of Spaces Cleaning Robot Cleaned	number-of-spaces-cleaning-robot-cleaned	Medium	{Array,Matrix,Simulation}
2062	Count Vowel Substrings of a String	count-vowel-substrings-of-a-string	Easy	{"Hash Table",String}
2063	Vowels of All Substrings	vowels-of-all-substrings	Medium	{Math,String,"Dynamic Programming",Combinatorics}
2064	Minimized Maximum of Products Distributed to Any Store	minimized-maximum-of-products-distributed-to-any-store	Medium	{Array,"Binary Search",Greedy}
2065	Maximum Path Quality of a Graph	maximum-path-quality-of-a-graph	Hard	{Array,Backtracking,"Graph Theory"}
2066	Account Balance	account-balance	Medium	{Database}
2067	Number of Equal Count Substrings	number-of-equal-count-substrings	Medium	{"Hash Table",String,"Sliding Window",Counting}
2068	Check Whether Two Strings are Almost Equivalent	check-whether-two-strings-are-almost-equivalent	Easy	{"Hash Table",String,Counting}
2069	Walking Robot Simulation II	walking-robot-simulation-ii	Medium	{Design,Simulation}
2070	Most Beautiful Item for Each Query	most-beautiful-item-for-each-query	Medium	{Array,"Binary Search",Sorting}
2071	Maximum Number of Tasks You Can Assign	maximum-number-of-tasks-you-can-assign	Hard	{Array,"Two Pointers","Binary Search",Greedy,Queue,Sorting,"Monotonic Queue"}
2073	Time Needed to Buy Tickets	time-needed-to-buy-tickets	Easy	{Array,Queue,Simulation}
2074	Reverse Nodes in Even Length Groups	reverse-nodes-in-even-length-groups	Medium	{"Linked List"}
2075	Decode the Slanted Ciphertext	decode-the-slanted-ciphertext	Medium	{String,Simulation}
2076	Process Restricted Friend Requests	process-restricted-friend-requests	Hard	{Union-Find,"Graph Theory"}
2077	Paths in Maze That Lead to Same Room	paths-in-maze-that-lead-to-same-room	Medium	{"Graph Theory"}
2078	Two Furthest Houses With Different Colors	two-furthest-houses-with-different-colors	Easy	{Array,Greedy}
2079	Watering Plants	watering-plants	Medium	{Array,Simulation}
2080	Range Frequency Queries	range-frequency-queries	Medium	{Array,"Hash Table","Binary Search",Design,"Segment Tree"}
2081	Sum of k-Mirror Numbers	sum-of-k-mirror-numbers	Hard	{Math,Enumeration}
2082	The Number of Rich Customers	the-number-of-rich-customers	Easy	{Database}
2083	Substrings That Begin and End With the Same Letter	substrings-that-begin-and-end-with-the-same-letter	Medium	{"Hash Table",Math,String,Counting,"Prefix Sum"}
2084	Drop Type 1 Orders for Customers With Type 0 Orders	drop-type-1-orders-for-customers-with-type-0-orders	Medium	{Database}
2085	Count Common Words With One Occurrence	count-common-words-with-one-occurrence	Easy	{Array,"Hash Table",String,Counting}
2086	Minimum Number of Food Buckets to Feed the Hamsters	minimum-number-of-food-buckets-to-feed-the-hamsters	Medium	{String,"Dynamic Programming",Greedy}
2087	Minimum Cost Homecoming of a Robot in a Grid	minimum-cost-homecoming-of-a-robot-in-a-grid	Medium	{Array,Greedy}
2088	Count Fertile Pyramids in a Land	count-fertile-pyramids-in-a-land	Hard	{Array,"Dynamic Programming",Matrix}
2089	Find Target Indices After Sorting Array	find-target-indices-after-sorting-array	Easy	{Array,"Binary Search",Sorting}
2090	K Radius Subarray Averages	k-radius-subarray-averages	Medium	{Array,"Sliding Window"}
2091	Removing Minimum and Maximum From Array	removing-minimum-and-maximum-from-array	Medium	{Array,Greedy}
2092	Find All People With Secret	find-all-people-with-secret	Hard	{"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory",Sorting}
2093	Minimum Cost to Reach City With Discounts	minimum-cost-to-reach-city-with-discounts	Medium	{"Graph Theory","Heap (Priority Queue)","Shortest Path"}
2094	Finding 3-Digit Even Numbers	finding-3-digit-even-numbers	Easy	{Array,"Hash Table",Recursion,Sorting,Enumeration}
2095	Delete the Middle Node of a Linked List	delete-the-middle-node-of-a-linked-list	Medium	{"Linked List","Two Pointers"}
2096	Step-By-Step Directions From a Binary Tree Node to Another	step-by-step-directions-from-a-binary-tree-node-to-another	Medium	{String,Tree,"Depth-First Search","Binary Tree"}
2097	Valid Arrangement of Pairs	valid-arrangement-of-pairs	Hard	{Array,"Depth-First Search","Graph Theory","Eulerian Circuit"}
2098	Subsequence of Size K With the Largest Even Sum	subsequence-of-size-k-with-the-largest-even-sum	Medium	{Array,Greedy,Sorting}
2099	Find Subsequence of Length K With the Largest Sum	find-subsequence-of-length-k-with-the-largest-sum	Easy	{Array,"Hash Table",Sorting,"Heap (Priority Queue)"}
2100	Find Good Days to Rob the Bank	find-good-days-to-rob-the-bank	Medium	{Array,"Dynamic Programming","Prefix Sum"}
2101	Detonate the Maximum Bombs	detonate-the-maximum-bombs	Medium	{Array,Math,"Depth-First Search","Breadth-First Search","Graph Theory",Geometry}
2102	Sequentially Ordinal Rank Tracker	sequentially-ordinal-rank-tracker	Hard	{Design,"Heap (Priority Queue)","Data Stream","Ordered Set"}
2103	Rings and Rods	rings-and-rods	Easy	{"Hash Table",String}
2104	Sum of Subarray Ranges	sum-of-subarray-ranges	Medium	{Array,Stack,"Monotonic Stack"}
2105	Watering Plants II	watering-plants-ii	Medium	{Array,"Two Pointers",Simulation}
2106	Maximum Fruits Harvested After at Most K Steps	maximum-fruits-harvested-after-at-most-k-steps	Hard	{Array,"Binary Search","Sliding Window","Prefix Sum"}
2107	Number of Unique Flavors After Sharing K Candies	number-of-unique-flavors-after-sharing-k-candies	Medium	{Array,"Hash Table","Sliding Window"}
2108	Find First Palindromic String in the Array	find-first-palindromic-string-in-the-array	Easy	{Array,"Two Pointers",String}
2109	Adding Spaces to a String	adding-spaces-to-a-string	Medium	{Array,"Two Pointers",String,Simulation}
2110	Number of Smooth Descent Periods of a Stock	number-of-smooth-descent-periods-of-a-stock	Medium	{Array,Math,"Two Pointers","Dynamic Programming","Sliding Window"}
2111	Minimum Operations to Make the Array K-Increasing	minimum-operations-to-make-the-array-k-increasing	Hard	{Array,"Binary Search"}
2112	The Airport With the Most Traffic	the-airport-with-the-most-traffic	Medium	{Database}
2113	Elements in Array After Removing and Replacing Elements	elements-in-array-after-removing-and-replacing-elements	Medium	{Array}
2114	Maximum Number of Words Found in Sentences	maximum-number-of-words-found-in-sentences	Easy	{Array,String}
2115	Find All Possible Recipes from Given Supplies	find-all-possible-recipes-from-given-supplies	Medium	{Array,"Hash Table",String,"Graph Theory","Topological Sort"}
2116	Check if a Parentheses String Can Be Valid	check-if-a-parentheses-string-can-be-valid	Medium	{String,Stack,Greedy}
2117	Abbreviating the Product of a Range	abbreviating-the-product-of-a-range	Hard	{Math,"Number Theory"}
2118	Build the Equation	build-the-equation	Hard	{Database}
2119	A Number After a Double Reversal	a-number-after-a-double-reversal	Easy	{Math}
2120	Execution of All Suffix Instructions Staying in a Grid	execution-of-all-suffix-instructions-staying-in-a-grid	Medium	{String,Simulation}
2121	Intervals Between Identical Elements	intervals-between-identical-elements	Medium	{Array,"Hash Table","Prefix Sum"}
2122	Recover the Original Array	recover-the-original-array	Hard	{Array,"Hash Table","Two Pointers",Sorting,Enumeration}
2123	Minimum Operations to Remove Adjacent Ones in Matrix	minimum-operations-to-remove-adjacent-ones-in-matrix	Hard	{Array,"Graph Theory",Matrix}
2124	Check if All A's Appears Before All B's	check-if-all-as-appears-before-all-bs	Easy	{String}
2125	Number of Laser Beams in a Bank	number-of-laser-beams-in-a-bank	Medium	{Array,Math,String,Matrix}
2126	Destroying Asteroids	destroying-asteroids	Medium	{Array,Greedy,Sorting}
2127	Maximum Employees to Be Invited to a Meeting	maximum-employees-to-be-invited-to-a-meeting	Hard	{Array,"Dynamic Programming","Depth-First Search","Graph Theory","Topological Sort"}
2128	Remove All Ones With Row and Column Flips	remove-all-ones-with-row-and-column-flips	Medium	{Array,Math,"Bit Manipulation",Matrix}
2129	Capitalize the Title	capitalize-the-title	Easy	{String}
2130	Maximum Twin Sum of a Linked List	maximum-twin-sum-of-a-linked-list	Medium	{"Linked List","Two Pointers",Stack}
2131	Longest Palindrome by Concatenating Two Letter Words	longest-palindrome-by-concatenating-two-letter-words	Medium	{Array,"Hash Table",String,Greedy,Counting}
2132	Stamping the Grid	stamping-the-grid	Hard	{Array,Greedy,Matrix,"Prefix Sum"}
2133	Check if Every Row and Column Contains All Numbers	check-if-every-row-and-column-contains-all-numbers	Easy	{Array,"Hash Table",Matrix}
2134	Minimum Swaps to Group All 1's Together II	minimum-swaps-to-group-all-1s-together-ii	Medium	{Array,"Sliding Window"}
2135	Count Words Obtained After Adding a Letter	count-words-obtained-after-adding-a-letter	Medium	{Array,"Hash Table",String,"Bit Manipulation",Sorting}
2136	Earliest Possible Day of Full Bloom	earliest-possible-day-of-full-bloom	Hard	{Array,Greedy,Sorting}
2137	Pour Water Between Buckets to Make Water Levels Equal	pour-water-between-buckets-to-make-water-levels-equal	Medium	{Array,"Binary Search"}
2138	Divide a String Into Groups of Size k	divide-a-string-into-groups-of-size-k	Easy	{String,Simulation}
2139	Minimum Moves to Reach Target Score	minimum-moves-to-reach-target-score	Medium	{Math,Greedy}
2140	Solving Questions With Brainpower	solving-questions-with-brainpower	Medium	{Array,"Dynamic Programming"}
2141	Maximum Running Time of N Computers	maximum-running-time-of-n-computers	Hard	{Array,"Binary Search",Greedy,Sorting}
2142	The Number of Passengers in Each Bus I	the-number-of-passengers-in-each-bus-i	Medium	{Database}
2143	Choose Numbers From Two Arrays in Range	choose-numbers-from-two-arrays-in-range	Hard	{Array,"Dynamic Programming"}
2144	Minimum Cost of Buying Candies With Discount	minimum-cost-of-buying-candies-with-discount	Easy	{Array,Greedy,Sorting}
2145	Count the Hidden Sequences	count-the-hidden-sequences	Medium	{Array,"Prefix Sum"}
2146	K Highest Ranked Items Within a Price Range	k-highest-ranked-items-within-a-price-range	Medium	{Array,"Breadth-First Search",Sorting,"Heap (Priority Queue)",Matrix}
2147	Number of Ways to Divide a Long Corridor	number-of-ways-to-divide-a-long-corridor	Hard	{Math,String,"Dynamic Programming"}
2148	Count Elements With Strictly Smaller and Greater Elements 	count-elements-with-strictly-smaller-and-greater-elements	Easy	{Array,Sorting,Counting}
2149	Rearrange Array Elements by Sign	rearrange-array-elements-by-sign	Medium	{Array,"Two Pointers",Simulation}
2150	Find All Lonely Numbers in the Array	find-all-lonely-numbers-in-the-array	Medium	{Array,"Hash Table",Counting}
2151	Maximum Good People Based on Statements	maximum-good-people-based-on-statements	Hard	{Array,Backtracking,"Bit Manipulation",Enumeration}
2152	Minimum Number of Lines to Cover Points	minimum-number-of-lines-to-cover-points	Medium	{Array,"Hash Table",Math,"Dynamic Programming",Backtracking,"Bit Manipulation",Geometry,Bitmask}
2153	The Number of Passengers in Each Bus II	the-number-of-passengers-in-each-bus-ii	Hard	{Database}
2154	Keep Multiplying Found Values by Two	keep-multiplying-found-values-by-two	Easy	{Array,"Hash Table",Sorting,Simulation}
2155	All Divisions With the Highest Score of a Binary Array	all-divisions-with-the-highest-score-of-a-binary-array	Medium	{Array}
2156	Find Substring With Given Hash Value	find-substring-with-given-hash-value	Hard	{String,"Sliding Window","Rolling Hash","Hash Function"}
2157	Groups of Strings	groups-of-strings	Hard	{Array,"Hash Table",String,"Bit Manipulation",Union-Find}
2158	Amount of New Area Painted Each Day	amount-of-new-area-painted-each-day	Hard	{Array,"Segment Tree","Ordered Set"}
2159	Order Two Columns Independently	order-two-columns-independently	Medium	{Database}
2160	Minimum Sum of Four Digit Number After Splitting Digits	minimum-sum-of-four-digit-number-after-splitting-digits	Easy	{Math,Greedy,Sorting}
2161	Partition Array According to Given Pivot	partition-array-according-to-given-pivot	Medium	{Array,"Two Pointers",Simulation}
2162	Minimum Cost to Set Cooking Time	minimum-cost-to-set-cooking-time	Medium	{Math,Enumeration}
2163	Minimum Difference in Sums After Removal of Elements	minimum-difference-in-sums-after-removal-of-elements	Hard	{Array,"Dynamic Programming","Heap (Priority Queue)"}
2164	Sort Even and Odd Indices Independently	sort-even-and-odd-indices-independently	Easy	{Array,Sorting}
2165	Smallest Value of the Rearranged Number	smallest-value-of-the-rearranged-number	Medium	{Math,Sorting}
2166	Design Bitset	design-bitset	Medium	{Array,"Hash Table",String,Design}
2167	Minimum Time to Remove All Cars Containing Illegal Goods	minimum-time-to-remove-all-cars-containing-illegal-goods	Hard	{String,"Dynamic Programming"}
2168	Unique Substrings With Equal Digit Frequency	unique-substrings-with-equal-digit-frequency	Medium	{"Hash Table",String,"Rolling Hash",Counting,"Hash Function"}
2169	Count Operations to Obtain Zero	count-operations-to-obtain-zero	Easy	{Math,Simulation}
2170	Minimum Operations to Make the Array Alternating	minimum-operations-to-make-the-array-alternating	Medium	{Array,"Hash Table",Greedy,Counting}
2171	Removing Minimum Number of Magic Beans	removing-minimum-number-of-magic-beans	Medium	{Array,Greedy,Sorting,Enumeration,"Prefix Sum"}
2172	Maximum AND Sum of Array	maximum-and-sum-of-array	Hard	{Array,"Dynamic Programming","Bit Manipulation",Bitmask}
2173	Longest Winning Streak	longest-winning-streak	Hard	{Database}
2174	Remove All Ones With Row and Column Flips II	remove-all-ones-with-row-and-column-flips-ii	Medium	{Array,"Bit Manipulation","Breadth-First Search",Matrix}
2175	The Change in Global Rankings	the-change-in-global-rankings	Medium	{Database}
2176	Count Equal and Divisible Pairs in an Array	count-equal-and-divisible-pairs-in-an-array	Easy	{Array}
2177	Find Three Consecutive Integers That Sum to a Given Number	find-three-consecutive-integers-that-sum-to-a-given-number	Medium	{Math,Simulation}
2178	Maximum Split of Positive Even Integers	maximum-split-of-positive-even-integers	Medium	{Math,Backtracking,Greedy}
2179	Count Good Triplets in an Array	count-good-triplets-in-an-array	Hard	{Array,"Binary Search","Divide and Conquer","Binary Indexed Tree","Segment Tree","Merge Sort","Ordered Set"}
2180	Count Integers With Even Digit Sum	count-integers-with-even-digit-sum	Easy	{Math,Simulation}
2181	Merge Nodes in Between Zeros	merge-nodes-in-between-zeros	Medium	{"Linked List",Simulation}
2182	Construct String With Repeat Limit	construct-string-with-repeat-limit	Medium	{"Hash Table",String,Greedy,"Heap (Priority Queue)",Counting}
2183	Count Array Pairs Divisible by K	count-array-pairs-divisible-by-k	Hard	{Array,"Hash Table",Math,Counting,"Number Theory"}
2184	Number of Ways to Build Sturdy Brick Wall	number-of-ways-to-build-sturdy-brick-wall	Medium	{Array,"Dynamic Programming","Bit Manipulation",Bitmask}
2185	Counting Words With a Given Prefix	counting-words-with-a-given-prefix	Easy	{Array,String,"String Matching"}
2186	Minimum Number of Steps to Make Two Strings Anagram II	minimum-number-of-steps-to-make-two-strings-anagram-ii	Medium	{"Hash Table",String,Counting}
2187	Minimum Time to Complete Trips	minimum-time-to-complete-trips	Medium	{Array,"Binary Search"}
2188	Minimum Time to Finish the Race	minimum-time-to-finish-the-race	Hard	{Array,"Dynamic Programming"}
2189	Number of Ways to Build House of Cards	number-of-ways-to-build-house-of-cards	Medium	{Math,"Dynamic Programming"}
2190	Most Frequent Number Following Key In an Array	most-frequent-number-following-key-in-an-array	Easy	{Array,"Hash Table",Counting}
2191	Sort the Jumbled Numbers	sort-the-jumbled-numbers	Medium	{Array,Sorting}
2192	All Ancestors of a Node in a Directed Acyclic Graph	all-ancestors-of-a-node-in-a-directed-acyclic-graph	Medium	{"Depth-First Search","Breadth-First Search","Graph Theory","Topological Sort"}
2193	Minimum Number of Moves to Make Palindrome	minimum-number-of-moves-to-make-palindrome	Hard	{"Two Pointers",String,Greedy,"Binary Indexed Tree"}
2194	Cells in a Range on an Excel Sheet	cells-in-a-range-on-an-excel-sheet	Easy	{String}
2195	Append K Integers With Minimal Sum	append-k-integers-with-minimal-sum	Medium	{Array,Math,Greedy,Sorting}
2196	Create Binary Tree From Descriptions	create-binary-tree-from-descriptions	Medium	{Array,"Hash Table",Tree,"Binary Tree"}
2197	Replace Non-Coprime Numbers in Array	replace-non-coprime-numbers-in-array	Hard	{Array,Math,Stack,"Number Theory"}
2198	Number of Single Divisor Triplets	number-of-single-divisor-triplets	Medium	{Array,Counting,Enumeration}
2199	Finding the Topic of Each Post	finding-the-topic-of-each-post	Hard	{Database}
2200	Find All K-Distant Indices in an Array	find-all-k-distant-indices-in-an-array	Easy	{Array,"Two Pointers"}
2201	Count Artifacts That Can Be Extracted	count-artifacts-that-can-be-extracted	Medium	{Array,"Hash Table",Simulation}
2202	Maximize the Topmost Element After K Moves	maximize-the-topmost-element-after-k-moves	Medium	{Array,Greedy}
2203	Minimum Weighted Subgraph With the Required Paths	minimum-weighted-subgraph-with-the-required-paths	Hard	{"Graph Theory","Heap (Priority Queue)","Shortest Path"}
2204	Distance to a Cycle in Undirected Graph	distance-to-a-cycle-in-undirected-graph	Hard	{"Depth-First Search","Breadth-First Search","Graph Theory","Topological Sort"}
2205	The Number of Users That Are Eligible for Discount	the-number-of-users-that-are-eligible-for-discount	Easy	{Database}
2206	Divide Array Into Equal Pairs	divide-array-into-equal-pairs	Easy	{Array,"Hash Table","Bit Manipulation",Counting}
2207	Maximize Number of Subsequences in a String	maximize-number-of-subsequences-in-a-string	Medium	{String,Greedy,"Prefix Sum"}
2208	Minimum Operations to Halve Array Sum	minimum-operations-to-halve-array-sum	Medium	{Array,Greedy,"Heap (Priority Queue)"}
2209	Minimum White Tiles After Covering With Carpets	minimum-white-tiles-after-covering-with-carpets	Hard	{String,"Dynamic Programming","Prefix Sum"}
2210	Count Hills and Valleys in an Array	count-hills-and-valleys-in-an-array	Easy	{Array}
2211	Count Collisions on a Road	count-collisions-on-a-road	Medium	{String,Stack,Simulation}
2212	Maximum Points in an Archery Competition	maximum-points-in-an-archery-competition	Medium	{Array,Backtracking,"Bit Manipulation",Enumeration}
2213	Longest Substring of One Repeating Character	longest-substring-of-one-repeating-character	Hard	{Array,String,"Segment Tree","Ordered Set"}
2214	Minimum Health to Beat Game	minimum-health-to-beat-game	Medium	{Array,Greedy}
2215	Find the Difference of Two Arrays	find-the-difference-of-two-arrays	Easy	{Array,"Hash Table"}
2216	Minimum Deletions to Make Array Beautiful	minimum-deletions-to-make-array-beautiful	Medium	{Array,Stack,Greedy}
2217	Find Palindrome With Fixed Length	find-palindrome-with-fixed-length	Medium	{Array,Math}
2218	Maximum Value of K Coins From Piles	maximum-value-of-k-coins-from-piles	Hard	{Array,"Dynamic Programming","Prefix Sum"}
2219	Maximum Sum Score of Array	maximum-sum-score-of-array	Medium	{Array,"Prefix Sum"}
2220	Minimum Bit Flips to Convert Number	minimum-bit-flips-to-convert-number	Easy	{"Bit Manipulation"}
2221	Find Triangular Sum of an Array	find-triangular-sum-of-an-array	Medium	{Array,Math,Simulation,Combinatorics,"Number Theory"}
2222	Number of Ways to Select Buildings	number-of-ways-to-select-buildings	Medium	{String,"Dynamic Programming","Prefix Sum"}
2223	Sum of Scores of Built Strings	sum-of-scores-of-built-strings	Hard	{String,"Binary Search","Rolling Hash","Suffix Array","String Matching","Hash Function"}
2224	Minimum Number of Operations to Convert Time	minimum-number-of-operations-to-convert-time	Easy	{String,Greedy}
2225	Find Players With Zero or One Losses	find-players-with-zero-or-one-losses	Medium	{Array,"Hash Table",Sorting,Counting}
2226	Maximum Candies Allocated to K Children	maximum-candies-allocated-to-k-children	Medium	{Array,"Binary Search"}
2227	Encrypt and Decrypt Strings	encrypt-and-decrypt-strings	Hard	{Array,"Hash Table",String,Design,Trie}
2228	Users With Two Purchases Within Seven Days	users-with-two-purchases-within-seven-days	Medium	{Database}
2229	Check if an Array Is Consecutive	check-if-an-array-is-consecutive	Easy	{Array,"Hash Table",Sorting}
2230	The Users That Are Eligible for Discount	the-users-that-are-eligible-for-discount	Easy	{Database}
2231	Largest Number After Digit Swaps by Parity	largest-number-after-digit-swaps-by-parity	Easy	{Sorting,"Heap (Priority Queue)"}
2232	Minimize Result by Adding Parentheses to Expression	minimize-result-by-adding-parentheses-to-expression	Medium	{String,Enumeration}
2233	Maximum Product After K Increments	maximum-product-after-k-increments	Medium	{Array,Greedy,"Heap (Priority Queue)"}
2234	Maximum Total Beauty of the Gardens	maximum-total-beauty-of-the-gardens	Hard	{Array,"Two Pointers","Binary Search",Greedy,Sorting,Enumeration,"Prefix Sum"}
2235	Add Two Integers	add-two-integers	Easy	{Math}
2236	Root Equals Sum of Children	root-equals-sum-of-children	Easy	{Tree,"Binary Tree"}
2237	Count Positions on Street With Required Brightness	count-positions-on-street-with-required-brightness	Medium	{Array,"Prefix Sum"}
2238	Number of Times a Driver Was a Passenger	number-of-times-a-driver-was-a-passenger	Medium	{Database}
2239	Find Closest Number to Zero	find-closest-number-to-zero	Easy	{Array}
2240	Number of Ways to Buy Pens and Pencils	number-of-ways-to-buy-pens-and-pencils	Medium	{Math,Enumeration}
2241	Design an ATM Machine	design-an-atm-machine	Medium	{Array,Greedy,Design}
2242	Maximum Score of a Node Sequence	maximum-score-of-a-node-sequence	Hard	{Array,"Graph Theory",Sorting,Enumeration}
2243	Calculate Digit Sum of a String	calculate-digit-sum-of-a-string	Easy	{String,Simulation}
2244	Minimum Rounds to Complete All Tasks	minimum-rounds-to-complete-all-tasks	Medium	{Array,"Hash Table",Greedy,Counting}
2245	Maximum Trailing Zeros in a Cornered Path	maximum-trailing-zeros-in-a-cornered-path	Medium	{Array,Matrix,"Prefix Sum"}
2246	Longest Path With Different Adjacent Characters	longest-path-with-different-adjacent-characters	Hard	{Array,String,Tree,"Depth-First Search","Graph Theory","Topological Sort"}
2247	Maximum Cost of Trip With K Highways	maximum-cost-of-trip-with-k-highways	Hard	{"Dynamic Programming","Bit Manipulation","Graph Theory",Bitmask}
2248	Intersection of Multiple Arrays	intersection-of-multiple-arrays	Easy	{Array,"Hash Table",Sorting,Counting}
2249	Count Lattice Points Inside a Circle	count-lattice-points-inside-a-circle	Medium	{Array,"Hash Table",Math,Geometry,Enumeration}
2250	Count Number of Rectangles Containing Each Point	count-number-of-rectangles-containing-each-point	Medium	{Array,"Hash Table","Binary Search","Binary Indexed Tree",Sorting}
2251	Number of Flowers in Full Bloom	number-of-flowers-in-full-bloom	Hard	{Array,"Hash Table","Binary Search",Sorting,"Prefix Sum","Ordered Set"}
2252	Dynamic Pivoting of a Table	dynamic-pivoting-of-a-table	Hard	{Database}
2253	Dynamic Unpivoting of a Table	dynamic-unpivoting-of-a-table	Hard	{Database}
2254	Design Video Sharing Platform	design-video-sharing-platform	Hard	{"Hash Table",Design,"Heap (Priority Queue)"}
2255	Count Prefixes of a Given String	count-prefixes-of-a-given-string	Easy	{Array,String}
2256	Minimum Average Difference	minimum-average-difference	Medium	{Array,"Prefix Sum"}
2257	Count Unguarded Cells in the Grid	count-unguarded-cells-in-the-grid	Medium	{Array,Matrix,Simulation}
2258	Escape the Spreading Fire	escape-the-spreading-fire	Hard	{Array,"Binary Search","Breadth-First Search",Matrix}
2259	Remove Digit From Number to Maximize Result	remove-digit-from-number-to-maximize-result	Easy	{String,Greedy,Enumeration}
2260	Minimum Consecutive Cards to Pick Up	minimum-consecutive-cards-to-pick-up	Medium	{Array,"Hash Table","Sliding Window"}
2261	K Divisible Elements Subarrays	k-divisible-elements-subarrays	Medium	{Array,"Hash Table",Trie,"Rolling Hash","Hash Function",Enumeration}
2262	Total Appeal of A String	total-appeal-of-a-string	Hard	{"Hash Table",String,"Dynamic Programming"}
2263	Make Array Non-decreasing or Non-increasing	make-array-non-decreasing-or-non-increasing	Hard	{Array,"Dynamic Programming",Greedy,"Heap (Priority Queue)"}
2264	Largest 3-Same-Digit Number in String	largest-3-same-digit-number-in-string	Easy	{String}
2265	Count Nodes Equal to Average of Subtree	count-nodes-equal-to-average-of-subtree	Medium	{Tree,"Depth-First Search","Binary Tree"}
2266	Count Number of Texts	count-number-of-texts	Medium	{"Hash Table",Math,String,"Dynamic Programming"}
2267	 Check if There Is a Valid Parentheses String Path	check-if-there-is-a-valid-parentheses-string-path	Hard	{Array,"Dynamic Programming",Matrix}
2268	Minimum Number of Keypresses	minimum-number-of-keypresses	Medium	{"Hash Table",String,Greedy,Sorting,Counting}
2269	Find the K-Beauty of a Number	find-the-k-beauty-of-a-number	Easy	{Math,String,"Sliding Window"}
2270	Number of Ways to Split Array	number-of-ways-to-split-array	Medium	{Array,"Prefix Sum"}
2271	Maximum White Tiles Covered by a Carpet	maximum-white-tiles-covered-by-a-carpet	Medium	{Array,"Binary Search",Greedy,"Sliding Window",Sorting,"Prefix Sum"}
2272	Substring With Largest Variance	substring-with-largest-variance	Hard	{"Hash Table",String,"Dynamic Programming",Enumeration}
2273	Find Resultant Array After Removing Anagrams	find-resultant-array-after-removing-anagrams	Easy	{Array,"Hash Table",String,Sorting}
2274	Maximum Consecutive Floors Without Special Floors	maximum-consecutive-floors-without-special-floors	Medium	{Array,Sorting}
2275	Largest Combination With Bitwise AND Greater Than Zero	largest-combination-with-bitwise-and-greater-than-zero	Medium	{Array,"Hash Table","Bit Manipulation",Counting}
2276	Count Integers in Intervals	count-integers-in-intervals	Hard	{Design,"Segment Tree","Ordered Set"}
2277	Closest Node to Path in Tree	closest-node-to-path-in-tree	Hard	{Array,Tree,"Depth-First Search","Breadth-First Search"}
2278	Percentage of Letter in String	percentage-of-letter-in-string	Easy	{String}
2279	Maximum Bags With Full Capacity of Rocks	maximum-bags-with-full-capacity-of-rocks	Medium	{Array,Greedy,Sorting}
2280	Minimum Lines to Represent a Line Chart	minimum-lines-to-represent-a-line-chart	Medium	{Array,Math,Geometry,Sorting,"Number Theory"}
2281	Sum of Total Strength of Wizards	sum-of-total-strength-of-wizards	Hard	{Array,Stack,"Monotonic Stack","Prefix Sum"}
2282	Number of People That Can Be Seen in a Grid	number-of-people-that-can-be-seen-in-a-grid	Medium	{Array,Stack,Matrix,"Monotonic Stack"}
2283	Check if Number Has Equal Digit Count and Digit Value	check-if-number-has-equal-digit-count-and-digit-value	Easy	{"Hash Table",String,Counting}
2284	Sender With Largest Word Count	sender-with-largest-word-count	Medium	{Array,"Hash Table",String,Counting}
2285	Maximum Total Importance of Roads	maximum-total-importance-of-roads	Medium	{Greedy,"Graph Theory",Sorting,"Heap (Priority Queue)"}
2286	Booking Concert Tickets in Groups	booking-concert-tickets-in-groups	Hard	{"Binary Search",Design,"Binary Indexed Tree","Segment Tree"}
2287	Rearrange Characters to Make Target String	rearrange-characters-to-make-target-string	Easy	{"Hash Table",String,Counting}
2288	Apply Discount to Prices	apply-discount-to-prices	Medium	{String}
2289	Steps to Make Array Non-decreasing	steps-to-make-array-non-decreasing	Medium	{Array,"Linked List","Dynamic Programming",Stack,"Monotonic Stack",Simulation}
2290	Minimum Obstacle Removal to Reach Corner	minimum-obstacle-removal-to-reach-corner	Hard	{Array,"Breadth-First Search","Graph Theory","Heap (Priority Queue)",Matrix,"Shortest Path"}
2291	Maximum Profit From Trading Stocks	maximum-profit-from-trading-stocks	Medium	{Array,"Dynamic Programming"}
2292	Products With Three or More Orders in Two Consecutive Years	products-with-three-or-more-orders-in-two-consecutive-years	Medium	{Database}
2294	Partition Array Such That Maximum Difference Is K	partition-array-such-that-maximum-difference-is-k	Medium	{Array,Greedy,Sorting}
2295	Replace Elements in an Array	replace-elements-in-an-array	Medium	{Array,"Hash Table",Simulation}
2296	Design a Text Editor	design-a-text-editor	Hard	{"Linked List",String,Stack,Design,Simulation,"Doubly-Linked List"}
2297	Jump Game VIII	jump-game-viii	Medium	{Array,"Dynamic Programming",Stack,"Graph Theory","Monotonic Stack","Shortest Path"}
2298	Tasks Count in the Weekend	tasks-count-in-the-weekend	Medium	{Database}
2299	Strong Password Checker II	strong-password-checker-ii	Easy	{String}
2300	Successful Pairs of Spells and Potions	successful-pairs-of-spells-and-potions	Medium	{Array,"Two Pointers","Binary Search",Sorting}
2301	Match Substring After Replacement	match-substring-after-replacement	Hard	{Array,"Hash Table",String,"String Matching"}
2302	Count Subarrays With Score Less Than K	count-subarrays-with-score-less-than-k	Hard	{Array,"Binary Search","Sliding Window","Prefix Sum"}
2303	Calculate Amount Paid in Taxes	calculate-amount-paid-in-taxes	Easy	{Array,Simulation}
2304	Minimum Path Cost in a Grid	minimum-path-cost-in-a-grid	Medium	{Array,"Dynamic Programming",Matrix}
2305	Fair Distribution of Cookies	fair-distribution-of-cookies	Medium	{Array,"Dynamic Programming",Backtracking,"Bit Manipulation",Bitmask}
2306	Naming a Company	naming-a-company	Hard	{Array,"Hash Table",String,"Bit Manipulation",Enumeration}
2307	Check for Contradictions in Equations	check-for-contradictions-in-equations	Hard	{Array,"Depth-First Search",Union-Find,"Graph Theory"}
2308	Arrange Table by Gender	arrange-table-by-gender	Medium	{Database}
2309	Greatest English Letter in Upper and Lower Case	greatest-english-letter-in-upper-and-lower-case	Easy	{"Hash Table",String,Enumeration}
2310	Sum of Numbers With Units Digit K	sum-of-numbers-with-units-digit-k	Medium	{Math,"Dynamic Programming",Greedy,Enumeration}
2311	Longest Binary Subsequence Less Than or Equal to K	longest-binary-subsequence-less-than-or-equal-to-k	Medium	{String,"Dynamic Programming",Greedy,Memoization}
2312	Selling Pieces of Wood	selling-pieces-of-wood	Hard	{Array,"Dynamic Programming",Memoization}
2313	Minimum Flips in Binary Tree to Get Result	minimum-flips-in-binary-tree-to-get-result	Hard	{"Dynamic Programming",Tree,"Depth-First Search","Binary Tree"}
2314	The First Day of the Maximum Recorded Degree in Each City	the-first-day-of-the-maximum-recorded-degree-in-each-city	Medium	{Database}
2315	Count Asterisks	count-asterisks	Easy	{String}
2316	Count Unreachable Pairs of Nodes in an Undirected Graph	count-unreachable-pairs-of-nodes-in-an-undirected-graph	Medium	{"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
2317	Maximum XOR After Operations 	maximum-xor-after-operations	Medium	{Array,Math,"Bit Manipulation"}
2318	Number of Distinct Roll Sequences	number-of-distinct-roll-sequences	Hard	{"Dynamic Programming",Memoization}
2319	Check if Matrix Is X-Matrix	check-if-matrix-is-x-matrix	Easy	{Array,Matrix}
2320	Count Number of Ways to Place Houses	count-number-of-ways-to-place-houses	Medium	{"Dynamic Programming"}
2321	Maximum Score Of Spliced Array	maximum-score-of-spliced-array	Hard	{Array,"Dynamic Programming"}
2322	Minimum Score After Removals on a Tree	minimum-score-after-removals-on-a-tree	Hard	{Array,"Bit Manipulation",Tree,"Depth-First Search"}
2323	Find Minimum Time to Finish All Jobs II	find-minimum-time-to-finish-all-jobs-ii	Medium	{Array,Greedy,Sorting}
2324	Product Sales Analysis IV	product-sales-analysis-iv	Medium	{Database}
2325	Decode the Message	decode-the-message	Easy	{"Hash Table",String}
2326	Spiral Matrix IV	spiral-matrix-iv	Medium	{Array,"Linked List",Matrix,Simulation}
2327	Number of People Aware of a Secret	number-of-people-aware-of-a-secret	Medium	{"Dynamic Programming",Queue,Simulation}
2328	Number of Increasing Paths in a Grid	number-of-increasing-paths-in-a-grid	Hard	{Array,"Dynamic Programming","Depth-First Search","Breadth-First Search","Graph Theory","Topological Sort",Memoization,Matrix}
2329	Product Sales Analysis V	product-sales-analysis-v	Easy	{Database}
2330	Valid Palindrome IV	valid-palindrome-iv	Medium	{"Two Pointers",String}
2331	Evaluate Boolean Binary Tree	evaluate-boolean-binary-tree	Easy	{Tree,"Depth-First Search","Binary Tree"}
2332	The Latest Time to Catch a Bus	the-latest-time-to-catch-a-bus	Medium	{Array,"Two Pointers","Binary Search",Sorting}
2333	Minimum Sum of Squared Difference	minimum-sum-of-squared-difference	Medium	{Array,"Binary Search",Greedy,Sorting,"Heap (Priority Queue)"}
2334	Subarray With Elements Greater Than Varying Threshold	subarray-with-elements-greater-than-varying-threshold	Hard	{Array,Stack,Union-Find,"Monotonic Stack"}
2335	Minimum Amount of Time to Fill Cups	minimum-amount-of-time-to-fill-cups	Easy	{Array,Greedy,Sorting,"Heap (Priority Queue)"}
2336	Smallest Number in Infinite Set	smallest-number-in-infinite-set	Medium	{"Hash Table",Design,"Heap (Priority Queue)","Ordered Set"}
2337	Move Pieces to Obtain a String	move-pieces-to-obtain-a-string	Medium	{"Two Pointers",String}
2338	Count the Number of Ideal Arrays	count-the-number-of-ideal-arrays	Hard	{Math,"Dynamic Programming",Combinatorics,"Number Theory"}
2340	Minimum Adjacent Swaps to Make a Valid Array	minimum-adjacent-swaps-to-make-a-valid-array	Medium	{Array,Greedy}
2341	Maximum Number of Pairs in Array	maximum-number-of-pairs-in-array	Easy	{Array,"Hash Table",Counting}
2342	Max Sum of a Pair With Equal Sum of Digits	max-sum-of-a-pair-with-equal-sum-of-digits	Medium	{Array,"Hash Table",Sorting,"Heap (Priority Queue)"}
2343	Query Kth Smallest Trimmed Number	query-kth-smallest-trimmed-number	Medium	{Array,String,"Divide and Conquer",Sorting,"Heap (Priority Queue)","Radix Sort",Quickselect}
2344	Minimum Deletions to Make Array Divisible	minimum-deletions-to-make-array-divisible	Hard	{Array,Math,Sorting,"Heap (Priority Queue)","Number Theory"}
2345	Finding the Number of Visible Mountains	finding-the-number-of-visible-mountains	Medium	{Array,Stack,Sorting,"Monotonic Stack"}
2346	Compute the Rank as a Percentage	compute-the-rank-as-a-percentage	Medium	{Database}
2347	Best Poker Hand	best-poker-hand	Easy	{Array,"Hash Table",Counting}
2348	Number of Zero-Filled Subarrays	number-of-zero-filled-subarrays	Medium	{Array,Math}
2349	Design a Number Container System	design-a-number-container-system	Medium	{"Hash Table",Design,"Heap (Priority Queue)","Ordered Set"}
2350	Shortest Impossible Sequence of Rolls	shortest-impossible-sequence-of-rolls	Hard	{Array,"Hash Table",Greedy}
2351	First Letter to Appear Twice	first-letter-to-appear-twice	Easy	{"Hash Table",String,"Bit Manipulation",Counting}
2352	Equal Row and Column Pairs	equal-row-and-column-pairs	Medium	{Array,"Hash Table",Matrix,Simulation}
2353	Design a Food Rating System	design-a-food-rating-system	Medium	{Array,"Hash Table",String,Design,"Heap (Priority Queue)","Ordered Set"}
2354	Number of Excellent Pairs	number-of-excellent-pairs	Hard	{Array,"Hash Table","Binary Search","Bit Manipulation"}
2355	Maximum Number of Books You Can Take	maximum-number-of-books-you-can-take	Hard	{Array,"Dynamic Programming",Stack,"Monotonic Stack"}
2356	Number of Unique Subjects Taught by Each Teacher	number-of-unique-subjects-taught-by-each-teacher	Easy	{Database}
2357	Make Array Zero by Subtracting Equal Amounts	make-array-zero-by-subtracting-equal-amounts	Easy	{Array,"Hash Table",Greedy,Sorting,"Heap (Priority Queue)",Simulation}
2358	Maximum Number of Groups Entering a Competition	maximum-number-of-groups-entering-a-competition	Medium	{Array,Math,"Binary Search",Greedy}
2359	Find Closest Node to Given Two Nodes	find-closest-node-to-given-two-nodes	Medium	{"Depth-First Search","Graph Theory"}
2360	Longest Cycle in a Graph	longest-cycle-in-a-graph	Hard	{"Depth-First Search","Breadth-First Search","Graph Theory","Topological Sort"}
2361	Minimum Costs Using the Train Line	minimum-costs-using-the-train-line	Hard	{Array,"Dynamic Programming"}
2362	Generate the Invoice	generate-the-invoice	Hard	{Database}
2363	Merge Similar Items	merge-similar-items	Easy	{Array,"Hash Table",Sorting,"Ordered Set"}
2364	Count Number of Bad Pairs	count-number-of-bad-pairs	Medium	{Array,"Hash Table",Math,Counting}
2365	Task Scheduler II	task-scheduler-ii	Medium	{Array,"Hash Table",Simulation}
2366	Minimum Replacements to Sort the Array	minimum-replacements-to-sort-the-array	Hard	{Array,Math,Greedy}
2367	Number of Arithmetic Triplets	number-of-arithmetic-triplets	Easy	{Array,"Hash Table","Two Pointers",Enumeration}
2368	Reachable Nodes With Restrictions	reachable-nodes-with-restrictions	Medium	{Array,"Hash Table",Tree,"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
2369	Check if There is a Valid Partition For The Array	check-if-there-is-a-valid-partition-for-the-array	Medium	{Array,"Dynamic Programming"}
2370	Longest Ideal Subsequence	longest-ideal-subsequence	Medium	{"Hash Table",String,"Dynamic Programming"}
2371	Minimize Maximum Value in a Grid	minimize-maximum-value-in-a-grid	Hard	{Array,Union-Find,"Graph Theory","Topological Sort",Sorting,Matrix}
2372	Calculate the Influence of Each Salesperson	calculate-the-influence-of-each-salesperson	Medium	{Database}
2373	Largest Local Values in a Matrix	largest-local-values-in-a-matrix	Easy	{Array,Matrix}
2374	Node With Highest Edge Score	node-with-highest-edge-score	Medium	{"Hash Table","Graph Theory"}
2375	Construct Smallest Number From DI String	construct-smallest-number-from-di-string	Medium	{String,Backtracking,Stack,Greedy}
2376	Count Special Integers	count-special-integers	Hard	{Math,"Dynamic Programming"}
2377	Sort the Olympic Table	sort-the-olympic-table	Easy	{Database}
2378	Choose Edges to Maximize Score in a Tree	choose-edges-to-maximize-score-in-a-tree	Medium	{"Dynamic Programming",Tree,"Depth-First Search"}
2379	Minimum Recolors to Get K Consecutive Black Blocks	minimum-recolors-to-get-k-consecutive-black-blocks	Easy	{String,"Sliding Window"}
2380	Time Needed to Rearrange a Binary String	time-needed-to-rearrange-a-binary-string	Medium	{String,"Dynamic Programming",Simulation}
2381	Shifting Letters II	shifting-letters-ii	Medium	{Array,String,"Prefix Sum"}
2382	Maximum Segment Sum After Removals	maximum-segment-sum-after-removals	Hard	{Array,Union-Find,"Prefix Sum","Ordered Set"}
2383	Minimum Hours of Training to Win a Competition	minimum-hours-of-training-to-win-a-competition	Easy	{Array,Greedy}
2384	Largest Palindromic Number	largest-palindromic-number	Medium	{"Hash Table",String,Greedy,Counting}
2385	Amount of Time for Binary Tree to Be Infected	amount-of-time-for-binary-tree-to-be-infected	Medium	{"Hash Table",Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
2386	Find the K-Sum of an Array	find-the-k-sum-of-an-array	Hard	{Array,Sorting,"Heap (Priority Queue)"}
2387	Median of a Row Wise Sorted Matrix	median-of-a-row-wise-sorted-matrix	Medium	{Array,"Binary Search",Matrix}
2388	Change Null Values in a Table to the Previous Value	change-null-values-in-a-table-to-the-previous-value	Medium	{Database}
2389	Longest Subsequence With Limited Sum	longest-subsequence-with-limited-sum	Easy	{Array,"Binary Search",Greedy,Sorting,"Prefix Sum"}
2390	Removing Stars From a String	removing-stars-from-a-string	Medium	{String,Stack,Simulation}
2391	Minimum Amount of Time to Collect Garbage	minimum-amount-of-time-to-collect-garbage	Medium	{Array,String,"Prefix Sum"}
2392	Build a Matrix With Conditions	build-a-matrix-with-conditions	Hard	{Array,"Graph Theory","Topological Sort",Matrix}
2393	Count Strictly Increasing Subarrays	count-strictly-increasing-subarrays	Medium	{Array,Math,"Dynamic Programming"}
2394	Employees With Deductions	employees-with-deductions	Medium	{Database}
2395	Find Subarrays With Equal Sum	find-subarrays-with-equal-sum	Easy	{Array,"Hash Table"}
2396	Strictly Palindromic Number	strictly-palindromic-number	Medium	{Math,"Two Pointers",Brainteaser}
2397	Maximum Rows Covered by Columns	maximum-rows-covered-by-columns	Medium	{Array,Backtracking,"Bit Manipulation",Matrix,Enumeration}
2398	Maximum Number of Robots Within Budget	maximum-number-of-robots-within-budget	Hard	{Array,"Binary Search",Queue,"Sliding Window","Heap (Priority Queue)","Prefix Sum","Monotonic Queue"}
2399	Check Distances Between Same Letters	check-distances-between-same-letters	Easy	{Array,"Hash Table",String}
2400	Number of Ways to Reach a Position After Exactly k Steps	number-of-ways-to-reach-a-position-after-exactly-k-steps	Medium	{Math,"Dynamic Programming",Combinatorics}
2401	Longest Nice Subarray	longest-nice-subarray	Medium	{Array,"Bit Manipulation","Sliding Window"}
2402	Meeting Rooms III	meeting-rooms-iii	Hard	{Array,"Hash Table",Sorting,"Heap (Priority Queue)",Simulation}
2403	Minimum Time to Kill All Monsters	minimum-time-to-kill-all-monsters	Hard	{Array,"Dynamic Programming","Bit Manipulation",Bitmask}
2404	Most Frequent Even Element	most-frequent-even-element	Easy	{Array,"Hash Table",Counting}
2405	Optimal Partition of String	optimal-partition-of-string	Medium	{"Hash Table",String,Greedy}
2406	Divide Intervals Into Minimum Number of Groups	divide-intervals-into-minimum-number-of-groups	Medium	{Array,"Two Pointers",Greedy,Sorting,"Heap (Priority Queue)","Prefix Sum"}
2407	Longest Increasing Subsequence II	longest-increasing-subsequence-ii	Hard	{Array,"Divide and Conquer","Dynamic Programming","Binary Indexed Tree","Segment Tree",Queue,"Monotonic Queue"}
2408	Design SQL	design-sql	Medium	{Array,"Hash Table",String,Design}
2409	Count Days Spent Together	count-days-spent-together	Easy	{Math,String}
2410	Maximum Matching of Players With Trainers	maximum-matching-of-players-with-trainers	Medium	{Array,"Two Pointers",Greedy,Sorting}
2411	Smallest Subarrays With Maximum Bitwise OR	smallest-subarrays-with-maximum-bitwise-or	Medium	{Array,"Binary Search","Bit Manipulation","Sliding Window"}
2412	Minimum Money Required Before Transactions	minimum-money-required-before-transactions	Hard	{Array,Greedy,Sorting}
2413	Smallest Even Multiple	smallest-even-multiple	Easy	{Math,"Number Theory"}
2414	Length of the Longest Alphabetical Continuous Substring	length-of-the-longest-alphabetical-continuous-substring	Medium	{String}
2415	Reverse Odd Levels of Binary Tree	reverse-odd-levels-of-binary-tree	Medium	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
2416	Sum of Prefix Scores of Strings	sum-of-prefix-scores-of-strings	Hard	{Array,String,Trie,Counting}
2417	Closest Fair Integer	closest-fair-integer	Medium	{Math,Enumeration}
2418	Sort the People	sort-the-people	Easy	{Array,"Hash Table",String,Sorting}
2419	Longest Subarray With Maximum Bitwise AND	longest-subarray-with-maximum-bitwise-and	Medium	{Array,"Bit Manipulation",Brainteaser}
2420	Find All Good Indices	find-all-good-indices	Medium	{Array,"Dynamic Programming","Prefix Sum"}
2421	Number of Good Paths	number-of-good-paths	Hard	{Array,"Hash Table",Tree,Union-Find,"Graph Theory",Sorting}
2422	Merge Operations to Turn Array Into a Palindrome	merge-operations-to-turn-array-into-a-palindrome	Medium	{Array,"Two Pointers",Greedy}
2423	Remove Letter To Equalize Frequency	remove-letter-to-equalize-frequency	Easy	{"Hash Table",String,Counting}
2424	Longest Uploaded Prefix	longest-uploaded-prefix	Medium	{"Hash Table","Binary Search",Union-Find,Design,"Binary Indexed Tree","Segment Tree","Heap (Priority Queue)","Ordered Set"}
2425	Bitwise XOR of All Pairings	bitwise-xor-of-all-pairings	Medium	{Array,"Bit Manipulation",Brainteaser}
2426	Number of Pairs Satisfying Inequality	number-of-pairs-satisfying-inequality	Hard	{Array,"Binary Search","Divide and Conquer","Binary Indexed Tree","Segment Tree","Merge Sort","Ordered Set"}
2427	Number of Common Factors	number-of-common-factors	Easy	{Math,Enumeration,"Number Theory"}
2428	Maximum Sum of an Hourglass	maximum-sum-of-an-hourglass	Medium	{Array,Matrix,"Prefix Sum"}
2429	Minimize XOR	minimize-xor	Medium	{Greedy,"Bit Manipulation"}
2430	Maximum Deletions on a String	maximum-deletions-on-a-string	Hard	{String,"Dynamic Programming","Rolling Hash","String Matching","Hash Function"}
2431	Maximize Total Tastiness of Purchased Fruits	maximize-total-tastiness-of-purchased-fruits	Medium	{Array,"Dynamic Programming"}
2432	The Employee That Worked on the Longest Task	the-employee-that-worked-on-the-longest-task	Easy	{Array}
2433	Find The Original Array of Prefix Xor	find-the-original-array-of-prefix-xor	Medium	{Array,"Bit Manipulation"}
2434	Using a Robot to Print the Lexicographically Smallest String	using-a-robot-to-print-the-lexicographically-smallest-string	Medium	{"Hash Table",String,Stack,Greedy}
2435	Paths in Matrix Whose Sum Is Divisible by K	paths-in-matrix-whose-sum-is-divisible-by-k	Hard	{Array,"Dynamic Programming",Matrix}
2436	Minimum Split Into Subarrays With GCD Greater Than One	minimum-split-into-subarrays-with-gcd-greater-than-one	Medium	{Array,Math,"Dynamic Programming",Greedy,"Number Theory"}
2437	Number of Valid Clock Times	number-of-valid-clock-times	Easy	{String,Enumeration}
2438	Range Product Queries of Powers	range-product-queries-of-powers	Medium	{Array,"Bit Manipulation","Prefix Sum"}
2439	Minimize Maximum of Array	minimize-maximum-of-array	Medium	{Array,"Binary Search","Dynamic Programming",Greedy,"Prefix Sum"}
2440	Create Components With Same Value	create-components-with-same-value	Hard	{Array,Math,Tree,"Depth-First Search",Enumeration}
2441	Largest Positive Integer That Exists With Its Negative	largest-positive-integer-that-exists-with-its-negative	Easy	{Array,"Hash Table","Two Pointers",Sorting}
2442	Count Number of Distinct Integers After Reverse Operations	count-number-of-distinct-integers-after-reverse-operations	Medium	{Array,"Hash Table",Math,Counting}
2443	Sum of Number and Its Reverse	sum-of-number-and-its-reverse	Medium	{Math,Enumeration}
2444	Count Subarrays With Fixed Bounds	count-subarrays-with-fixed-bounds	Hard	{Array,Queue,"Sliding Window","Monotonic Queue"}
2445	Number of Nodes With Value One	number-of-nodes-with-value-one	Medium	{Array,Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
2446	Determine if Two Events Have Conflict	determine-if-two-events-have-conflict	Easy	{Array,String}
2447	Number of Subarrays With GCD Equal to K	number-of-subarrays-with-gcd-equal-to-k	Medium	{Array,Math,"Number Theory"}
2448	Minimum Cost to Make Array Equal	minimum-cost-to-make-array-equal	Hard	{Array,"Binary Search",Greedy,Sorting,"Prefix Sum"}
2449	Minimum Number of Operations to Make Arrays Similar	minimum-number-of-operations-to-make-arrays-similar	Hard	{Array,Greedy,Sorting}
2450	Number of Distinct Binary Strings After Applying Operations	number-of-distinct-binary-strings-after-applying-operations	Medium	{Math,String}
2451	Odd String Difference	odd-string-difference	Easy	{Array,"Hash Table",String}
2452	Words Within Two Edits of Dictionary	words-within-two-edits-of-dictionary	Medium	{Array,String,Trie}
2453	Destroy Sequential Targets	destroy-sequential-targets	Medium	{Array,"Hash Table",Counting}
2454	Next Greater Element IV	next-greater-element-iv	Hard	{Array,"Binary Search",Stack,Sorting,"Heap (Priority Queue)","Monotonic Stack"}
2455	Average Value of Even Numbers That Are Divisible by Three	average-value-of-even-numbers-that-are-divisible-by-three	Easy	{Array,Math}
2456	Most Popular Video Creator	most-popular-video-creator	Medium	{Array,"Hash Table",String,Sorting,"Heap (Priority Queue)"}
2457	Minimum Addition to Make Integer Beautiful	minimum-addition-to-make-integer-beautiful	Medium	{Math,Greedy}
2458	Height of Binary Tree After Subtree Removal Queries	height-of-binary-tree-after-subtree-removal-queries	Hard	{Array,Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
2459	Sort Array by Moving Items to Empty Space	sort-array-by-moving-items-to-empty-space	Hard	{Array,"Hash Table",Sorting}
2460	Apply Operations to an Array	apply-operations-to-an-array	Easy	{Array,"Two Pointers",Simulation}
2461	Maximum Sum of Distinct Subarrays With Length K	maximum-sum-of-distinct-subarrays-with-length-k	Medium	{Array,"Hash Table","Sliding Window"}
2462	Total Cost to Hire K Workers	total-cost-to-hire-k-workers	Medium	{Array,"Two Pointers","Heap (Priority Queue)",Simulation}
2463	Minimum Total Distance Traveled	minimum-total-distance-traveled	Hard	{Array,"Dynamic Programming",Sorting}
2464	Minimum Subarrays in a Valid Split	minimum-subarrays-in-a-valid-split	Medium	{Array,Math,"Dynamic Programming","Number Theory"}
2465	Number of Distinct Averages	number-of-distinct-averages	Easy	{Array,"Hash Table","Two Pointers",Sorting}
2466	Count Ways To Build Good Strings	count-ways-to-build-good-strings	Medium	{"Dynamic Programming"}
2467	Most Profitable Path in a Tree	most-profitable-path-in-a-tree	Medium	{Array,Tree,"Depth-First Search","Breadth-First Search","Graph Theory"}
2468	Split Message Based on Limit	split-message-based-on-limit	Hard	{String,Enumeration}
2469	Convert the Temperature	convert-the-temperature	Easy	{Math}
2656	Maximum Sum With Exactly K Elements 	maximum-sum-with-exactly-k-elements	Easy	{Array,Greedy}
2470	Number of Subarrays With LCM Equal to K	number-of-subarrays-with-lcm-equal-to-k	Medium	{Array,Math,"Number Theory"}
2471	Minimum Number of Operations to Sort a Binary Tree by Level	minimum-number-of-operations-to-sort-a-binary-tree-by-level	Medium	{Tree,"Breadth-First Search","Binary Tree"}
2472	Maximum Number of Non-overlapping Palindrome Substrings	maximum-number-of-non-overlapping-palindrome-substrings	Hard	{"Two Pointers",String,"Dynamic Programming",Greedy}
2473	Minimum Cost to Buy Apples	minimum-cost-to-buy-apples	Medium	{Array,"Graph Theory","Heap (Priority Queue)","Shortest Path"}
2474	Customers With Strictly Increasing Purchases	customers-with-strictly-increasing-purchases	Hard	{Database}
2475	Number of Unequal Triplets in Array	number-of-unequal-triplets-in-array	Easy	{Array,"Hash Table",Sorting}
2476	Closest Nodes Queries in a Binary Search Tree	closest-nodes-queries-in-a-binary-search-tree	Medium	{Array,"Binary Search",Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
2477	Minimum Fuel Cost to Report to the Capital	minimum-fuel-cost-to-report-to-the-capital	Medium	{Tree,"Depth-First Search","Breadth-First Search","Graph Theory"}
2478	Number of Beautiful Partitions	number-of-beautiful-partitions	Hard	{String,"Dynamic Programming","Prefix Sum"}
2479	Maximum XOR of Two Non-Overlapping Subtrees	maximum-xor-of-two-non-overlapping-subtrees	Hard	{Tree,"Depth-First Search","Graph Theory",Trie}
2480	Form a Chemical Bond	form-a-chemical-bond	Easy	{Database}
2481	Minimum Cuts to Divide a Circle	minimum-cuts-to-divide-a-circle	Easy	{Math,Geometry}
2482	Difference Between Ones and Zeros in Row and Column	difference-between-ones-and-zeros-in-row-and-column	Medium	{Array,Matrix,Simulation}
2483	Minimum Penalty for a Shop	minimum-penalty-for-a-shop	Medium	{String,"Prefix Sum"}
2484	Count Palindromic Subsequences	count-palindromic-subsequences	Hard	{String,"Dynamic Programming"}
2485	Find the Pivot Integer	find-the-pivot-integer	Easy	{Math,"Prefix Sum"}
2486	Append Characters to String to Make Subsequence	append-characters-to-string-to-make-subsequence	Medium	{"Two Pointers",String,Greedy}
2487	Remove Nodes From Linked List	remove-nodes-from-linked-list	Medium	{"Linked List",Stack,Recursion,"Monotonic Stack"}
2488	Count Subarrays With Median K	count-subarrays-with-median-k	Hard	{Array,"Hash Table","Prefix Sum"}
2489	Number of Substrings With Fixed Ratio	number-of-substrings-with-fixed-ratio	Medium	{"Hash Table",Math,String,"Prefix Sum"}
2490	Circular Sentence	circular-sentence	Easy	{String}
2491	Divide Players Into Teams of Equal Skill	divide-players-into-teams-of-equal-skill	Medium	{Array,"Hash Table","Two Pointers",Sorting}
2492	Minimum Score of a Path Between Two Cities	minimum-score-of-a-path-between-two-cities	Medium	{"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
2493	Divide Nodes Into the Maximum Number of Groups	divide-nodes-into-the-maximum-number-of-groups	Hard	{"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
2494	Merge Overlapping Events in the Same Hall	merge-overlapping-events-in-the-same-hall	Hard	{Database}
2495	Number of Subarrays Having Even Product	number-of-subarrays-having-even-product	Medium	{Array,Math,"Dynamic Programming"}
2496	Maximum Value of a String in an Array	maximum-value-of-a-string-in-an-array	Easy	{Array,String}
2497	Maximum Star Sum of a Graph	maximum-star-sum-of-a-graph	Medium	{Array,Greedy,"Graph Theory",Sorting,"Heap (Priority Queue)"}
2498	Frog Jump II	frog-jump-ii	Medium	{Array,"Binary Search",Greedy}
2499	Minimum Total Cost to Make Arrays Unequal	minimum-total-cost-to-make-arrays-unequal	Hard	{Array,"Hash Table",Greedy,Counting}
2500	Delete Greatest Value in Each Row	delete-greatest-value-in-each-row	Easy	{Array,Sorting,"Heap (Priority Queue)",Matrix,Simulation}
2501	Longest Square Streak in an Array	longest-square-streak-in-an-array	Medium	{Array,"Hash Table","Binary Search","Dynamic Programming",Sorting}
2502	Design Memory Allocator	design-memory-allocator	Medium	{Array,"Hash Table",Design,Simulation}
2503	Maximum Number of Points From Grid Queries	maximum-number-of-points-from-grid-queries	Hard	{Array,"Two Pointers","Breadth-First Search",Union-Find,Sorting,"Heap (Priority Queue)",Matrix}
2504	Concatenate the Name and the Profession	concatenate-the-name-and-the-profession	Easy	{Database}
2505	Bitwise OR of All Subsequence Sums	bitwise-or-of-all-subsequence-sums	Medium	{Array,Math,"Bit Manipulation",Brainteaser,"Prefix Sum"}
2506	Count Pairs Of Similar Strings	count-pairs-of-similar-strings	Easy	{Array,"Hash Table",String,"Bit Manipulation",Counting}
2507	Smallest Value After Replacing With Sum of Prime Factors	smallest-value-after-replacing-with-sum-of-prime-factors	Medium	{Math,Simulation,"Number Theory"}
2508	Add Edges to Make Degrees of All Nodes Even	add-edges-to-make-degrees-of-all-nodes-even	Hard	{"Hash Table","Graph Theory"}
2509	Cycle Length Queries in a Tree	cycle-length-queries-in-a-tree	Hard	{Array,Tree,"Binary Tree"}
2510	Check if There is a Path With Equal Number of 0's And 1's	check-if-there-is-a-path-with-equal-number-of-0s-and-1s	Medium	{Array,"Dynamic Programming",Matrix}
2511	Maximum Enemy Forts That Can Be Captured	maximum-enemy-forts-that-can-be-captured	Easy	{Array,"Two Pointers"}
2512	Reward Top K Students	reward-top-k-students	Medium	{Array,"Hash Table",String,Sorting,"Heap (Priority Queue)"}
2513	Minimize the Maximum of Two Arrays	minimize-the-maximum-of-two-arrays	Medium	{Math,"Binary Search","Number Theory"}
2514	Count Anagrams	count-anagrams	Hard	{"Hash Table",Math,String,Combinatorics,Counting}
2515	Shortest Distance to Target String in a Circular Array	shortest-distance-to-target-string-in-a-circular-array	Easy	{Array,String}
2516	Take K of Each Character From Left and Right	take-k-of-each-character-from-left-and-right	Medium	{"Hash Table",String,"Sliding Window"}
2517	Maximum Tastiness of Candy Basket	maximum-tastiness-of-candy-basket	Medium	{Array,"Binary Search",Greedy,Sorting}
2518	Number of Great Partitions	number-of-great-partitions	Hard	{Array,"Dynamic Programming"}
2519	Count the Number of K-Big Indices	count-the-number-of-k-big-indices	Hard	{Array,"Binary Search","Divide and Conquer","Binary Indexed Tree","Segment Tree","Merge Sort","Ordered Set"}
2520	Count the Digits That Divide a Number	count-the-digits-that-divide-a-number	Easy	{Math}
2521	Distinct Prime Factors of Product of Array	distinct-prime-factors-of-product-of-array	Medium	{Array,"Hash Table",Math,"Number Theory"}
2522	Partition String Into Substrings With Values at Most K	partition-string-into-substrings-with-values-at-most-k	Medium	{String,"Dynamic Programming",Greedy}
2523	Closest Prime Numbers in Range	closest-prime-numbers-in-range	Medium	{Math,"Number Theory"}
2524	Maximum Frequency Score of a Subarray	maximum-frequency-score-of-a-subarray	Hard	{Array,"Hash Table",Math,Stack,"Sliding Window"}
2525	Categorize Box According to Criteria	categorize-box-according-to-criteria	Easy	{Math}
2526	Find Consecutive Integers from a Data Stream	find-consecutive-integers-from-a-data-stream	Medium	{"Hash Table",Design,Queue,Counting,"Data Stream"}
2527	Find Xor-Beauty of Array	find-xor-beauty-of-array	Medium	{Array,Math,"Bit Manipulation"}
2528	Maximize the Minimum Powered City	maximize-the-minimum-powered-city	Hard	{Array,"Binary Search",Greedy,Queue,"Sliding Window","Prefix Sum"}
2529	Maximum Count of Positive Integer and Negative Integer	maximum-count-of-positive-integer-and-negative-integer	Easy	{Array,"Binary Search",Counting}
2530	Maximal Score After Applying K Operations	maximal-score-after-applying-k-operations	Medium	{Array,Greedy,"Heap (Priority Queue)"}
2531	Make Number of Distinct Characters Equal	make-number-of-distinct-characters-equal	Medium	{"Hash Table",String,Counting}
2532	Time to Cross a Bridge	time-to-cross-a-bridge	Hard	{Array,"Heap (Priority Queue)",Simulation}
2533	Number of Good Binary Strings	number-of-good-binary-strings	Medium	{"Dynamic Programming"}
2534	Time Taken to Cross the Door	time-taken-to-cross-the-door	Hard	{Array,Queue,Simulation}
2535	Difference Between Element Sum and Digit Sum of an Array	difference-between-element-sum-and-digit-sum-of-an-array	Easy	{Array,Math}
2536	Increment Submatrices by One	increment-submatrices-by-one	Medium	{Array,Matrix,"Prefix Sum"}
2537	Count the Number of Good Subarrays	count-the-number-of-good-subarrays	Medium	{Array,"Hash Table","Sliding Window"}
2538	Difference Between Maximum and Minimum Price Sum	difference-between-maximum-and-minimum-price-sum	Hard	{Array,"Dynamic Programming",Tree,"Depth-First Search"}
2539	Count the Number of Good Subsequences	count-the-number-of-good-subsequences	Medium	{"Hash Table",Math,String,Combinatorics,Counting}
2540	Minimum Common Value	minimum-common-value	Easy	{Array,"Hash Table","Two Pointers","Binary Search"}
2541	Minimum Operations to Make Array Equal II	minimum-operations-to-make-array-equal-ii	Medium	{Array,Math,Greedy}
2542	Maximum Subsequence Score	maximum-subsequence-score	Medium	{Array,Greedy,Sorting,"Heap (Priority Queue)"}
2543	Check if Point Is Reachable	check-if-point-is-reachable	Hard	{Math,"Number Theory"}
2544	Alternating Digit Sum	alternating-digit-sum	Easy	{Math}
2545	Sort the Students by Their Kth Score	sort-the-students-by-their-kth-score	Medium	{Array,Sorting,Matrix}
2546	Apply Bitwise Operations to Make Strings Equal	apply-bitwise-operations-to-make-strings-equal	Medium	{String,"Bit Manipulation"}
2547	Minimum Cost to Split an Array	minimum-cost-to-split-an-array	Hard	{Array,"Hash Table","Dynamic Programming",Counting}
2548	Maximum Price to Fill a Bag	maximum-price-to-fill-a-bag	Medium	{Array,Greedy,Sorting}
2549	Count Distinct Numbers on Board	count-distinct-numbers-on-board	Easy	{Array,"Hash Table",Math,Simulation}
2550	Count Collisions of Monkeys on a Polygon	count-collisions-of-monkeys-on-a-polygon	Medium	{Math,Recursion}
2551	Put Marbles in Bags	put-marbles-in-bags	Hard	{Array,Greedy,Sorting,"Heap (Priority Queue)"}
2552	Count Increasing Quadruplets	count-increasing-quadruplets	Hard	{Array,"Dynamic Programming","Binary Indexed Tree",Enumeration,"Prefix Sum"}
2553	Separate the Digits in an Array	separate-the-digits-in-an-array	Easy	{Array,Simulation}
2554	Maximum Number of Integers to Choose From a Range I	maximum-number-of-integers-to-choose-from-a-range-i	Medium	{Array,"Hash Table","Binary Search",Greedy,Sorting}
2555	Maximize Win From Two Segments	maximize-win-from-two-segments	Medium	{Array,"Binary Search","Sliding Window"}
2556	Disconnect Path in a Binary Matrix by at Most One Flip	disconnect-path-in-a-binary-matrix-by-at-most-one-flip	Medium	{Array,"Dynamic Programming","Depth-First Search","Breadth-First Search",Matrix}
2557	Maximum Number of Integers to Choose From a Range II	maximum-number-of-integers-to-choose-from-a-range-ii	Medium	{Array,"Binary Search",Greedy,Sorting}
2558	Take Gifts From the Richest Pile	take-gifts-from-the-richest-pile	Easy	{Array,"Heap (Priority Queue)",Simulation}
2559	Count Vowel Strings in Ranges	count-vowel-strings-in-ranges	Medium	{Array,String,"Prefix Sum"}
2560	House Robber IV	house-robber-iv	Medium	{Array,"Binary Search","Dynamic Programming",Greedy}
2561	Rearranging Fruits	rearranging-fruits	Hard	{Array,"Hash Table",Greedy,Sort}
2562	Find the Array Concatenation Value	find-the-array-concatenation-value	Easy	{Array,"Two Pointers",Simulation}
2563	Count the Number of Fair Pairs	count-the-number-of-fair-pairs	Medium	{Array,"Two Pointers","Binary Search",Sorting}
2564	Substring XOR Queries	substring-xor-queries	Medium	{Array,"Hash Table",String,"Bit Manipulation"}
2565	Subsequence With the Minimum Score	subsequence-with-the-minimum-score	Hard	{"Two Pointers",String,"Binary Search"}
2566	Maximum Difference by Remapping a Digit	maximum-difference-by-remapping-a-digit	Easy	{Math,Greedy}
2567	Minimum Score by Changing Two Elements	minimum-score-by-changing-two-elements	Medium	{Array,Greedy,Sorting}
2568	Minimum Impossible OR	minimum-impossible-or	Medium	{Array,"Bit Manipulation",Brainteaser}
2569	Handling Sum Queries After Update	handling-sum-queries-after-update	Hard	{Array,"Segment Tree"}
2570	Merge Two 2D Arrays by Summing Values	merge-two-2d-arrays-by-summing-values	Easy	{Array,"Hash Table","Two Pointers"}
2571	Minimum Operations to Reduce an Integer to 0	minimum-operations-to-reduce-an-integer-to-0	Medium	{"Dynamic Programming",Greedy,"Bit Manipulation"}
2572	Count the Number of Square-Free Subsets	count-the-number-of-square-free-subsets	Medium	{Array,Math,"Dynamic Programming","Bit Manipulation","Number Theory",Bitmask}
2573	Find the String with LCP	find-the-string-with-lcp	Hard	{Array,String,"Dynamic Programming",Greedy,Union-Find,Matrix}
2574	Left and Right Sum Differences	left-and-right-sum-differences	Easy	{Array,"Prefix Sum"}
2575	Find the Divisibility Array of a String	find-the-divisibility-array-of-a-string	Medium	{Array,Math,String}
2576	Find the Maximum Number of Marked Indices	find-the-maximum-number-of-marked-indices	Medium	{Array,"Two Pointers","Binary Search",Greedy,Sorting}
2577	Minimum Time to Visit a Cell In a Grid	minimum-time-to-visit-a-cell-in-a-grid	Hard	{Array,"Breadth-First Search","Graph Theory","Heap (Priority Queue)",Matrix,"Shortest Path"}
2578	Split With Minimum Sum	split-with-minimum-sum	Easy	{Math,Greedy,Sorting}
2579	Count Total Number of Colored Cells	count-total-number-of-colored-cells	Medium	{Math}
2580	Count Ways to Group Overlapping Ranges	count-ways-to-group-overlapping-ranges	Medium	{Array,Sorting}
2581	Count Number of Possible Root Nodes	count-number-of-possible-root-nodes	Hard	{Array,"Hash Table","Dynamic Programming",Tree,"Depth-First Search"}
2582	Pass the Pillow	pass-the-pillow	Easy	{Math,Simulation}
2583	Kth Largest Sum in a Binary Tree	kth-largest-sum-in-a-binary-tree	Medium	{Tree,"Breadth-First Search",Sorting,"Binary Tree"}
2584	Split the Array to Make Coprime Products	split-the-array-to-make-coprime-products	Hard	{Array,"Hash Table",Math,"Number Theory"}
2585	Number of Ways to Earn Points	number-of-ways-to-earn-points	Hard	{Array,"Dynamic Programming"}
2586	Count the Number of Vowel Strings in Range	count-the-number-of-vowel-strings-in-range	Easy	{Array,String,Counting}
2587	Rearrange Array to Maximize Prefix Score	rearrange-array-to-maximize-prefix-score	Medium	{Array,Greedy,Sorting,"Prefix Sum"}
2588	Count the Number of Beautiful Subarrays	count-the-number-of-beautiful-subarrays	Medium	{Array,"Hash Table","Bit Manipulation","Prefix Sum"}
2589	Minimum Time to Complete All Tasks	minimum-time-to-complete-all-tasks	Hard	{Array,"Binary Search",Stack,Greedy,Sorting}
2590	Design a Todo List	design-a-todo-list	Medium	{Array,"Hash Table",String,Design,Sorting}
2591	Distribute Money to Maximum Children	distribute-money-to-maximum-children	Easy	{Math,Greedy}
2592	Maximize Greatness of an Array	maximize-greatness-of-an-array	Medium	{Array,"Two Pointers",Greedy,Sorting}
2593	Find Score of an Array After Marking All Elements	find-score-of-an-array-after-marking-all-elements	Medium	{Array,"Hash Table",Sorting,"Heap (Priority Queue)",Simulation}
2594	Minimum Time to Repair Cars	minimum-time-to-repair-cars	Medium	{Array,"Binary Search"}
2595	Number of Even and Odd Bits	number-of-even-and-odd-bits	Easy	{"Bit Manipulation"}
2596	Check Knight Tour Configuration	check-knight-tour-configuration	Medium	{Array,"Depth-First Search","Breadth-First Search",Matrix,Simulation}
2597	The Number of Beautiful Subsets	the-number-of-beautiful-subsets	Medium	{Array,"Hash Table",Math,"Dynamic Programming",Backtracking,Sorting,Combinatorics}
2598	Smallest Missing Non-negative Integer After Operations	smallest-missing-non-negative-integer-after-operations	Medium	{Array,"Hash Table",Math,Greedy}
2599	Make the Prefix Sum Non-negative	make-the-prefix-sum-non-negative	Medium	{Array,Greedy,"Heap (Priority Queue)"}
2600	K Items With the Maximum Sum	k-items-with-the-maximum-sum	Easy	{Math,Greedy}
2601	Prime Subtraction Operation	prime-subtraction-operation	Medium	{Array,Math,"Binary Search",Greedy,"Number Theory"}
2602	Minimum Operations to Make All Array Elements Equal	minimum-operations-to-make-all-array-elements-equal	Medium	{Array,"Binary Search",Sorting,"Prefix Sum"}
2603	Collect Coins in a Tree	collect-coins-in-a-tree	Hard	{Array,Tree,"Graph Theory","Topological Sort"}
2604	Minimum Time to Eat All Grains	minimum-time-to-eat-all-grains	Hard	{Array,"Two Pointers","Binary Search",Sorting}
2605	Form Smallest Number From Two Digit Arrays	form-smallest-number-from-two-digit-arrays	Easy	{Array,"Hash Table",Enumeration}
2606	Find the Substring With Maximum Cost	find-the-substring-with-maximum-cost	Medium	{Array,"Hash Table",String,"Dynamic Programming"}
2607	Make K-Subarray Sums Equal	make-k-subarray-sums-equal	Medium	{Array,Math,Greedy,Sorting,"Number Theory"}
2608	Shortest Cycle in a Graph	shortest-cycle-in-a-graph	Hard	{"Breadth-First Search","Graph Theory"}
2609	Find the Longest Balanced Substring of a Binary String	find-the-longest-balanced-substring-of-a-binary-string	Easy	{String}
2610	Convert an Array Into a 2D Array With Conditions	convert-an-array-into-a-2d-array-with-conditions	Medium	{Array,"Hash Table"}
2611	Mice and Cheese	mice-and-cheese	Medium	{Array,Greedy,Sorting,"Heap (Priority Queue)"}
2612	Minimum Reverse Operations	minimum-reverse-operations	Hard	{Array,"Hash Table","Breadth-First Search",Union-Find,"Ordered Set"}
2613	Beautiful Pairs	beautiful-pairs	Hard	{Array,Math,"Divide and Conquer",Geometry,Sorting,"Ordered Set"}
2614	Prime In Diagonal	prime-in-diagonal	Easy	{Array,Math,Matrix,"Number Theory"}
2615	Sum of Distances	sum-of-distances	Medium	{Array,"Hash Table","Prefix Sum"}
2616	Minimize the Maximum Difference of Pairs	minimize-the-maximum-difference-of-pairs	Medium	{Array,"Binary Search","Dynamic Programming",Greedy,Sorting}
2617	Minimum Number of Visited Cells in a Grid	minimum-number-of-visited-cells-in-a-grid	Hard	{Array,"Dynamic Programming",Stack,"Breadth-First Search",Union-Find,"Heap (Priority Queue)",Matrix,"Monotonic Stack"}
2618	Check if Object Instance of Class	check-if-object-instance-of-class	Medium	{}
2619	Array Prototype Last	array-prototype-last	Easy	{}
2620	Counter	counter	Easy	{}
2621	Sleep	sleep	Easy	{}
2622	Cache With Time Limit	cache-with-time-limit	Medium	{}
2623	Memoize	memoize	Medium	{}
2624	Snail Traversal	snail-traversal	Medium	{}
2625	Flatten Deeply Nested Array	flatten-deeply-nested-array	Medium	{}
2626	Array Reduce Transformation	array-reduce-transformation	Easy	{}
2627	Debounce	debounce	Medium	{}
2628	JSON Deep Equal	json-deep-equal	Medium	{}
2629	Function Composition	function-composition	Easy	{}
2630	Memoize II	memoize-ii	Hard	{}
2631	Group By	group-by	Medium	{}
2632	Curry	curry	Medium	{}
2633	Convert Object to JSON String	convert-object-to-json-string	Medium	{}
2634	Filter Elements from Array	filter-elements-from-array	Easy	{}
2635	Apply Transform Over Each Element in Array	apply-transform-over-each-element-in-array	Easy	{}
2636	Promise Pool	promise-pool	Medium	{}
2637	Promise Time Limit	promise-time-limit	Medium	{}
2638	Count the Number of K-Free Subsets	count-the-number-of-k-free-subsets	Medium	{Array,Math,"Dynamic Programming",Sorting,Combinatorics}
2639	Find the Width of Columns of a Grid	find-the-width-of-columns-of-a-grid	Easy	{Array,Matrix}
2640	Find the Score of All Prefixes of an Array	find-the-score-of-all-prefixes-of-an-array	Medium	{Array,"Prefix Sum"}
2641	Cousins in Binary Tree II	cousins-in-binary-tree-ii	Medium	{"Hash Table",Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
2642	Design Graph With Shortest Path Calculator	design-graph-with-shortest-path-calculator	Hard	{"Graph Theory",Design,"Heap (Priority Queue)","Shortest Path"}
2643	Row With Maximum Ones	row-with-maximum-ones	Easy	{Array,Matrix}
2644	Find the Maximum Divisibility Score	find-the-maximum-divisibility-score	Easy	{Array}
2645	Minimum Additions to Make Valid String	minimum-additions-to-make-valid-string	Medium	{String,"Dynamic Programming",Stack,Greedy}
2646	Minimize the Total Price of the Trips	minimize-the-total-price-of-the-trips	Hard	{Array,"Dynamic Programming",Tree,"Depth-First Search","Graph Theory"}
2647	Color the Triangle Red	color-the-triangle-red	Hard	{Array,Math}
2648	Generate Fibonacci Sequence	generate-fibonacci-sequence	Easy	{}
2649	Nested Array Generator	nested-array-generator	Medium	{}
2650	Design Cancellable Function	design-cancellable-function	Hard	{}
2651	Calculate Delayed Arrival Time	calculate-delayed-arrival-time	Easy	{Math}
2652	Sum Multiples	sum-multiples	Easy	{Math}
2653	Sliding Subarray Beauty	sliding-subarray-beauty	Medium	{Array,"Hash Table","Sliding Window"}
2654	Minimum Number of Operations to Make All Array Elements Equal to 1	minimum-number-of-operations-to-make-all-array-elements-equal-to-1	Medium	{Array,Math,"Number Theory"}
2655	Find Maximal Uncovered Ranges	find-maximal-uncovered-ranges	Medium	{Array,Sorting}
2657	Find the Prefix Common Array of Two Arrays	find-the-prefix-common-array-of-two-arrays	Medium	{Array,"Hash Table","Bit Manipulation"}
2658	Maximum Number of Fish in a Grid	maximum-number-of-fish-in-a-grid	Medium	{Array,"Depth-First Search","Breadth-First Search",Union-Find,Matrix}
2659	Make Array Empty	make-array-empty	Hard	{Array,"Binary Search",Greedy,"Binary Indexed Tree","Segment Tree",Sorting,"Ordered Set"}
2660	Determine the Winner of a Bowling Game	determine-the-winner-of-a-bowling-game	Easy	{Array,Simulation}
2661	First Completely Painted Row or Column	first-completely-painted-row-or-column	Medium	{Array,"Hash Table",Matrix}
2662	Minimum Cost of a Path With Special Roads	minimum-cost-of-a-path-with-special-roads	Medium	{Array,"Graph Theory","Heap (Priority Queue)","Shortest Path"}
2663	Lexicographically Smallest Beautiful String	lexicographically-smallest-beautiful-string	Hard	{String,Greedy}
2664	The Knight’s Tour	the-knights-tour	Medium	{Array,Backtracking,Matrix}
2665	Counter II	counter-ii	Easy	{}
2666	Allow One Function Call	allow-one-function-call	Easy	{}
2667	Create Hello World Function	create-hello-world-function	Easy	{}
2668	Find Latest Salaries	find-latest-salaries	Easy	{Database}
2669	Count Artist Occurrences On Spotify Ranking List	count-artist-occurrences-on-spotify-ranking-list	Easy	{Database}
2670	Find the Distinct Difference Array	find-the-distinct-difference-array	Easy	{Array,"Hash Table"}
2671	Frequency Tracker	frequency-tracker	Medium	{"Hash Table",Design}
2672	Number of Adjacent Elements With the Same Color	number-of-adjacent-elements-with-the-same-color	Medium	{Array}
2673	Make Costs of Paths Equal in a Binary Tree	make-costs-of-paths-equal-in-a-binary-tree	Medium	{Array,"Dynamic Programming",Greedy,Tree,"Binary Tree"}
2674	Split a Circular Linked List	split-a-circular-linked-list	Medium	{"Linked List","Two Pointers"}
2675	Array of Objects to Matrix	array-of-objects-to-matrix	Hard	{}
2676	Throttle	throttle	Medium	{}
2677	Chunk Array	chunk-array	Easy	{}
2678	Number of Senior Citizens	number-of-senior-citizens	Easy	{Array,String}
2679	Sum in a Matrix	sum-in-a-matrix	Medium	{Array,Sorting,"Heap (Priority Queue)",Matrix,Simulation}
2680	Maximum OR	maximum-or	Medium	{Array,Greedy,"Bit Manipulation","Prefix Sum"}
2681	Power of Heroes	power-of-heroes	Hard	{Array,Math,"Dynamic Programming",Sorting,"Prefix Sum"}
2682	Find the Losers of the Circular Game	find-the-losers-of-the-circular-game	Easy	{Array,"Hash Table",Simulation}
2683	Neighboring Bitwise XOR	neighboring-bitwise-xor	Medium	{Array,"Bit Manipulation"}
2684	Maximum Number of Moves in a Grid	maximum-number-of-moves-in-a-grid	Medium	{Array,"Dynamic Programming",Matrix}
2685	Count the Number of Complete Components	count-the-number-of-complete-components	Medium	{"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
2686	Immediate Food Delivery III	immediate-food-delivery-iii	Medium	{Database}
2687	Bikes Last Time Used 	bikes-last-time-used	Easy	{Database}
2688	Find Active Users	find-active-users	Medium	{Database}
2689	Extract Kth Character From The Rope Tree	extract-kth-character-from-the-rope-tree	Easy	{Tree,"Depth-First Search","Binary Tree"}
2690	Infinite Method Object	infinite-method-object	Easy	{}
2691	Immutability Helper	immutability-helper	Hard	{}
2692	Make Object Immutable	make-object-immutable	Medium	{}
2693	Call Function with Custom Context	call-function-with-custom-context	Medium	{}
2694	Event Emitter	event-emitter	Medium	{}
2695	Array Wrapper	array-wrapper	Easy	{}
2696	Minimum String Length After Removing Substrings	minimum-string-length-after-removing-substrings	Easy	{String,Stack,Simulation}
2697	Lexicographically Smallest Palindrome	lexicographically-smallest-palindrome	Easy	{"Two Pointers",String,Greedy}
2698	Find the Punishment Number of an Integer	find-the-punishment-number-of-an-integer	Medium	{Math,Backtracking}
2699	Modify Graph Edge Weights	modify-graph-edge-weights	Hard	{"Graph Theory","Heap (Priority Queue)","Shortest Path"}
2700	Differences Between Two Objects	differences-between-two-objects	Medium	{}
2701	Consecutive Transactions with Increasing Amounts	consecutive-transactions-with-increasing-amounts	Hard	{Database}
2702	Minimum Operations to Make Numbers Non-positive	minimum-operations-to-make-numbers-non-positive	Hard	{Array,"Binary Search"}
2703	Return Length of Arguments Passed	return-length-of-arguments-passed	Easy	{}
2704	To Be Or Not To Be	to-be-or-not-to-be	Easy	{}
2705	Compact Object	compact-object	Medium	{}
2706	Buy Two Chocolates	buy-two-chocolates	Easy	{Array,Greedy,Sorting}
2707	Extra Characters in a String	extra-characters-in-a-string	Medium	{Array,"Hash Table",String,"Dynamic Programming",Trie}
2708	Maximum Strength of a Group	maximum-strength-of-a-group	Medium	{Array,"Dynamic Programming",Backtracking,Greedy,"Bit Manipulation",Sorting,Enumeration}
2709	Greatest Common Divisor Traversal	greatest-common-divisor-traversal	Hard	{Array,Math,Union-Find,"Number Theory"}
2710	Remove Trailing Zeros From a String	remove-trailing-zeros-from-a-string	Easy	{String}
2711	Difference of Number of Distinct Values on Diagonals	difference-of-number-of-distinct-values-on-diagonals	Medium	{Array,"Hash Table",Matrix}
2712	Minimum Cost to Make All Characters Equal	minimum-cost-to-make-all-characters-equal	Medium	{String,"Dynamic Programming",Greedy}
2713	Maximum Strictly Increasing Cells in a Matrix	maximum-strictly-increasing-cells-in-a-matrix	Hard	{Array,"Hash Table","Binary Search","Dynamic Programming",Memoization,Sorting,Matrix,"Ordered Set"}
2714	Find Shortest Path with K Hops	find-shortest-path-with-k-hops	Hard	{"Graph Theory","Heap (Priority Queue)","Shortest Path"}
2715	Timeout Cancellation	timeout-cancellation	Easy	{}
2716	Minimize String Length	minimize-string-length	Easy	{"Hash Table",String}
2717	Semi-Ordered Permutation	semi-ordered-permutation	Easy	{Array,Simulation}
2718	Sum of Matrix After Queries	sum-of-matrix-after-queries	Medium	{Array,"Hash Table"}
2719	Count of Integers	count-of-integers	Hard	{Math,String,"Dynamic Programming"}
2720	Popularity Percentage	popularity-percentage	Hard	{Database}
2721	Execute Asynchronous Functions in Parallel	execute-asynchronous-functions-in-parallel	Medium	{}
2722	Join Two Arrays by ID	join-two-arrays-by-id	Medium	{}
2723	Add Two Promises	add-two-promises	Easy	{}
2724	Sort By	sort-by	Easy	{}
2725	Interval Cancellation	interval-cancellation	Easy	{}
2726	Calculator with Method Chaining	calculator-with-method-chaining	Easy	{}
2727	Is Object Empty	is-object-empty	Easy	{}
2728	Count Houses in a Circular Street	count-houses-in-a-circular-street	Easy	{Array,Interactive}
2729	Check if The Number is Fascinating	check-if-the-number-is-fascinating	Easy	{"Hash Table",Math}
2730	Find the Longest Semi-Repetitive Substring	find-the-longest-semi-repetitive-substring	Medium	{String,"Sliding Window"}
2731	Movement of Robots	movement-of-robots	Medium	{Array,Brainteaser,Sorting,"Prefix Sum"}
2732	Find a Good Subset of the Matrix	find-a-good-subset-of-the-matrix	Hard	{Array,"Hash Table","Bit Manipulation",Matrix}
2733	Neither Minimum nor Maximum	neither-minimum-nor-maximum	Easy	{Array,Sorting}
2734	Lexicographically Smallest String After Substring Operation	lexicographically-smallest-string-after-substring-operation	Medium	{String,Greedy}
2735	Collecting Chocolates	collecting-chocolates	Medium	{Array,Enumeration}
2736	Maximum Sum Queries	maximum-sum-queries	Hard	{Array,"Binary Search",Stack,"Binary Indexed Tree","Segment Tree",Sorting,"Monotonic Stack"}
2737	Find the Closest Marked Node	find-the-closest-marked-node	Medium	{Array,"Graph Theory","Heap (Priority Queue)","Shortest Path"}
2738	Count Occurrences in Text	count-occurrences-in-text	Medium	{Database}
2739	Total Distance Traveled	total-distance-traveled	Easy	{Math,Simulation}
2740	Find the Value of the Partition	find-the-value-of-the-partition	Medium	{Array,Sorting}
2741	Special Permutations	special-permutations	Medium	{Array,"Dynamic Programming","Bit Manipulation",Bitmask}
2742	Painting the Walls	painting-the-walls	Hard	{Array,"Dynamic Programming"}
2743	Count Substrings Without Repeating Character	count-substrings-without-repeating-character	Medium	{"Hash Table",String,"Sliding Window"}
2744	Find Maximum Number of String Pairs	find-maximum-number-of-string-pairs	Easy	{Array,"Hash Table",String,Simulation}
2745	Construct the Longest New String	construct-the-longest-new-string	Medium	{Math,"Dynamic Programming",Greedy,Brainteaser}
2746	Decremental String Concatenation	decremental-string-concatenation	Medium	{Array,String,"Dynamic Programming"}
2747	Count Zero Request Servers	count-zero-request-servers	Medium	{Array,"Hash Table","Sliding Window",Sorting}
2748	Number of Beautiful Pairs	number-of-beautiful-pairs	Easy	{Array,"Hash Table",Math,Counting,"Number Theory"}
2749	Minimum Operations to Make the Integer Zero	minimum-operations-to-make-the-integer-zero	Medium	{"Bit Manipulation",Brainteaser,Enumeration}
2750	Ways to Split Array Into Good Subarrays	ways-to-split-array-into-good-subarrays	Medium	{Array,Math,"Dynamic Programming"}
2751	Robot Collisions	robot-collisions	Hard	{Array,Stack,Sorting,Simulation}
2752	Customers with Maximum Number of Transactions on Consecutive Days	customers-with-maximum-number-of-transactions-on-consecutive-days	Hard	{Database}
2753	Count Houses in a Circular Street II	count-houses-in-a-circular-street-ii	Hard	{}
2754	Bind Function to Context	bind-function-to-context	Medium	{}
2755	Deep Merge of Two Objects	deep-merge-of-two-objects	Medium	{}
2756	Query Batching	query-batching	Hard	{}
2757	Generate Circular Array Values	generate-circular-array-values	Medium	{}
2758	Next Day	next-day	Easy	{}
2759	Convert JSON String to Object	convert-json-string-to-object	Hard	{}
2760	Longest Even Odd Subarray With Threshold	longest-even-odd-subarray-with-threshold	Easy	{Array,"Sliding Window"}
2761	Prime Pairs With Target Sum	prime-pairs-with-target-sum	Medium	{Array,Math,Enumeration,"Number Theory"}
2762	Continuous Subarrays	continuous-subarrays	Medium	{Array,Queue,"Sliding Window","Heap (Priority Queue)","Ordered Set","Monotonic Queue"}
2993	Friday Purchases I	friday-purchases-i	Medium	{Database}
2763	Sum of Imbalance Numbers of All Subarrays	sum-of-imbalance-numbers-of-all-subarrays	Hard	{Array,"Hash Table",Enumeration}
2764	Is Array a Preorder of Some ‌Binary Tree	is-array-a-preorder-of-some-binary-tree	Medium	{Stack,Tree,"Depth-First Search","Binary Tree"}
2765	Longest Alternating Subarray	longest-alternating-subarray	Easy	{Array,Enumeration}
2766	Relocate Marbles	relocate-marbles	Medium	{Array,"Hash Table",Sorting,Simulation}
2767	Partition String Into Minimum Beautiful Substrings	partition-string-into-minimum-beautiful-substrings	Medium	{"Hash Table",String,"Dynamic Programming",Backtracking}
2768	Number of Black Blocks	number-of-black-blocks	Medium	{Array,"Hash Table",Enumeration}
2769	Find the Maximum Achievable Number	find-the-maximum-achievable-number	Easy	{Math}
2770	Maximum Number of Jumps to Reach the Last Index	maximum-number-of-jumps-to-reach-the-last-index	Medium	{Array,"Dynamic Programming"}
2771	Longest Non-decreasing Subarray From Two Arrays	longest-non-decreasing-subarray-from-two-arrays	Medium	{Array,"Dynamic Programming"}
2772	Apply Operations to Make All Array Elements Equal to Zero	apply-operations-to-make-all-array-elements-equal-to-zero	Medium	{Array,"Prefix Sum"}
2773	Height of Special Binary Tree	height-of-special-binary-tree	Medium	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
2774	Array Upper Bound	array-upper-bound	Easy	{}
2775	Undefined to Null	undefined-to-null	Medium	{}
2776	Convert Callback Based Function to Promise Based Function	convert-callback-based-function-to-promise-based-function	Medium	{}
2777	Date Range Generator	date-range-generator	Medium	{}
2778	Sum of Squares of Special Elements 	sum-of-squares-of-special-elements	Easy	{Array,Enumeration}
2779	Maximum Beauty of an Array After Applying Operation	maximum-beauty-of-an-array-after-applying-operation	Medium	{Array,"Binary Search","Sliding Window",Sorting}
2780	Minimum Index of a Valid Split	minimum-index-of-a-valid-split	Medium	{Array,"Hash Table",Sorting}
2781	Length of the Longest Valid Substring	length-of-the-longest-valid-substring	Hard	{Array,"Hash Table",String,"Sliding Window"}
2782	Number of Unique Categories	number-of-unique-categories	Medium	{Union-Find,Interactive,Counting}
2783	Flight Occupancy and Waitlist Analysis	flight-occupancy-and-waitlist-analysis	Medium	{Database}
2784	Check if Array is Good	check-if-array-is-good	Easy	{Array,"Hash Table",Sorting}
2785	Sort Vowels in a String	sort-vowels-in-a-string	Medium	{String,Sorting}
2786	Visit Array Positions to Maximize Score	visit-array-positions-to-maximize-score	Medium	{Array,"Dynamic Programming"}
2787	Ways to Express an Integer as Sum of Powers	ways-to-express-an-integer-as-sum-of-powers	Medium	{"Dynamic Programming"}
2788	Split Strings by Separator	split-strings-by-separator	Easy	{Array,String}
2789	Largest Element in an Array after Merge Operations	largest-element-in-an-array-after-merge-operations	Medium	{Array,Greedy}
2790	Maximum Number of Groups With Increasing Length	maximum-number-of-groups-with-increasing-length	Hard	{Array,Math,"Binary Search",Greedy,Sorting}
2791	Count Paths That Can Form a Palindrome in a Tree	count-paths-that-can-form-a-palindrome-in-a-tree	Hard	{"Hash Table","Bit Manipulation",Tree,"Depth-First Search"}
2792	Count Nodes That Are Great Enough	count-nodes-that-are-great-enough	Hard	{"Divide and Conquer",Tree,"Depth-First Search","Binary Tree"}
2793	Status of Flight Tickets	status-of-flight-tickets	Hard	{}
2794	Create Object from Two Arrays	create-object-from-two-arrays	Easy	{}
2795	Parallel Execution of Promises for Individual Results Retrieval	parallel-execution-of-promises-for-individual-results-retrieval	Medium	{}
2796	Repeat String	repeat-string	Easy	{}
2797	Partial Function with Placeholders	partial-function-with-placeholders	Easy	{}
2798	Number of Employees Who Met the Target	number-of-employees-who-met-the-target	Easy	{Array}
2799	Count Complete Subarrays in an Array	count-complete-subarrays-in-an-array	Medium	{Array,"Hash Table","Sliding Window"}
2800	Shortest String That Contains Three Strings	shortest-string-that-contains-three-strings	Medium	{String,Greedy,Enumeration}
2801	Count Stepping Numbers in Range	count-stepping-numbers-in-range	Hard	{String,"Dynamic Programming"}
2802	Find The K-th Lucky Number	find-the-k-th-lucky-number	Medium	{Math,String,"Bit Manipulation"}
2803	Factorial Generator	factorial-generator	Easy	{}
2804	Array Prototype ForEach	array-prototype-foreach	Easy	{}
2805	Custom Interval	custom-interval	Medium	{}
2806	Account Balance After Rounded Purchase	account-balance-after-rounded-purchase	Easy	{Math}
2807	Insert Greatest Common Divisors in Linked List	insert-greatest-common-divisors-in-linked-list	Medium	{"Linked List",Math,"Number Theory"}
2808	Minimum Seconds to Equalize a Circular Array	minimum-seconds-to-equalize-a-circular-array	Medium	{Array,"Hash Table"}
2809	Minimum Time to Make Array Sum At Most x	minimum-time-to-make-array-sum-at-most-x	Hard	{Array,"Dynamic Programming",Sorting}
2810	Faulty Keyboard	faulty-keyboard	Easy	{String,Simulation}
2811	Check if it is Possible to Split Array	check-if-it-is-possible-to-split-array	Medium	{Array,"Dynamic Programming",Greedy}
2994	Friday Purchases II 	friday-purchases-ii	Hard	{Database}
2812	Find the Safest Path in a Grid	find-the-safest-path-in-a-grid	Medium	{Array,"Binary Search","Breadth-First Search",Union-Find,"Heap (Priority Queue)",Matrix}
2813	Maximum Elegance of a K-Length Subsequence	maximum-elegance-of-a-k-length-subsequence	Hard	{Array,"Hash Table",Stack,Greedy,Sorting,"Heap (Priority Queue)"}
2814	Minimum Time Takes to Reach Destination Without Drowning	minimum-time-takes-to-reach-destination-without-drowning	Hard	{Array,"Breadth-First Search",Matrix}
2815	Max Pair Sum in an Array	max-pair-sum-in-an-array	Easy	{Array,"Hash Table"}
2816	Double a Number Represented as a Linked List	double-a-number-represented-as-a-linked-list	Medium	{"Linked List",Math,Stack}
2817	Minimum Absolute Difference Between Elements With Constraint	minimum-absolute-difference-between-elements-with-constraint	Medium	{Array,"Binary Search","Ordered Set"}
2818	Apply Operations to Maximize Score	apply-operations-to-maximize-score	Hard	{Array,Math,Stack,Greedy,Sorting,"Monotonic Stack","Number Theory"}
2819	Minimum Relative Loss After Buying Chocolates	minimum-relative-loss-after-buying-chocolates	Hard	{Array,"Binary Search",Sorting,"Prefix Sum"}
2820	Election Results	election-results	Medium	{}
2821	Delay the Resolution of Each Promise	delay-the-resolution-of-each-promise	Medium	{}
2822	Inversion of Object	inversion-of-object	Easy	{}
2823	Deep Object Filter	deep-object-filter	Medium	{}
2824	Count Pairs Whose Sum is Less than Target	count-pairs-whose-sum-is-less-than-target	Easy	{Array,"Two Pointers","Binary Search",Sorting}
2825	Make String a Subsequence Using Cyclic Increments	make-string-a-subsequence-using-cyclic-increments	Medium	{"Two Pointers",String}
2826	Sorting Three Groups	sorting-three-groups	Medium	{Array,"Binary Search","Dynamic Programming"}
2827	Number of Beautiful Integers in the Range	number-of-beautiful-integers-in-the-range	Hard	{Math,"Dynamic Programming"}
2828	Check if a String Is an Acronym of Words	check-if-a-string-is-an-acronym-of-words	Easy	{Array,String}
2829	Determine the Minimum Sum of a k-avoiding Array	determine-the-minimum-sum-of-a-k-avoiding-array	Medium	{Math,Greedy}
2830	Maximize the Profit as the Salesman	maximize-the-profit-as-the-salesman	Medium	{Array,"Hash Table","Binary Search","Dynamic Programming",Sorting}
2831	Find the Longest Equal Subarray	find-the-longest-equal-subarray	Medium	{Array,"Hash Table","Binary Search","Sliding Window"}
2832	Maximal Range That Each Element Is Maximum in It	maximal-range-that-each-element-is-maximum-in-it	Medium	{Array,Stack,"Monotonic Stack"}
2833	Furthest Point From Origin	furthest-point-from-origin	Easy	{String,Counting}
2834	Find the Minimum Possible Sum of a Beautiful Array	find-the-minimum-possible-sum-of-a-beautiful-array	Medium	{Math,Greedy}
2835	Minimum Operations to Form Subsequence With Target Sum	minimum-operations-to-form-subsequence-with-target-sum	Hard	{Array,Greedy,"Bit Manipulation"}
2836	Maximize Value of Function in a Ball Passing Game	maximize-value-of-function-in-a-ball-passing-game	Hard	{Array,"Dynamic Programming","Bit Manipulation"}
2837	Total Traveled Distance	total-traveled-distance	Easy	{Database}
2838	Maximum Coins Heroes Can Collect	maximum-coins-heroes-can-collect	Medium	{Array,"Two Pointers","Binary Search",Sorting,"Prefix Sum"}
2839	Check if Strings Can be Made Equal With Operations I	check-if-strings-can-be-made-equal-with-operations-i	Easy	{String}
2840	Check if Strings Can be Made Equal With Operations II	check-if-strings-can-be-made-equal-with-operations-ii	Medium	{"Hash Table",String,Sorting}
2841	Maximum Sum of Almost Unique Subarray	maximum-sum-of-almost-unique-subarray	Medium	{Array,"Hash Table","Sliding Window"}
2842	Count K-Subsequences of a String With Maximum Beauty	count-k-subsequences-of-a-string-with-maximum-beauty	Hard	{"Hash Table",Math,String,Greedy,Sorting,Combinatorics}
2843	  Count Symmetric Integers	count-symmetric-integers	Easy	{Math,Enumeration}
2844	Minimum Operations to Make a Special Number	minimum-operations-to-make-a-special-number	Medium	{Math,String,Greedy,Enumeration}
2845	Count of Interesting Subarrays	count-of-interesting-subarrays	Medium	{Array,"Hash Table","Prefix Sum"}
2846	Minimum Edge Weight Equilibrium Queries in a Tree	minimum-edge-weight-equilibrium-queries-in-a-tree	Hard	{Array,"Dynamic Programming","Bit Manipulation",Tree,"Depth-First Search"}
2847	Smallest Number With Given Digit Product	smallest-number-with-given-digit-product	Medium	{Math,Greedy}
2848	Points That Intersect With Cars	points-that-intersect-with-cars	Easy	{Array,"Hash Table","Prefix Sum"}
2849	Determine if a Cell Is Reachable at a Given Time	determine-if-a-cell-is-reachable-at-a-given-time	Medium	{Math}
2850	Minimum Moves to Spread Stones Over Grid	minimum-moves-to-spread-stones-over-grid	Medium	{Array,"Dynamic Programming",Backtracking,"Bit Manipulation",Matrix,Bitmask}
2851	String Transformation	string-transformation	Hard	{Math,String,"Dynamic Programming","String Matching"}
2852	Sum of Remoteness of All Cells	sum-of-remoteness-of-all-cells	Medium	{Array,"Hash Table","Depth-First Search","Breadth-First Search",Union-Find,Matrix}
2853	Highest Salaries Difference	highest-salaries-difference	Easy	{Database}
2854	Rolling Average Steps	rolling-average-steps	Medium	{Database}
2855	Minimum Right Shifts to Sort the Array	minimum-right-shifts-to-sort-the-array	Easy	{Array}
2856	Minimum Array Length After Pair Removals	minimum-array-length-after-pair-removals	Medium	{Array,"Hash Table","Two Pointers","Binary Search",Greedy,Counting}
2857	Count Pairs of Points With Distance k	count-pairs-of-points-with-distance-k	Medium	{Array,"Hash Table","Bit Manipulation"}
2858	Minimum Edge Reversals So Every Node Is Reachable	minimum-edge-reversals-so-every-node-is-reachable	Hard	{"Dynamic Programming","Depth-First Search","Breadth-First Search","Graph Theory"}
2859	Sum of Values at Indices With K Set Bits	sum-of-values-at-indices-with-k-set-bits	Easy	{Array,"Bit Manipulation"}
2860	Happy Students	happy-students	Medium	{Array,Sorting,Enumeration}
2861	Maximum Number of Alloys	maximum-number-of-alloys	Medium	{Array,"Binary Search"}
2862	Maximum Element-Sum of a Complete Subset of Indices	maximum-element-sum-of-a-complete-subset-of-indices	Hard	{Array,Math,"Number Theory"}
2863	Maximum Length of Semi-Decreasing Subarrays	maximum-length-of-semi-decreasing-subarrays	Medium	{Array,Stack,Sorting,"Monotonic Stack"}
2864	Maximum Odd Binary Number	maximum-odd-binary-number	Easy	{Math,String,Greedy}
2865	Beautiful Towers I	beautiful-towers-i	Medium	{Array,Stack,"Monotonic Stack"}
2866	Beautiful Towers II	beautiful-towers-ii	Medium	{Array,Stack,"Monotonic Stack"}
2867	Count Valid Paths in a Tree	count-valid-paths-in-a-tree	Hard	{Math,"Dynamic Programming",Tree,"Depth-First Search","Number Theory"}
2868	The Wording Game	the-wording-game	Hard	{Array,Math,"Two Pointers",String,Greedy,"Game Theory"}
2869	Minimum Operations to Collect Elements	minimum-operations-to-collect-elements	Easy	{Array,"Hash Table","Bit Manipulation"}
2870	Minimum Number of Operations to Make Array Empty	minimum-number-of-operations-to-make-array-empty	Medium	{Array,"Hash Table",Greedy,Counting}
2871	Split Array Into Maximum Number of Subarrays	split-array-into-maximum-number-of-subarrays	Medium	{Array,Greedy,"Bit Manipulation"}
2872	Maximum Number of K-Divisible Components	maximum-number-of-k-divisible-components	Hard	{Tree,"Depth-First Search"}
2873	Maximum Value of an Ordered Triplet I	maximum-value-of-an-ordered-triplet-i	Easy	{Array}
2874	Maximum Value of an Ordered Triplet II	maximum-value-of-an-ordered-triplet-ii	Medium	{Array}
2875	Minimum Size Subarray in Infinite Array	minimum-size-subarray-in-infinite-array	Medium	{Array,"Hash Table","Sliding Window","Prefix Sum"}
2876	Count Visited Nodes in a Directed Graph	count-visited-nodes-in-a-directed-graph	Hard	{"Dynamic Programming","Depth-First Search","Graph Theory","Topological Sort",Memoization}
2877	Create a DataFrame from List	create-a-dataframe-from-list	Easy	{}
2878	Get the Size of a DataFrame	get-the-size-of-a-dataframe	Easy	{}
2879	Display the First Three Rows	display-the-first-three-rows	Easy	{}
2880	Select Data	select-data	Easy	{}
2881	Create a New Column	create-a-new-column	Easy	{}
2882	Drop Duplicate Rows	drop-duplicate-rows	Easy	{}
2883	Drop Missing Data	drop-missing-data	Easy	{}
2884	Modify Columns	modify-columns	Easy	{}
2885	Rename Columns	rename-columns	Easy	{}
2886	Change Data Type	change-data-type	Easy	{}
2887	Fill Missing Data	fill-missing-data	Easy	{}
2888	Reshape Data: Concatenate	reshape-data-concatenate	Easy	{}
2889	Reshape Data: Pivot	reshape-data-pivot	Easy	{}
2890	Reshape Data: Melt	reshape-data-melt	Easy	{}
2891	Method Chaining	method-chaining	Easy	{}
2892	Minimizing Array After Replacing Pairs With Their Product	minimizing-array-after-replacing-pairs-with-their-product	Medium	{Array,"Dynamic Programming",Greedy}
2893	Calculate Orders Within Each Interval	calculate-orders-within-each-interval	Medium	{Database}
2894	Divisible and Non-divisible Sums Difference	divisible-and-non-divisible-sums-difference	Easy	{Math}
2895	Minimum Processing Time	minimum-processing-time	Medium	{Array,Greedy,Sorting}
2896	Apply Operations to Make Two Strings Equal	apply-operations-to-make-two-strings-equal	Medium	{String,"Dynamic Programming"}
2897	Apply Operations on Array to Maximize Sum of Squares	apply-operations-on-array-to-maximize-sum-of-squares	Hard	{Array,"Hash Table",Greedy,"Bit Manipulation"}
2898	Maximum Linear Stock Score	maximum-linear-stock-score	Medium	{Array,"Hash Table"}
2899	Last Visited Integers	last-visited-integers	Easy	{Array,Simulation}
2900	Longest Unequal Adjacent Groups Subsequence I	longest-unequal-adjacent-groups-subsequence-i	Easy	{Array,String,"Dynamic Programming",Greedy}
2901	Longest Unequal Adjacent Groups Subsequence II	longest-unequal-adjacent-groups-subsequence-ii	Medium	{Array,String,"Dynamic Programming"}
2902	Count of Sub-Multisets With Bounded Sum	count-of-sub-multisets-with-bounded-sum	Hard	{Array,"Hash Table","Dynamic Programming","Sliding Window"}
2903	Find Indices With Index and Value Difference I	find-indices-with-index-and-value-difference-i	Easy	{Array,"Two Pointers"}
2904	Shortest and Lexicographically Smallest Beautiful String	shortest-and-lexicographically-smallest-beautiful-string	Medium	{String,"Sliding Window"}
2905	Find Indices With Index and Value Difference II	find-indices-with-index-and-value-difference-ii	Medium	{Array,"Two Pointers"}
2906	Construct Product Matrix	construct-product-matrix	Medium	{Array,Matrix,"Prefix Sum"}
2907	Maximum Profitable Triplets With Increasing Prices I	maximum-profitable-triplets-with-increasing-prices-i	Medium	{Array,"Binary Indexed Tree","Segment Tree"}
2908	Minimum Sum of Mountain Triplets I	minimum-sum-of-mountain-triplets-i	Easy	{Array}
2909	Minimum Sum of Mountain Triplets II	minimum-sum-of-mountain-triplets-ii	Medium	{Array}
2910	Minimum Number of Groups to Create a Valid Assignment	minimum-number-of-groups-to-create-a-valid-assignment	Medium	{Array,"Hash Table",Greedy}
2911	Minimum Changes to Make K Semi-palindromes	minimum-changes-to-make-k-semi-palindromes	Hard	{"Two Pointers",String,"Dynamic Programming"}
2912	Number of Ways to Reach Destination in the Grid	number-of-ways-to-reach-destination-in-the-grid	Hard	{Math,"Dynamic Programming",Combinatorics}
2913	Subarrays Distinct Element Sum of Squares I	subarrays-distinct-element-sum-of-squares-i	Easy	{Array,"Hash Table"}
2914	Minimum Number of Changes to Make Binary String Beautiful	minimum-number-of-changes-to-make-binary-string-beautiful	Medium	{String}
2915	Length of the Longest Subsequence That Sums to Target	length-of-the-longest-subsequence-that-sums-to-target	Medium	{Array,"Dynamic Programming"}
2916	Subarrays Distinct Element Sum of Squares II	subarrays-distinct-element-sum-of-squares-ii	Hard	{Array,"Dynamic Programming","Binary Indexed Tree","Segment Tree"}
2917	Find the K-or of an Array	find-the-k-or-of-an-array	Easy	{Array,"Bit Manipulation"}
2918	Minimum Equal Sum of Two Arrays After Replacing Zeros	minimum-equal-sum-of-two-arrays-after-replacing-zeros	Medium	{Array,Greedy}
2919	Minimum Increment Operations to Make Array Beautiful	minimum-increment-operations-to-make-array-beautiful	Medium	{Array,"Dynamic Programming"}
2920	Maximum Points After Collecting Coins From All Nodes	maximum-points-after-collecting-coins-from-all-nodes	Hard	{Array,"Dynamic Programming","Bit Manipulation",Tree,"Depth-First Search",Memoization}
2921	Maximum Profitable Triplets With Increasing Prices II	maximum-profitable-triplets-with-increasing-prices-ii	Hard	{Array,"Binary Indexed Tree","Segment Tree"}
2922	Market Analysis III	market-analysis-iii	Medium	{Database}
2923	Find Champion I	find-champion-i	Easy	{Array,Matrix}
2924	Find Champion II	find-champion-ii	Medium	{"Graph Theory"}
2925	Maximum Score After Applying Operations on a Tree	maximum-score-after-applying-operations-on-a-tree	Medium	{"Dynamic Programming",Tree,"Depth-First Search"}
2926	Maximum Balanced Subsequence Sum	maximum-balanced-subsequence-sum	Hard	{Array,"Binary Search","Dynamic Programming","Binary Indexed Tree","Segment Tree"}
2927	Distribute Candies Among Children III	distribute-candies-among-children-iii	Hard	{Math,Combinatorics}
2928	Distribute Candies Among Children I	distribute-candies-among-children-i	Easy	{Math,Combinatorics,Enumeration}
2929	Distribute Candies Among Children II	distribute-candies-among-children-ii	Medium	{Math,Combinatorics,Enumeration}
2930	Number of Strings Which Can Be Rearranged to Contain Substring	number-of-strings-which-can-be-rearranged-to-contain-substring	Medium	{Math,"Dynamic Programming",Combinatorics}
2931	Maximum Spending After Buying Items	maximum-spending-after-buying-items	Hard	{Array,Greedy,Sorting,"Heap (Priority Queue)",Matrix}
2932	Maximum Strong Pair XOR I	maximum-strong-pair-xor-i	Easy	{Array,"Hash Table","Bit Manipulation",Trie,"Sliding Window"}
2933	High-Access Employees	high-access-employees	Medium	{Array,"Hash Table",String,Sorting}
2934	Minimum Operations to Maximize Last Elements in Arrays	minimum-operations-to-maximize-last-elements-in-arrays	Medium	{Array,Enumeration}
2935	Maximum Strong Pair XOR II	maximum-strong-pair-xor-ii	Hard	{Array,"Hash Table","Bit Manipulation",Trie,"Sliding Window"}
2936	Number of Equal Numbers Blocks	number-of-equal-numbers-blocks	Medium	{Array,"Binary Search",Interactive}
2937	Make Three Strings Equal	make-three-strings-equal	Easy	{String}
2938	Separate Black and White Balls	separate-black-and-white-balls	Medium	{"Two Pointers",String,Greedy}
2939	Maximum Xor Product	maximum-xor-product	Medium	{Math,Greedy,"Bit Manipulation"}
2940	Find Building Where Alice and Bob Can Meet	find-building-where-alice-and-bob-can-meet	Hard	{Array,"Binary Search",Stack,"Binary Indexed Tree","Segment Tree","Heap (Priority Queue)","Monotonic Stack"}
2941	Maximum GCD-Sum of a Subarray	maximum-gcd-sum-of-a-subarray	Hard	{Array,Math,"Binary Search","Number Theory"}
2942	Find Words Containing Character	find-words-containing-character	Easy	{Array,String}
2943	Maximize Area of Square Hole in Grid	maximize-area-of-square-hole-in-grid	Medium	{Array,Sorting}
2944	Minimum Number of Coins for Fruits	minimum-number-of-coins-for-fruits	Medium	{Array,"Dynamic Programming",Queue,"Heap (Priority Queue)","Monotonic Queue"}
2945	Find Maximum Non-decreasing Array Length	find-maximum-non-decreasing-array-length	Hard	{Array,"Binary Search","Dynamic Programming",Stack,Queue,"Monotonic Stack","Monotonic Queue"}
2946	Matrix Similarity After Cyclic Shifts	matrix-similarity-after-cyclic-shifts	Easy	{Array,Math,Matrix,Simulation}
2947	Count Beautiful Substrings I	count-beautiful-substrings-i	Medium	{"Hash Table",Math,String,Enumeration,"Number Theory","Prefix Sum"}
2948	Make Lexicographically Smallest Array by Swapping Elements	make-lexicographically-smallest-array-by-swapping-elements	Medium	{Array,Union-Find,Sorting}
2995	Viewers Turned Streamers	viewers-turned-streamers	Hard	{Database}
2949	Count Beautiful Substrings II	count-beautiful-substrings-ii	Hard	{"Hash Table",Math,String,"Number Theory","Prefix Sum"}
2950	Number of Divisible Substrings	number-of-divisible-substrings	Medium	{"Hash Table",String,Counting,"Prefix Sum"}
2951	Find the Peaks	find-the-peaks	Easy	{Array,Enumeration}
2952	Minimum Number of Coins to be Added	minimum-number-of-coins-to-be-added	Medium	{Array,Greedy,Sorting}
2953	Count Complete Substrings	count-complete-substrings	Hard	{"Hash Table",String,"Sliding Window"}
2954	Count the Number of Infection Sequences	count-the-number-of-infection-sequences	Hard	{Array,Math,Combinatorics}
2955	Number of Same-End Substrings	number-of-same-end-substrings	Medium	{Array,"Hash Table",String,Counting,"Prefix Sum"}
2956	Find Common Elements Between Two Arrays	find-common-elements-between-two-arrays	Easy	{Array,"Hash Table"}
2957	Remove Adjacent Almost-Equal Characters	remove-adjacent-almost-equal-characters	Medium	{String,"Dynamic Programming",Greedy}
2958	Length of Longest Subarray With at Most K Frequency	length-of-longest-subarray-with-at-most-k-frequency	Medium	{Array,"Hash Table","Sliding Window"}
2959	Number of Possible Sets of Closing Branches	number-of-possible-sets-of-closing-branches	Hard	{"Bit Manipulation","Graph Theory","Heap (Priority Queue)",Enumeration,"Shortest Path"}
2960	Count Tested Devices After Test Operations	count-tested-devices-after-test-operations	Easy	{Array,Simulation,Counting}
2961	Double Modular Exponentiation	double-modular-exponentiation	Medium	{Array,Math,Simulation}
2962	Count Subarrays Where Max Element Appears at Least K Times	count-subarrays-where-max-element-appears-at-least-k-times	Medium	{Array,"Sliding Window"}
2963	Count the Number of Good Partitions	count-the-number-of-good-partitions	Hard	{Array,"Hash Table",Math,Combinatorics}
2964	Number of Divisible Triplet Sums	number-of-divisible-triplet-sums	Medium	{Array,"Hash Table"}
2965	Find Missing and Repeated Values	find-missing-and-repeated-values	Easy	{Array,"Hash Table",Math,Matrix}
2966	Divide Array Into Arrays With Max Difference	divide-array-into-arrays-with-max-difference	Medium	{Array,Greedy,Sorting}
2967	Minimum Cost to Make Array Equalindromic	minimum-cost-to-make-array-equalindromic	Medium	{Array,Math,"Binary Search",Greedy,Sorting}
2968	Apply Operations to Maximize Frequency Score	apply-operations-to-maximize-frequency-score	Hard	{Array,"Binary Search","Sliding Window",Sorting,"Prefix Sum"}
2969	Minimum Number of Coins for Fruits II	minimum-number-of-coins-for-fruits-ii	Hard	{Array,"Dynamic Programming",Queue,"Heap (Priority Queue)","Monotonic Queue"}
2970	Count the Number of Incremovable Subarrays I	count-the-number-of-incremovable-subarrays-i	Easy	{Array,"Two Pointers","Binary Search",Enumeration}
2971	Find Polygon With the Largest Perimeter	find-polygon-with-the-largest-perimeter	Medium	{Array,Greedy,Sorting,"Prefix Sum"}
2972	Count the Number of Incremovable Subarrays II	count-the-number-of-incremovable-subarrays-ii	Hard	{Array,"Two Pointers","Binary Search"}
2973	Find Number of Coins to Place in Tree Nodes	find-number-of-coins-to-place-in-tree-nodes	Hard	{"Dynamic Programming",Tree,"Depth-First Search",Sorting,"Heap (Priority Queue)"}
2974	Minimum Number Game	minimum-number-game	Easy	{Array,Sorting,"Heap (Priority Queue)",Simulation}
2975	Maximum Square Area by Removing Fences From a Field	maximum-square-area-by-removing-fences-from-a-field	Medium	{Array,"Hash Table",Enumeration}
2976	Minimum Cost to Convert String I	minimum-cost-to-convert-string-i	Medium	{Array,String,"Graph Theory","Shortest Path"}
2977	Minimum Cost to Convert String II	minimum-cost-to-convert-string-ii	Hard	{Array,String,"Dynamic Programming","Graph Theory",Trie,"Shortest Path"}
2978	Symmetric Coordinates	symmetric-coordinates	Medium	{Database}
2979	Most Expensive Item That Can Not Be Bought	most-expensive-item-that-can-not-be-bought	Medium	{Math,"Dynamic Programming","Number Theory"}
2980	Check if Bitwise OR Has Trailing Zeros	check-if-bitwise-or-has-trailing-zeros	Easy	{Array,"Bit Manipulation"}
2981	Find Longest Special Substring That Occurs Thrice I	find-longest-special-substring-that-occurs-thrice-i	Medium	{"Hash Table",String,"Binary Search","Sliding Window",Counting}
2982	Find Longest Special Substring That Occurs Thrice II	find-longest-special-substring-that-occurs-thrice-ii	Medium	{"Hash Table",String,"Binary Search","Sliding Window",Counting}
2983	Palindrome Rearrangement Queries	palindrome-rearrangement-queries	Hard	{"Hash Table",String,"Prefix Sum"}
2984	Find Peak Calling Hours for Each City	find-peak-calling-hours-for-each-city	Medium	{Database}
2985	Calculate Compressed Mean	calculate-compressed-mean	Easy	{Database}
2986	Find Third Transaction	find-third-transaction	Medium	{Database}
2987	Find Expensive Cities	find-expensive-cities	Easy	{Database}
2988	Manager of the Largest Department	manager-of-the-largest-department	Medium	{Database}
2989	Class Performance	class-performance	Medium	{Database}
2990	Loan Types	loan-types	Easy	{Database}
2991	Top Three Wineries 	top-three-wineries	Hard	{Database}
2992	Number of Self-Divisible Permutations	number-of-self-divisible-permutations	Medium	{Array,Math,"Dynamic Programming",Backtracking,"Bit Manipulation","Number Theory",Bitmask}
2996	Smallest Missing Integer Greater Than Sequential Prefix Sum	smallest-missing-integer-greater-than-sequential-prefix-sum	Easy	{Array,"Hash Table",Sorting}
2997	Minimum Number of Operations to Make Array XOR Equal to K	minimum-number-of-operations-to-make-array-xor-equal-to-k	Medium	{Array,"Bit Manipulation"}
2998	Minimum Number of Operations to Make X and Y Equal	minimum-number-of-operations-to-make-x-and-y-equal	Medium	{"Dynamic Programming","Breadth-First Search",Memoization}
2999	Count the Number of Powerful Integers	count-the-number-of-powerful-integers	Hard	{Math,String,"Dynamic Programming"}
3000	Maximum Area of Longest Diagonal Rectangle	maximum-area-of-longest-diagonal-rectangle	Easy	{Array}
3001	Minimum Moves to Capture The Queen	minimum-moves-to-capture-the-queen	Medium	{Math,Enumeration}
3002	Maximum Size of a Set After Removals	maximum-size-of-a-set-after-removals	Medium	{Array,"Hash Table",Greedy}
3003	Maximize the Number of Partitions After Operations	maximize-the-number-of-partitions-after-operations	Hard	{String,"Dynamic Programming","Bit Manipulation",Bitmask}
3004	Maximum Subtree of the Same Color	maximum-subtree-of-the-same-color	Medium	{Array,"Dynamic Programming",Tree,"Depth-First Search"}
3005	Count Elements With Maximum Frequency	count-elements-with-maximum-frequency	Easy	{Array,"Hash Table",Counting}
3006	Find Beautiful Indices in the Given Array I	find-beautiful-indices-in-the-given-array-i	Medium	{"Two Pointers",String,"Binary Search","Rolling Hash","String Matching","Hash Function"}
3007	Maximum Number That Sum of the Prices Is Less Than or Equal to K	maximum-number-that-sum-of-the-prices-is-less-than-or-equal-to-k	Medium	{Math,"Binary Search","Dynamic Programming","Bit Manipulation"}
3008	Find Beautiful Indices in the Given Array II	find-beautiful-indices-in-the-given-array-ii	Hard	{"Two Pointers",String,"Binary Search","Rolling Hash","String Matching","Hash Function"}
3009	Maximum Number of Intersections on the Chart	maximum-number-of-intersections-on-the-chart	Hard	{Array,"Hash Table",Math,"Binary Indexed Tree",Geometry,"Sweep Line",Sorting}
3010	Divide an Array Into Subarrays With Minimum Cost I	divide-an-array-into-subarrays-with-minimum-cost-i	Easy	{Array,Sorting,Enumeration}
3011	Find if Array Can Be Sorted	find-if-array-can-be-sorted	Medium	{Array,"Bit Manipulation",Sorting}
3012	Minimize Length of Array Using Operations	minimize-length-of-array-using-operations	Medium	{Array,Math,Greedy,"Number Theory"}
3013	Divide an Array Into Subarrays With Minimum Cost II	divide-an-array-into-subarrays-with-minimum-cost-ii	Hard	{Array,"Hash Table","Sliding Window","Heap (Priority Queue)"}
3014	Minimum Number of Pushes to Type Word I	minimum-number-of-pushes-to-type-word-i	Easy	{Math,String,Greedy}
3015	Count the Number of Houses at a Certain Distance I	count-the-number-of-houses-at-a-certain-distance-i	Medium	{"Breadth-First Search","Graph Theory","Prefix Sum"}
3016	Minimum Number of Pushes to Type Word II	minimum-number-of-pushes-to-type-word-ii	Medium	{"Hash Table",String,Greedy,Sorting,Counting}
3017	Count the Number of Houses at a Certain Distance II	count-the-number-of-houses-at-a-certain-distance-ii	Hard	{"Graph Theory","Prefix Sum"}
3018	Maximum Number of Removal Queries That Can Be Processed I	maximum-number-of-removal-queries-that-can-be-processed-i	Hard	{Array,"Dynamic Programming"}
3019	Number of Changing Keys	number-of-changing-keys	Easy	{String}
3020	Find the Maximum Number of Elements in Subset	find-the-maximum-number-of-elements-in-subset	Medium	{Array,"Hash Table",Enumeration}
3021	Alice and Bob Playing Flower Game	alice-and-bob-playing-flower-game	Medium	{Math}
3022	Minimize OR of Remaining Elements Using Operations	minimize-or-of-remaining-elements-using-operations	Hard	{Array,Greedy,"Bit Manipulation"}
3023	Find Pattern in Infinite Stream I	find-pattern-in-infinite-stream-i	Medium	{Array,"Sliding Window","Rolling Hash","String Matching",Interactive,"Hash Function"}
3024	Type of Triangle	type-of-triangle	Easy	{Array,Math,Sorting}
3025	Find the Number of Ways to Place People I	find-the-number-of-ways-to-place-people-i	Medium	{Array,Math,Geometry,Sorting,Enumeration}
3026	Maximum Good Subarray Sum	maximum-good-subarray-sum	Medium	{Array,"Hash Table","Prefix Sum"}
3027	Find the Number of Ways to Place People II	find-the-number-of-ways-to-place-people-ii	Hard	{Array,Math,Geometry,Sorting,Enumeration}
3028	Ant on the Boundary	ant-on-the-boundary	Easy	{Array,Simulation,"Prefix Sum"}
3029	Minimum Time to Revert Word to Initial State I	minimum-time-to-revert-word-to-initial-state-i	Medium	{String,"Rolling Hash","String Matching","Hash Function"}
3030	Find the Grid of Region Average	find-the-grid-of-region-average	Medium	{Array,Matrix}
3031	Minimum Time to Revert Word to Initial State II	minimum-time-to-revert-word-to-initial-state-ii	Hard	{String,"Rolling Hash","String Matching","Hash Function"}
3032	Count Numbers With Unique Digits II	count-numbers-with-unique-digits-ii	Easy	{"Hash Table",Math,"Dynamic Programming"}
3033	Modify the Matrix	modify-the-matrix	Easy	{Array,Matrix}
3034	Number of Subarrays That Match a Pattern I	number-of-subarrays-that-match-a-pattern-i	Medium	{Array,"Rolling Hash","String Matching","Hash Function"}
3035	Maximum Palindromes After Operations	maximum-palindromes-after-operations	Medium	{Array,"Hash Table",String,Greedy,Sorting,Counting}
3214	Year on Year Growth Rate	year-on-year-growth-rate	Hard	{Database}
3036	Number of Subarrays That Match a Pattern II	number-of-subarrays-that-match-a-pattern-ii	Hard	{Array,"Rolling Hash","String Matching","Hash Function"}
3037	Find Pattern in Infinite Stream II	find-pattern-in-infinite-stream-ii	Hard	{Array,"Sliding Window","Rolling Hash","String Matching",Interactive,"Hash Function"}
3038	Maximum Number of Operations With the Same Score I	maximum-number-of-operations-with-the-same-score-i	Easy	{Array,Simulation}
3039	Apply Operations to Make String Empty	apply-operations-to-make-string-empty	Medium	{Array,"Hash Table",Sorting,Counting}
3040	Maximum Number of Operations With the Same Score II	maximum-number-of-operations-with-the-same-score-ii	Medium	{Array,"Dynamic Programming",Memoization}
3041	Maximize Consecutive Elements in an Array After Modification	maximize-consecutive-elements-in-an-array-after-modification	Hard	{Array,"Dynamic Programming",Sorting}
3042	Count Prefix and Suffix Pairs I	count-prefix-and-suffix-pairs-i	Easy	{Array,String,Trie,"Rolling Hash","String Matching","Hash Function"}
3043	Find the Length of the Longest Common Prefix	find-the-length-of-the-longest-common-prefix	Medium	{Array,"Hash Table",String,Trie}
3044	Most Frequent Prime	most-frequent-prime	Medium	{Array,"Hash Table",Math,Matrix,Counting,Enumeration,"Number Theory"}
3045	Count Prefix and Suffix Pairs II	count-prefix-and-suffix-pairs-ii	Hard	{Array,String,Trie,"Rolling Hash","String Matching","Hash Function"}
3046	Split the Array	split-the-array	Easy	{Array,"Hash Table",Counting}
3047	Find the Largest Area of Square Inside Two Rectangles	find-the-largest-area-of-square-inside-two-rectangles	Medium	{Array,Math,Geometry}
3048	Earliest Second to Mark Indices I	earliest-second-to-mark-indices-i	Medium	{Array,"Binary Search"}
3049	Earliest Second to Mark Indices II	earliest-second-to-mark-indices-ii	Hard	{Array,"Binary Search",Greedy,"Heap (Priority Queue)"}
3050	Pizza Toppings Cost Analysis	pizza-toppings-cost-analysis	Medium	{Database}
3051	Find Candidates for Data Scientist Position	find-candidates-for-data-scientist-position	Easy	{Database}
3052	Maximize Items	maximize-items	Hard	{Database}
3053	Classifying Triangles by Lengths	classifying-triangles-by-lengths	Easy	{Database}
3054	Binary Tree Nodes	binary-tree-nodes	Medium	{Database}
3055	Top Percentile Fraud	top-percentile-fraud	Medium	{Database}
3056	Snaps Analysis	snaps-analysis	Medium	{Database}
3057	Employees Project Allocation	employees-project-allocation	Hard	{Database}
3058	Friends With No Mutual Friends	friends-with-no-mutual-friends	Medium	{Database}
3059	Find All Unique Email Domains	find-all-unique-email-domains	Easy	{Database}
3060	User Activities within Time Bounds	user-activities-within-time-bounds	Hard	{Database}
3061	Calculate Trapping Rain Water	calculate-trapping-rain-water	Hard	{Database}
3062	Winner of the Linked List Game	winner-of-the-linked-list-game	Easy	{"Linked List"}
3063	Linked List Frequency	linked-list-frequency	Easy	{"Hash Table","Linked List",Counting}
3064	Guess the Number Using Bitwise Questions I	guess-the-number-using-bitwise-questions-i	Medium	{"Bit Manipulation",Interactive}
3065	Minimum Operations to Exceed Threshold Value I	minimum-operations-to-exceed-threshold-value-i	Easy	{Array}
3066	Minimum Operations to Exceed Threshold Value II	minimum-operations-to-exceed-threshold-value-ii	Medium	{Array,"Heap (Priority Queue)",Simulation}
3067	Count Pairs of Connectable Servers in a Weighted Tree Network	count-pairs-of-connectable-servers-in-a-weighted-tree-network	Medium	{Array,Tree,"Depth-First Search"}
3068	Find the Maximum Sum of Node Values	find-the-maximum-sum-of-node-values	Hard	{Array,"Dynamic Programming",Greedy,"Bit Manipulation",Tree,Sorting}
3069	Distribute Elements Into Two Arrays I	distribute-elements-into-two-arrays-i	Easy	{Array,Simulation}
3070	Count Submatrices with Top-Left Element and Sum Less Than k	count-submatrices-with-top-left-element-and-sum-less-than-k	Medium	{Array,Matrix,"Prefix Sum"}
3071	Minimum Operations to Write the Letter Y on a Grid	minimum-operations-to-write-the-letter-y-on-a-grid	Medium	{Array,"Hash Table",Matrix,Counting}
3072	Distribute Elements Into Two Arrays II	distribute-elements-into-two-arrays-ii	Hard	{Array,"Binary Indexed Tree","Segment Tree",Simulation}
3073	Maximum Increasing Triplet Value	maximum-increasing-triplet-value	Medium	{Array,"Ordered Set"}
3074	Apple Redistribution into Boxes	apple-redistribution-into-boxes	Easy	{Array,Greedy,Sorting}
3075	Maximize Happiness of Selected Children	maximize-happiness-of-selected-children	Medium	{Array,Greedy,Sorting}
3076	Shortest Uncommon Substring in an Array	shortest-uncommon-substring-in-an-array	Medium	{Array,"Hash Table",String,Trie}
3077	Maximum Strength of K Disjoint Subarrays	maximum-strength-of-k-disjoint-subarrays	Hard	{Array,"Dynamic Programming","Prefix Sum"}
3078	Match Alphanumerical Pattern in Matrix I	match-alphanumerical-pattern-in-matrix-i	Medium	{Array,"Hash Table",String,Matrix}
3079	Find the Sum of Encrypted Integers	find-the-sum-of-encrypted-integers	Easy	{Array,Math}
3080	Mark Elements on Array by Performing Queries	mark-elements-on-array-by-performing-queries	Medium	{Array,"Hash Table",Sorting,"Heap (Priority Queue)",Simulation}
3081	Replace Question Marks in String to Minimize Its Value	replace-question-marks-in-string-to-minimize-its-value	Medium	{"Hash Table",String,Greedy,Sorting,"Heap (Priority Queue)",Counting}
3082	Find the Sum of the Power of All Subsequences	find-the-sum-of-the-power-of-all-subsequences	Hard	{Array,"Dynamic Programming"}
3083	Existence of a Substring in a String and Its Reverse	existence-of-a-substring-in-a-string-and-its-reverse	Easy	{"Hash Table",String}
3084	Count Substrings Starting and Ending with Given Character	count-substrings-starting-and-ending-with-given-character	Medium	{Math,String,Counting}
3085	Minimum Deletions to Make String K-Special	minimum-deletions-to-make-string-k-special	Medium	{"Hash Table",String,Greedy,Sorting,Counting}
3086	Minimum Moves to Pick K Ones	minimum-moves-to-pick-k-ones	Hard	{Array,Greedy,"Sliding Window","Prefix Sum"}
3087	Find Trending Hashtags	find-trending-hashtags	Medium	{Database}
3088	Make String Anti-palindrome	make-string-anti-palindrome	Hard	{String,Greedy,Sorting,"Counting Sort"}
3089	Find Bursty Behavior	find-bursty-behavior	Medium	{Database}
3090	Maximum Length Substring With Two Occurrences	maximum-length-substring-with-two-occurrences	Easy	{"Hash Table",String,"Sliding Window"}
3091	Apply Operations to Make Sum of Array Greater Than or Equal to k	apply-operations-to-make-sum-of-array-greater-than-or-equal-to-k	Medium	{Math,Greedy,Enumeration}
3092	Most Frequent IDs	most-frequent-ids	Medium	{Array,"Hash Table","Heap (Priority Queue)","Ordered Set"}
3093	Longest Common Suffix Queries	longest-common-suffix-queries	Hard	{Array,String,Trie}
3094	Guess the Number Using Bitwise Questions II	guess-the-number-using-bitwise-questions-ii	Medium	{"Bit Manipulation",Interactive}
3095	Shortest Subarray With OR at Least K I	shortest-subarray-with-or-at-least-k-i	Easy	{Array,"Bit Manipulation","Sliding Window"}
3096	Minimum Levels to Gain More Points	minimum-levels-to-gain-more-points	Medium	{Array,"Prefix Sum"}
3097	Shortest Subarray With OR at Least K II	shortest-subarray-with-or-at-least-k-ii	Medium	{Array,"Bit Manipulation","Sliding Window"}
3098	Find the Sum of Subsequence Powers	find-the-sum-of-subsequence-powers	Hard	{Array,"Dynamic Programming",Sorting}
3099	Harshad Number	harshad-number	Easy	{Math}
3100	Water Bottles II	water-bottles-ii	Medium	{Math,Simulation}
3101	Count Alternating Subarrays	count-alternating-subarrays	Medium	{Array,Math}
3102	Minimize Manhattan Distances	minimize-manhattan-distances	Hard	{Array,Math,Geometry,Sorting,"Ordered Set"}
3103	Find Trending Hashtags II 	find-trending-hashtags-ii	Hard	{Database}
3104	Find Longest Self-Contained Substring	find-longest-self-contained-substring	Hard	{"Hash Table",String,Sorting}
3105	Longest Strictly Increasing or Strictly Decreasing Subarray	longest-strictly-increasing-or-strictly-decreasing-subarray	Easy	{Array}
3106	Lexicographically Smallest String After Operations With Constraint	lexicographically-smallest-string-after-operations-with-constraint	Medium	{String,Greedy}
3107	Minimum Operations to Make Median of Array Equal to K	minimum-operations-to-make-median-of-array-equal-to-k	Medium	{Array,Greedy,Sorting}
3108	Minimum Cost Walk in Weighted Graph	minimum-cost-walk-in-weighted-graph	Hard	{Array,"Bit Manipulation",Union-Find,"Graph Theory"}
3109	Find the Index of Permutation	find-the-index-of-permutation	Medium	{Array,"Binary Search","Divide and Conquer","Binary Indexed Tree","Segment Tree","Merge Sort","Ordered Set"}
3110	Score of a String	score-of-a-string	Easy	{String}
3111	Minimum Rectangles to Cover Points	minimum-rectangles-to-cover-points	Medium	{Array,Greedy,Sorting}
3112	Minimum Time to Visit Disappearing Nodes	minimum-time-to-visit-disappearing-nodes	Medium	{Array,"Graph Theory","Heap (Priority Queue)","Shortest Path"}
3113	Find the Number of Subarrays Where Boundary Elements Are Maximum	find-the-number-of-subarrays-where-boundary-elements-are-maximum	Hard	{Array,"Binary Search",Stack,"Monotonic Stack"}
3114	Latest Time You Can Obtain After Replacing Characters	latest-time-you-can-obtain-after-replacing-characters	Easy	{String,Enumeration}
3115	Maximum Prime Difference	maximum-prime-difference	Medium	{Array,Math,"Number Theory"}
3116	Kth Smallest Amount With Single Denomination Combination	kth-smallest-amount-with-single-denomination-combination	Hard	{Array,Math,"Binary Search","Bit Manipulation",Combinatorics,"Number Theory"}
3117	Minimum Sum of Values by Dividing Array	minimum-sum-of-values-by-dividing-array	Hard	{Array,"Binary Search","Dynamic Programming","Bit Manipulation","Segment Tree",Queue}
3118	Friday Purchase III 	friday-purchase-iii	Medium	{Database}
3119	Maximum Number of Potholes That Can Be Fixed	maximum-number-of-potholes-that-can-be-fixed	Medium	{String,Greedy,Sorting}
3120	Count the Number of Special Characters I	count-the-number-of-special-characters-i	Easy	{"Hash Table",String}
3121	Count the Number of Special Characters II	count-the-number-of-special-characters-ii	Medium	{"Hash Table",String}
3122	Minimum Number of Operations to Satisfy Conditions	minimum-number-of-operations-to-satisfy-conditions	Medium	{Array,"Dynamic Programming",Matrix}
3123	Find Edges in Shortest Paths	find-edges-in-shortest-paths	Hard	{"Depth-First Search","Breadth-First Search","Graph Theory","Heap (Priority Queue)","Shortest Path"}
3124	Find Longest Calls	find-longest-calls	Medium	{Database}
3125	Maximum Number That Makes Result of Bitwise AND Zero	maximum-number-that-makes-result-of-bitwise-and-zero	Medium	{String,Greedy,Sorting}
3126	Server Utilization Time	server-utilization-time	Medium	{Database}
3127	Make a Square with the Same Color	make-a-square-with-the-same-color	Easy	{Array,Matrix,Enumeration}
3128	Right Triangles	right-triangles	Medium	{Array,"Hash Table",Math,Combinatorics,Counting}
3129	Find All Possible Stable Binary Arrays I	find-all-possible-stable-binary-arrays-i	Medium	{"Dynamic Programming","Prefix Sum"}
3130	Find All Possible Stable Binary Arrays II	find-all-possible-stable-binary-arrays-ii	Hard	{"Dynamic Programming","Prefix Sum"}
3131	Find the Integer Added to Array I	find-the-integer-added-to-array-i	Easy	{Array}
3132	Find the Integer Added to Array II	find-the-integer-added-to-array-ii	Medium	{Array,"Two Pointers",Sorting,Enumeration}
3133	Minimum Array End	minimum-array-end	Medium	{"Bit Manipulation"}
3134	Find the Median of the Uniqueness Array	find-the-median-of-the-uniqueness-array	Hard	{Array,"Hash Table","Binary Search","Sliding Window"}
3135	Equalize Strings by Adding or Removing Characters at Ends	equalize-strings-by-adding-or-removing-characters-at-ends	Medium	{String,"Binary Search","Dynamic Programming","Sliding Window","Hash Function"}
3136	Valid Word	valid-word	Easy	{String}
3137	Minimum Number of Operations to Make Word K-Periodic	minimum-number-of-operations-to-make-word-k-periodic	Medium	{"Hash Table",String,Counting}
3138	Minimum Length of Anagram Concatenation	minimum-length-of-anagram-concatenation	Medium	{"Hash Table",String,Counting}
3139	Minimum Cost to Equalize Array	minimum-cost-to-equalize-array	Hard	{Array,Greedy,Enumeration}
3140	Consecutive Available Seats II	consecutive-available-seats-ii	Medium	{Database}
3141	Maximum Hamming Distances	maximum-hamming-distances	Hard	{Array,"Bit Manipulation","Breadth-First Search"}
3142	Check if Grid Satisfies Conditions	check-if-grid-satisfies-conditions	Easy	{Array,Matrix}
3143	Maximum Points Inside the Square	maximum-points-inside-the-square	Medium	{Array,"Hash Table",String,"Binary Search",Sorting}
3144	Minimum Substring Partition of Equal Character Frequency	minimum-substring-partition-of-equal-character-frequency	Medium	{"Hash Table",String,"Dynamic Programming",Counting}
3145	Find Products of Elements of Big Array	find-products-of-elements-of-big-array	Hard	{Array,"Binary Search","Bit Manipulation"}
3146	Permutation Difference between Two Strings	permutation-difference-between-two-strings	Easy	{"Hash Table",String}
3147	Taking Maximum Energy From the Mystic Dungeon	taking-maximum-energy-from-the-mystic-dungeon	Medium	{Array,"Dynamic Programming","Prefix Sum"}
3148	Maximum Difference Score in a Grid	maximum-difference-score-in-a-grid	Medium	{Array,"Dynamic Programming",Matrix}
3149	Find the Minimum Cost Array Permutation	find-the-minimum-cost-array-permutation	Hard	{Array,"Dynamic Programming","Bit Manipulation",Bitmask}
3150	Invalid Tweets II	invalid-tweets-ii	Easy	{Database}
3151	Special Array I	special-array-i	Easy	{Array}
3152	Special Array II	special-array-ii	Medium	{Array,"Binary Search","Prefix Sum"}
3153	Sum of Digit Differences of All Pairs	sum-of-digit-differences-of-all-pairs	Medium	{Array,"Hash Table",Math,Counting}
3154	Find Number of Ways to Reach the K-th Stair	find-number-of-ways-to-reach-the-k-th-stair	Hard	{Math,"Dynamic Programming","Bit Manipulation",Memoization,Combinatorics}
3155	Maximum Number of Upgradable Servers	maximum-number-of-upgradable-servers	Medium	{Array,Math,"Binary Search"}
3156	Employee Task Duration and Concurrent Tasks	employee-task-duration-and-concurrent-tasks	Hard	{Database}
3157	Find the Level of Tree with Minimum Sum	find-the-level-of-tree-with-minimum-sum	Medium	{Tree,"Depth-First Search","Breadth-First Search","Binary Tree"}
3158	Find the XOR of Numbers Which Appear Twice	find-the-xor-of-numbers-which-appear-twice	Easy	{Array,"Hash Table","Bit Manipulation"}
3159	Find Occurrences of an Element in an Array	find-occurrences-of-an-element-in-an-array	Medium	{Array,"Hash Table"}
3160	Find the Number of Distinct Colors Among the Balls	find-the-number-of-distinct-colors-among-the-balls	Medium	{Array,"Hash Table",Simulation}
3161	Block Placement Queries	block-placement-queries	Hard	{Array,"Binary Search","Binary Indexed Tree","Segment Tree"}
3162	Find the Number of Good Pairs I	find-the-number-of-good-pairs-i	Easy	{Array,"Hash Table"}
3163	String Compression III	string-compression-iii	Medium	{String}
3164	Find the Number of Good Pairs II	find-the-number-of-good-pairs-ii	Medium	{Array,"Hash Table"}
3165	Maximum Sum of Subsequence With Non-adjacent Elements	maximum-sum-of-subsequence-with-non-adjacent-elements	Hard	{Array,"Divide and Conquer","Dynamic Programming","Segment Tree"}
3166	Calculate Parking Fees and Duration	calculate-parking-fees-and-duration	Medium	{Database}
3167	Better Compression of String	better-compression-of-string	Medium	{"Hash Table",String,Sorting,Counting}
3168	Minimum Number of Chairs in a Waiting Room	minimum-number-of-chairs-in-a-waiting-room	Easy	{String,Simulation}
3169	Count Days Without Meetings	count-days-without-meetings	Medium	{Array,Sorting}
3384	Team Dominance by Pass Success	team-dominance-by-pass-success	Hard	{Database}
3170	Lexicographically Minimum String After Removing Stars	lexicographically-minimum-string-after-removing-stars	Medium	{"Hash Table",String,Stack,Greedy,"Heap (Priority Queue)"}
3171	Find Subarray With Bitwise OR Closest to K	find-subarray-with-bitwise-or-closest-to-k	Hard	{Array,"Binary Search","Bit Manipulation","Segment Tree"}
3172	Second Day Verification	second-day-verification	Easy	{Database}
3173	Bitwise OR of Adjacent Elements	bitwise-or-of-adjacent-elements	Easy	{Array,"Bit Manipulation"}
3174	Clear Digits	clear-digits	Easy	{String,Stack,Simulation}
3175	Find The First Player to win K Games in a Row	find-the-first-player-to-win-k-games-in-a-row	Medium	{Array,Simulation}
3176	Find the Maximum Length of a Good Subsequence I	find-the-maximum-length-of-a-good-subsequence-i	Medium	{Array,"Hash Table","Dynamic Programming"}
3177	Find the Maximum Length of a Good Subsequence II	find-the-maximum-length-of-a-good-subsequence-ii	Hard	{Array,"Hash Table","Dynamic Programming"}
3178	Find the Child Who Has the Ball After K Seconds	find-the-child-who-has-the-ball-after-k-seconds	Easy	{Math,Simulation}
3179	Find the N-th Value After K Seconds	find-the-n-th-value-after-k-seconds	Medium	{Array,Math,Simulation,Combinatorics,"Prefix Sum"}
3180	Maximum Total Reward Using Operations I	maximum-total-reward-using-operations-i	Medium	{Array,"Dynamic Programming"}
3181	Maximum Total Reward Using Operations II	maximum-total-reward-using-operations-ii	Hard	{Array,"Dynamic Programming","Bit Manipulation"}
3182	Find Top Scoring Students	find-top-scoring-students	Medium	{Database}
3183	The Number of Ways to Make the Sum	the-number-of-ways-to-make-the-sum	Medium	{Array,"Dynamic Programming"}
3184	Count Pairs That Form a Complete Day I	count-pairs-that-form-a-complete-day-i	Easy	{Array,"Hash Table",Counting}
3185	Count Pairs That Form a Complete Day II	count-pairs-that-form-a-complete-day-ii	Medium	{Array,"Hash Table",Counting}
3186	Maximum Total Damage With Spell Casting	maximum-total-damage-with-spell-casting	Medium	{Array,"Hash Table","Two Pointers","Binary Search","Dynamic Programming",Sorting,Counting}
3187	Peaks in Array	peaks-in-array	Hard	{Array,"Binary Indexed Tree","Segment Tree"}
3188	Find Top Scoring Students II	find-top-scoring-students-ii	Hard	{Database}
3189	Minimum Moves to Get a Peaceful Board	minimum-moves-to-get-a-peaceful-board	Medium	{Array,Greedy,Sorting,"Counting Sort"}
3190	Find Minimum Operations to Make All Elements Divisible by Three	find-minimum-operations-to-make-all-elements-divisible-by-three	Easy	{Array,Math}
3191	Minimum Operations to Make Binary Array Elements Equal to One I	minimum-operations-to-make-binary-array-elements-equal-to-one-i	Medium	{Array,"Bit Manipulation",Queue,"Sliding Window","Prefix Sum"}
3192	Minimum Operations to Make Binary Array Elements Equal to One II	minimum-operations-to-make-binary-array-elements-equal-to-one-ii	Medium	{Array,"Dynamic Programming",Greedy}
3193	Count the Number of Inversions	count-the-number-of-inversions	Hard	{Array,"Dynamic Programming"}
3194	Minimum Average of Smallest and Largest Elements	minimum-average-of-smallest-and-largest-elements	Easy	{Array,"Two Pointers",Sorting}
3195	Find the Minimum Area to Cover All Ones I	find-the-minimum-area-to-cover-all-ones-i	Medium	{Array,Matrix}
3196	Maximize Total Cost of Alternating Subarrays	maximize-total-cost-of-alternating-subarrays	Medium	{Array,"Dynamic Programming"}
3197	Find the Minimum Area to Cover All Ones II	find-the-minimum-area-to-cover-all-ones-ii	Hard	{Array,Matrix,Enumeration}
3198	Find Cities in Each State	find-cities-in-each-state	Easy	{Database}
3199	Count Triplets with Even XOR Set Bits I	count-triplets-with-even-xor-set-bits-i	Easy	{Array,"Bit Manipulation"}
3200	Maximum Height of a Triangle	maximum-height-of-a-triangle	Easy	{Array,Enumeration}
3201	Find the Maximum Length of Valid Subsequence I	find-the-maximum-length-of-valid-subsequence-i	Medium	{Array,"Dynamic Programming"}
3202	Find the Maximum Length of Valid Subsequence II	find-the-maximum-length-of-valid-subsequence-ii	Medium	{Array,"Dynamic Programming"}
3203	Find Minimum Diameter After Merging Two Trees	find-minimum-diameter-after-merging-two-trees	Hard	{Tree,"Depth-First Search","Breadth-First Search","Graph Theory"}
3204	Bitwise User Permissions Analysis	bitwise-user-permissions-analysis	Medium	{Database}
3205	Maximum Array Hopping Score I	maximum-array-hopping-score-i	Medium	{Array,"Dynamic Programming",Stack,Greedy,"Monotonic Stack"}
3206	Alternating Groups I	alternating-groups-i	Easy	{Array,"Sliding Window"}
3207	Maximum Points After Enemy Battles	maximum-points-after-enemy-battles	Medium	{Array,Greedy}
3208	Alternating Groups II	alternating-groups-ii	Medium	{Array,"Sliding Window"}
3209	Number of Subarrays With AND Value of K	number-of-subarrays-with-and-value-of-k	Hard	{Array,"Binary Search","Bit Manipulation","Segment Tree"}
3210	Find the Encrypted String	find-the-encrypted-string	Easy	{String}
3211	Generate Binary Strings Without Adjacent Zeros	generate-binary-strings-without-adjacent-zeros	Medium	{String,Backtracking,"Bit Manipulation"}
3212	Count Submatrices With Equal Frequency of X and Y	count-submatrices-with-equal-frequency-of-x-and-y	Medium	{Array,Matrix,"Prefix Sum"}
3213	Construct String with Minimum Cost	construct-string-with-minimum-cost	Hard	{Array,String,"Dynamic Programming","Suffix Array"}
3215	Count Triplets with Even XOR Set Bits II	count-triplets-with-even-xor-set-bits-ii	Medium	{Array,"Bit Manipulation"}
3216	Lexicographically Smallest String After a Swap	lexicographically-smallest-string-after-a-swap	Easy	{String,Greedy}
3217	Delete Nodes From Linked List Present in Array	delete-nodes-from-linked-list-present-in-array	Medium	{Array,"Hash Table","Linked List"}
3218	Minimum Cost for Cutting Cake I	minimum-cost-for-cutting-cake-i	Medium	{Array,"Two Pointers","Dynamic Programming",Greedy,Sorting}
3219	Minimum Cost for Cutting Cake II	minimum-cost-for-cutting-cake-ii	Hard	{Array,Greedy,Sorting}
3220	Odd and Even Transactions	odd-and-even-transactions	Medium	{Database}
3221	Maximum Array Hopping Score II	maximum-array-hopping-score-ii	Medium	{Array,Stack,Greedy,"Monotonic Stack"}
3222	Find the Winning Player in Coin Game	find-the-winning-player-in-coin-game	Easy	{Math,Simulation,"Game Theory"}
3223	Minimum Length of String After Operations	minimum-length-of-string-after-operations	Medium	{"Hash Table",String,Counting}
3224	Minimum Array Changes to Make Differences Equal	minimum-array-changes-to-make-differences-equal	Medium	{Array,"Hash Table","Prefix Sum"}
3225	Maximum Score From Grid Operations	maximum-score-from-grid-operations	Hard	{Array,"Dynamic Programming",Matrix,"Prefix Sum"}
3226	Number of Bit Changes to Make Two Integers Equal	number-of-bit-changes-to-make-two-integers-equal	Easy	{"Bit Manipulation"}
3227	Vowels Game in a String	vowels-game-in-a-string	Medium	{Math,String,Brainteaser,"Game Theory"}
3228	Maximum Number of Operations to Move Ones to the End	maximum-number-of-operations-to-move-ones-to-the-end	Medium	{String,Greedy,Counting}
3229	Minimum Operations to Make Array Equal to Target	minimum-operations-to-make-array-equal-to-target	Hard	{Array,"Dynamic Programming",Stack,Greedy,"Monotonic Stack"}
3230	Customer Purchasing Behavior Analysis	customer-purchasing-behavior-analysis	Medium	{Database}
3231	Minimum Number of Increasing Subsequence to Be Removed	minimum-number-of-increasing-subsequence-to-be-removed	Hard	{Array,"Binary Search"}
3232	Find if Digit Game Can Be Won	find-if-digit-game-can-be-won	Easy	{Array,Math}
3233	Find the Count of Numbers Which Are Not Special	find-the-count-of-numbers-which-are-not-special	Medium	{Array,Math,"Number Theory"}
3234	Count the Number of Substrings With Dominant Ones	count-the-number-of-substrings-with-dominant-ones	Medium	{String,Enumeration}
3235	Check if the Rectangle Corner Is Reachable	check-if-the-rectangle-corner-is-reachable	Hard	{Array,Math,"Depth-First Search","Breadth-First Search",Union-Find,Geometry}
3236	CEO Subordinate Hierarchy	ceo-subordinate-hierarchy	Hard	{Database}
3237	Alt and Tab Simulation	alt-and-tab-simulation	Medium	{Array,"Hash Table",Simulation}
3238	Find the Number of Winning Players	find-the-number-of-winning-players	Easy	{Array,"Hash Table",Counting}
3239	Minimum Number of Flips to Make Binary Grid Palindromic I	minimum-number-of-flips-to-make-binary-grid-palindromic-i	Medium	{Array,"Two Pointers",Matrix}
3240	Minimum Number of Flips to Make Binary Grid Palindromic II	minimum-number-of-flips-to-make-binary-grid-palindromic-ii	Medium	{Array,"Two Pointers",Matrix}
3241	Time Taken to Mark All Nodes	time-taken-to-mark-all-nodes	Hard	{"Dynamic Programming",Tree,"Depth-First Search","Graph Theory"}
3242	Design Neighbor Sum Service	design-neighbor-sum-service	Easy	{Array,"Hash Table",Design,Matrix,Simulation}
3243	Shortest Distance After Road Addition Queries I	shortest-distance-after-road-addition-queries-i	Medium	{Array,"Breadth-First Search","Graph Theory"}
3244	Shortest Distance After Road Addition Queries II	shortest-distance-after-road-addition-queries-ii	Hard	{Array,Greedy,"Graph Theory","Ordered Set"}
3245	Alternating Groups III	alternating-groups-iii	Hard	{Array,"Binary Indexed Tree","Ordered Set"}
3246	Premier League Table Ranking	premier-league-table-ranking	Easy	{Database}
3247	Number of Subsequences with Odd Sum	number-of-subsequences-with-odd-sum	Medium	{Array,Math,"Dynamic Programming",Combinatorics}
3248	Snake in Matrix	snake-in-matrix	Easy	{Array,String,Simulation}
3249	Count the Number of Good Nodes	count-the-number-of-good-nodes	Medium	{Tree,"Depth-First Search"}
3250	Find the Count of Monotonic Pairs I	find-the-count-of-monotonic-pairs-i	Hard	{Array,Math,"Dynamic Programming",Combinatorics,"Prefix Sum"}
3251	Find the Count of Monotonic Pairs II	find-the-count-of-monotonic-pairs-ii	Hard	{Array,Math,"Dynamic Programming",Combinatorics,"Prefix Sum"}
3252	Premier League Table Ranking II	premier-league-table-ranking-ii	Medium	{Database}
3253	Construct String with Minimum Cost (Easy)	construct-string-with-minimum-cost-easy	Medium	{}
3254	Find the Power of K-Size Subarrays I	find-the-power-of-k-size-subarrays-i	Medium	{Array,"Sliding Window"}
3255	Find the Power of K-Size Subarrays II	find-the-power-of-k-size-subarrays-ii	Medium	{Array,"Sliding Window"}
3256	Maximum Value Sum by Placing Three Rooks I	maximum-value-sum-by-placing-three-rooks-i	Hard	{Array,"Dynamic Programming",Matrix,Enumeration}
3257	Maximum Value Sum by Placing Three Rooks II	maximum-value-sum-by-placing-three-rooks-ii	Hard	{Array,"Dynamic Programming",Matrix,Enumeration}
3258	Count Substrings That Satisfy K-Constraint I	count-substrings-that-satisfy-k-constraint-i	Easy	{String,"Sliding Window"}
3259	Maximum Energy Boost From Two Drinks	maximum-energy-boost-from-two-drinks	Medium	{Array,"Dynamic Programming"}
3260	Find the Largest Palindrome Divisible by K	find-the-largest-palindrome-divisible-by-k	Hard	{Math,String,"Dynamic Programming",Greedy,"Number Theory"}
3261	Count Substrings That Satisfy K-Constraint II	count-substrings-that-satisfy-k-constraint-ii	Hard	{Array,String,"Binary Search","Sliding Window","Prefix Sum"}
3262	Find Overlapping Shifts	find-overlapping-shifts	Medium	{Database}
3263	Convert Doubly Linked List to Array I	convert-doubly-linked-list-to-array-i	Easy	{Array,"Linked List","Doubly-Linked List"}
3264	Final Array State After K Multiplication Operations I	final-array-state-after-k-multiplication-operations-i	Easy	{Array,Math,"Heap (Priority Queue)",Simulation}
3265	Count Almost Equal Pairs I	count-almost-equal-pairs-i	Medium	{Array,"Hash Table",Sorting,Counting,Enumeration}
3266	Final Array State After K Multiplication Operations II	final-array-state-after-k-multiplication-operations-ii	Hard	{Array,"Heap (Priority Queue)",Simulation}
3267	Count Almost Equal Pairs II	count-almost-equal-pairs-ii	Hard	{Array,"Hash Table",Sorting,Counting,Enumeration}
3268	Find Overlapping Shifts II	find-overlapping-shifts-ii	Hard	{Database}
3269	Constructing Two Increasing Arrays	constructing-two-increasing-arrays	Hard	{Array,"Dynamic Programming"}
3270	Find the Key of the Numbers	find-the-key-of-the-numbers	Easy	{Math}
3271	Hash Divided String	hash-divided-string	Medium	{String,Simulation}
3272	Find the Count of Good Integers	find-the-count-of-good-integers	Hard	{"Hash Table",Math,Combinatorics,Enumeration}
3273	Minimum Amount of Damage Dealt to Bob	minimum-amount-of-damage-dealt-to-bob	Hard	{Array,Greedy,Sorting}
3274	Check if Two Chessboard Squares Have the Same Color	check-if-two-chessboard-squares-have-the-same-color	Easy	{Math,String}
3275	K-th Nearest Obstacle Queries	k-th-nearest-obstacle-queries	Medium	{Array,"Heap (Priority Queue)"}
3276	Select Cells in Grid With Maximum Score	select-cells-in-grid-with-maximum-score	Hard	{Array,"Dynamic Programming","Bit Manipulation",Matrix,Bitmask}
3277	Maximum XOR Score Subarray Queries	maximum-xor-score-subarray-queries	Hard	{Array,"Dynamic Programming"}
3278	Find Candidates for Data Scientist Position II	find-candidates-for-data-scientist-position-ii	Medium	{Database}
3279	Maximum Total Area Occupied by Pistons	maximum-total-area-occupied-by-pistons	Hard	{Array,"Hash Table",String,Simulation,Counting,"Prefix Sum"}
3280	Convert Date to Binary	convert-date-to-binary	Easy	{Math,String}
3281	Maximize Score of Numbers in Ranges	maximize-score-of-numbers-in-ranges	Medium	{Array,"Binary Search",Greedy,Sorting}
3282	Reach End of Array With Max Score	reach-end-of-array-with-max-score	Medium	{Array,Greedy}
3283	Maximum Number of Moves to Kill All Pawns	maximum-number-of-moves-to-kill-all-pawns	Hard	{Array,Math,"Bit Manipulation","Breadth-First Search","Game Theory",Bitmask}
3284	Sum of Consecutive Subarrays	sum-of-consecutive-subarrays	Medium	{Array,"Two Pointers","Dynamic Programming"}
3285	Find Indices of Stable Mountains	find-indices-of-stable-mountains	Easy	{Array}
3286	Find a Safe Walk Through a Grid	find-a-safe-walk-through-a-grid	Medium	{Array,"Breadth-First Search","Graph Theory","Heap (Priority Queue)",Matrix,"Shortest Path"}
3287	Find the Maximum Sequence Value of Array	find-the-maximum-sequence-value-of-array	Hard	{Array,"Dynamic Programming","Bit Manipulation"}
3288	Length of the Longest Increasing Path	length-of-the-longest-increasing-path	Hard	{Array,"Binary Search",Sorting}
3289	The Two Sneaky Numbers of Digitville	the-two-sneaky-numbers-of-digitville	Easy	{Array,"Hash Table",Math}
3290	Maximum Multiplication Score	maximum-multiplication-score	Medium	{Array,"Dynamic Programming"}
3291	Minimum Number of Valid Strings to Form Target I	minimum-number-of-valid-strings-to-form-target-i	Medium	{Array,String,"Binary Search","Dynamic Programming",Trie,"Segment Tree","Rolling Hash","String Matching","Hash Function"}
3292	Minimum Number of Valid Strings to Form Target II	minimum-number-of-valid-strings-to-form-target-ii	Hard	{Array,String,"Binary Search","Dynamic Programming","Segment Tree","Rolling Hash","String Matching","Hash Function"}
3293	Calculate Product Final Price	calculate-product-final-price	Medium	{Database}
3294	Convert Doubly Linked List to Array II	convert-doubly-linked-list-to-array-ii	Medium	{Array,"Linked List","Doubly-Linked List"}
3295	Report Spam Message	report-spam-message	Medium	{Array,"Hash Table",String}
3296	Minimum Number of Seconds to Make Mountain Height Zero	minimum-number-of-seconds-to-make-mountain-height-zero	Medium	{Array,Math,"Binary Search",Greedy,"Heap (Priority Queue)"}
3297	Count Substrings That Can Be Rearranged to Contain a String I	count-substrings-that-can-be-rearranged-to-contain-a-string-i	Medium	{"Hash Table",String,"Sliding Window"}
3298	Count Substrings That Can Be Rearranged to Contain a String II	count-substrings-that-can-be-rearranged-to-contain-a-string-ii	Hard	{"Hash Table",String,"Sliding Window"}
3299	Sum of Consecutive Subsequences	sum-of-consecutive-subsequences	Hard	{Array,"Hash Table","Dynamic Programming"}
3300	Minimum Element After Replacement With Digit Sum	minimum-element-after-replacement-with-digit-sum	Easy	{Array,Math}
3301	Maximize the Total Height of Unique Towers	maximize-the-total-height-of-unique-towers	Medium	{Array,Greedy,Sorting}
3302	Find the Lexicographically Smallest Valid Sequence	find-the-lexicographically-smallest-valid-sequence	Medium	{"Two Pointers",String,"Dynamic Programming",Greedy}
3303	Find the Occurrence of First Almost Equal Substring	find-the-occurrence-of-first-almost-equal-substring	Hard	{String,"String Matching"}
3304	Find the K-th Character in String Game I	find-the-k-th-character-in-string-game-i	Easy	{Math,"Bit Manipulation",Recursion,Simulation}
3305	Count of Substrings Containing Every Vowel and K Consonants I	count-of-substrings-containing-every-vowel-and-k-consonants-i	Medium	{"Hash Table",String,"Sliding Window"}
3306	Count of Substrings Containing Every Vowel and K Consonants II	count-of-substrings-containing-every-vowel-and-k-consonants-ii	Medium	{"Hash Table",String,"Sliding Window"}
3307	Find the K-th Character in String Game II	find-the-k-th-character-in-string-game-ii	Hard	{Math,"Bit Manipulation",Recursion}
3308	Find Top Performing Driver	find-top-performing-driver	Medium	{Database}
3309	Maximum Possible Number by Binary Concatenation	maximum-possible-number-by-binary-concatenation	Medium	{Array,"Bit Manipulation",Enumeration}
3310	Remove Methods From Project	remove-methods-from-project	Medium	{"Depth-First Search","Breadth-First Search","Graph Theory"}
3311	Construct 2D Grid Matching Graph Layout	construct-2d-grid-matching-graph-layout	Hard	{Array,"Hash Table","Graph Theory",Matrix}
3312	Sorted GCD Pair Queries	sorted-gcd-pair-queries	Hard	{Array,"Hash Table",Math,"Binary Search",Combinatorics,Counting,"Number Theory","Prefix Sum"}
3313	Find the Last Marked Nodes in Tree	find-the-last-marked-nodes-in-tree	Hard	{Tree,"Depth-First Search"}
3314	Construct the Minimum Bitwise Array I	construct-the-minimum-bitwise-array-i	Easy	{Array,"Bit Manipulation"}
3315	Construct the Minimum Bitwise Array II	construct-the-minimum-bitwise-array-ii	Medium	{Array,"Bit Manipulation"}
3316	Find Maximum Removals From Source String	find-maximum-removals-from-source-string	Medium	{Array,"Hash Table","Two Pointers",String,"Dynamic Programming"}
3317	Find the Number of Possible Ways for an Event	find-the-number-of-possible-ways-for-an-event	Hard	{Math,"Dynamic Programming",Combinatorics}
3318	Find X-Sum of All K-Long Subarrays I	find-x-sum-of-all-k-long-subarrays-i	Easy	{Array,"Hash Table","Sliding Window","Heap (Priority Queue)"}
3319	K-th Largest Perfect Subtree Size in Binary Tree	k-th-largest-perfect-subtree-size-in-binary-tree	Medium	{Tree,"Depth-First Search",Sorting,"Binary Tree"}
3320	Count The Number of Winning Sequences	count-the-number-of-winning-sequences	Hard	{String,"Dynamic Programming"}
3321	Find X-Sum of All K-Long Subarrays II	find-x-sum-of-all-k-long-subarrays-ii	Hard	{Array,"Hash Table","Sliding Window","Heap (Priority Queue)"}
3322	Premier League Table Ranking III	premier-league-table-ranking-iii	Medium	{Database}
3323	Minimize Connected Groups by Inserting Interval	minimize-connected-groups-by-inserting-interval	Medium	{Array,"Binary Search","Sliding Window",Sorting}
3324	Find the Sequence of Strings Appeared on the Screen	find-the-sequence-of-strings-appeared-on-the-screen	Medium	{String,Simulation}
3325	Count Substrings With K-Frequency Characters I	count-substrings-with-k-frequency-characters-i	Medium	{"Hash Table",String,"Sliding Window"}
3326	Minimum Division Operations to Make Array Non Decreasing	minimum-division-operations-to-make-array-non-decreasing	Medium	{Array,Math,Greedy,"Number Theory"}
3327	Check if DFS Strings Are Palindromes	check-if-dfs-strings-are-palindromes	Hard	{Array,"Hash Table",String,Tree,"Depth-First Search","Hash Function"}
3328	Find Cities in Each State II	find-cities-in-each-state-ii	Medium	{Database}
3329	Count Substrings With K-Frequency Characters II	count-substrings-with-k-frequency-characters-ii	Hard	{"Hash Table",String,"Sliding Window"}
3330	Find the Original Typed String I	find-the-original-typed-string-i	Easy	{String}
3331	Find Subtree Sizes After Changes	find-subtree-sizes-after-changes	Medium	{Array,"Hash Table",String,Tree,"Depth-First Search"}
3332	Maximum Points Tourist Can Earn	maximum-points-tourist-can-earn	Medium	{Array,"Dynamic Programming",Matrix}
3333	Find the Original Typed String II	find-the-original-typed-string-ii	Hard	{String,"Dynamic Programming","Prefix Sum"}
3334	Find the Maximum Factor Score of Array	find-the-maximum-factor-score-of-array	Medium	{Array,Math,"Number Theory"}
3335	Total Characters in String After Transformations I	total-characters-in-string-after-transformations-i	Medium	{"Hash Table",Math,String,"Dynamic Programming",Counting}
3336	Find the Number of Subsequences With Equal GCD	find-the-number-of-subsequences-with-equal-gcd	Hard	{Array,Math,"Dynamic Programming","Number Theory"}
3337	Total Characters in String After Transformations II	total-characters-in-string-after-transformations-ii	Hard	{"Hash Table",Math,String,"Dynamic Programming",Counting}
3338	Second Highest Salary II	second-highest-salary-ii	Medium	{Database}
3339	Find the Number of K-Even Arrays	find-the-number-of-k-even-arrays	Medium	{"Dynamic Programming"}
3340	Check Balanced String	check-balanced-string	Easy	{String}
3341	Find Minimum Time to Reach Last Room I	find-minimum-time-to-reach-last-room-i	Medium	{Array,"Graph Theory","Heap (Priority Queue)",Matrix,"Shortest Path"}
3385	Minimum Time to Break Locks II	minimum-time-to-break-locks-ii	Hard	{Array,"Breadth-First Search","Graph Theory"}
3342	Find Minimum Time to Reach Last Room II	find-minimum-time-to-reach-last-room-ii	Medium	{Array,"Graph Theory","Heap (Priority Queue)",Matrix,"Shortest Path"}
3343	Count Number of Balanced Permutations	count-number-of-balanced-permutations	Hard	{Math,String,"Dynamic Programming",Combinatorics}
3344	Maximum Sized Array	maximum-sized-array	Medium	{"Binary Search","Bit Manipulation"}
3345	Smallest Divisible Digit Product I	smallest-divisible-digit-product-i	Easy	{Math,Enumeration}
3346	Maximum Frequency of an Element After Performing Operations I	maximum-frequency-of-an-element-after-performing-operations-i	Medium	{Array,"Binary Search","Sliding Window",Sorting,"Prefix Sum"}
3347	Maximum Frequency of an Element After Performing Operations II	maximum-frequency-of-an-element-after-performing-operations-ii	Hard	{Array,"Binary Search","Sliding Window",Sorting,"Prefix Sum"}
3348	Smallest Divisible Digit Product II	smallest-divisible-digit-product-ii	Hard	{Math,String,Backtracking,Greedy,"Number Theory"}
3349	Adjacent Increasing Subarrays Detection I	adjacent-increasing-subarrays-detection-i	Easy	{Array}
3350	Adjacent Increasing Subarrays Detection II	adjacent-increasing-subarrays-detection-ii	Medium	{Array,"Binary Search"}
3351	Sum of Good Subsequences	sum-of-good-subsequences	Hard	{Array,"Hash Table","Dynamic Programming"}
3352	Count K-Reducible Numbers Less Than N	count-k-reducible-numbers-less-than-n	Hard	{Math,String,"Dynamic Programming",Combinatorics}
3353	Minimum Total Operations	minimum-total-operations	Easy	{Array}
3354	Make Array Elements Equal to Zero	make-array-elements-equal-to-zero	Easy	{Array,Simulation,"Prefix Sum"}
3355	Zero Array Transformation I	zero-array-transformation-i	Medium	{Array,"Prefix Sum"}
3356	Zero Array Transformation II	zero-array-transformation-ii	Medium	{Array,"Two Pointers","Binary Search","Prefix Sum"}
3357	Minimize the Maximum Adjacent Element Difference	minimize-the-maximum-adjacent-element-difference	Hard	{Array,"Binary Search",Greedy}
3358	Books with NULL Ratings	books-with-null-ratings	Easy	{Database}
3359	Find Sorted Submatrices With Maximum Element at Most K	find-sorted-submatrices-with-maximum-element-at-most-k	Hard	{Array,Stack,Matrix,"Monotonic Stack"}
3360	Stone Removal Game	stone-removal-game	Easy	{Math,Simulation}
3361	Shift Distance Between Two Strings	shift-distance-between-two-strings	Medium	{Array,String,"Prefix Sum"}
3362	Zero Array Transformation III	zero-array-transformation-iii	Medium	{Array,"Two Pointers",Greedy,Sorting,"Heap (Priority Queue)","Prefix Sum"}
3363	Find the Maximum Number of Fruits Collected	find-the-maximum-number-of-fruits-collected	Hard	{Array,"Dynamic Programming",Matrix}
3364	Minimum Positive Sum Subarray 	minimum-positive-sum-subarray	Easy	{Array,"Sliding Window","Prefix Sum"}
3365	Rearrange K Substrings to Form Target String	rearrange-k-substrings-to-form-target-string	Medium	{"Hash Table",String,Sorting}
3366	Minimum Array Sum	minimum-array-sum	Medium	{Array,"Dynamic Programming"}
3367	Maximize Sum of Weights after Edge Removals	maximize-sum-of-weights-after-edge-removals	Hard	{"Dynamic Programming",Tree,"Depth-First Search",Sorting}
3368	First Letter Capitalization	first-letter-capitalization	Hard	{Database}
3369	Design an Array Statistics Tracker 	design-an-array-statistics-tracker	Hard	{"Hash Table","Binary Search",Design,Queue,"Heap (Priority Queue)","Data Stream","Ordered Set"}
3370	Smallest Number With All Set Bits	smallest-number-with-all-set-bits	Easy	{Math,"Bit Manipulation"}
3371	Identify the Largest Outlier in an Array	identify-the-largest-outlier-in-an-array	Medium	{Array,"Hash Table",Counting,Enumeration}
3372	Maximize the Number of Target Nodes After Connecting Trees I	maximize-the-number-of-target-nodes-after-connecting-trees-i	Medium	{Tree,"Depth-First Search","Breadth-First Search"}
3373	Maximize the Number of Target Nodes After Connecting Trees II	maximize-the-number-of-target-nodes-after-connecting-trees-ii	Hard	{Tree,"Depth-First Search","Breadth-First Search"}
3374	First Letter Capitalization II	first-letter-capitalization-ii	Hard	{Database}
3375	Minimum Operations to Make Array Values Equal to K	minimum-operations-to-make-array-values-equal-to-k	Easy	{Array,"Hash Table"}
3376	Minimum Time to Break Locks I	minimum-time-to-break-locks-i	Medium	{Array,"Dynamic Programming",Backtracking,"Bit Manipulation","Breadth-First Search",Bitmask}
3377	Digit Operations to Make Two Integers Equal	digit-operations-to-make-two-integers-equal	Medium	{Math,"Graph Theory","Heap (Priority Queue)","Number Theory","Shortest Path"}
3378	Count Connected Components in LCM Graph	count-connected-components-in-lcm-graph	Hard	{Array,"Hash Table",Math,Union-Find,"Number Theory"}
3379	Transformed Array	transformed-array	Easy	{Array,Simulation}
3380	Maximum Area Rectangle With Point Constraints I	maximum-area-rectangle-with-point-constraints-i	Medium	{Array,Math,"Binary Indexed Tree","Segment Tree",Geometry,Sorting,Enumeration}
3381	Maximum Subarray Sum With Length Divisible by K	maximum-subarray-sum-with-length-divisible-by-k	Medium	{Array,"Hash Table","Prefix Sum"}
3382	Maximum Area Rectangle With Point Constraints II	maximum-area-rectangle-with-point-constraints-ii	Hard	{Array,Math,"Binary Indexed Tree","Segment Tree",Geometry,Sorting}
3383	Minimum Runes to Add to Cast Spell	minimum-runes-to-add-to-cast-spell	Hard	{Array,"Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory","Topological Sort"}
3387	Maximize Amount After Two Days of Conversions	maximize-amount-after-two-days-of-conversions	Medium	{Array,String,"Depth-First Search","Breadth-First Search","Graph Theory"}
3388	Count Beautiful Splits in an Array	count-beautiful-splits-in-an-array	Medium	{Array,"Dynamic Programming"}
3389	Minimum Operations to Make Character Frequencies Equal	minimum-operations-to-make-character-frequencies-equal	Hard	{"Hash Table",String,"Dynamic Programming",Counting,Enumeration}
3390	Longest Team Pass Streak	longest-team-pass-streak	Hard	{Database}
3391	Design a 3D Binary Matrix with Efficient Layer Tracking	design-a-3d-binary-matrix-with-efficient-layer-tracking	Medium	{Array,"Hash Table",Design,"Heap (Priority Queue)",Matrix,"Ordered Set"}
3392	Count Subarrays of Length Three With a Condition	count-subarrays-of-length-three-with-a-condition	Easy	{Array}
3393	Count Paths With the Given XOR Value	count-paths-with-the-given-xor-value	Medium	{Array,"Dynamic Programming","Bit Manipulation",Matrix}
3394	Check if Grid can be Cut into Sections	check-if-grid-can-be-cut-into-sections	Medium	{Array,Sorting}
3395	Subsequences with a Unique Middle Mode I	subsequences-with-a-unique-middle-mode-i	Hard	{Array,"Hash Table",Math,Combinatorics}
3396	Minimum Number of Operations to Make Elements in Array Distinct	minimum-number-of-operations-to-make-elements-in-array-distinct	Easy	{Array,"Hash Table"}
3397	Maximum Number of Distinct Elements After Operations	maximum-number-of-distinct-elements-after-operations	Medium	{Array,Greedy,Sorting}
3398	Smallest Substring With Identical Characters I	smallest-substring-with-identical-characters-i	Hard	{Array,"Binary Search",Enumeration}
3399	Smallest Substring With Identical Characters II	smallest-substring-with-identical-characters-ii	Hard	{String,"Binary Search"}
3400	Maximum Number of Matching Indices After Right Shifts	maximum-number-of-matching-indices-after-right-shifts	Medium	{Array,"Two Pointers",Simulation}
3401	Find Circular Gift Exchange Chains	find-circular-gift-exchange-chains	Hard	{Database}
3402	Minimum Operations to Make Columns Strictly Increasing	minimum-operations-to-make-columns-strictly-increasing	Easy	{Array,Greedy,Matrix}
3403	Find the Lexicographically Largest String From the Box I	find-the-lexicographically-largest-string-from-the-box-i	Medium	{"Two Pointers",String,Enumeration}
3404	Count Special Subsequences	count-special-subsequences	Medium	{Array,"Hash Table",Math,Enumeration}
3405	Count the Number of Arrays with K Matching Adjacent Elements	count-the-number-of-arrays-with-k-matching-adjacent-elements	Hard	{Math,Combinatorics}
3406	Find the Lexicographically Largest String From the Box II	find-the-lexicographically-largest-string-from-the-box-ii	Hard	{"Two Pointers",String}
3407	Substring Matching Pattern	substring-matching-pattern	Easy	{String,"String Matching"}
3408	Design Task Manager	design-task-manager	Medium	{"Hash Table",Design,"Heap (Priority Queue)","Ordered Set"}
3409	Longest Subsequence With Decreasing Adjacent Difference	longest-subsequence-with-decreasing-adjacent-difference	Medium	{Array,"Dynamic Programming"}
3410	Maximize Subarray Sum After Removing All Occurrences of One Element	maximize-subarray-sum-after-removing-all-occurrences-of-one-element	Hard	{Array,"Dynamic Programming","Segment Tree"}
3411	Maximum Subarray With Equal Products	maximum-subarray-with-equal-products	Easy	{Array,Math,"Sliding Window",Enumeration,"Number Theory"}
3412	Find Mirror Score of a String	find-mirror-score-of-a-string	Medium	{"Hash Table",String,Stack,Simulation}
3413	Maximum Coins From K Consecutive Bags	maximum-coins-from-k-consecutive-bags	Medium	{Array,"Binary Search",Greedy,"Sliding Window",Sorting,"Prefix Sum"}
3414	Maximum Score of Non-overlapping Intervals	maximum-score-of-non-overlapping-intervals	Hard	{Array,"Binary Search","Dynamic Programming",Sorting}
3415	Find Products with Three Consecutive Digits 	find-products-with-three-consecutive-digits	Easy	{Database}
3416	Subsequences with a Unique Middle Mode II	subsequences-with-a-unique-middle-mode-ii	Hard	{Array,"Hash Table",Math,Combinatorics}
3417	Zigzag Grid Traversal With Skip	zigzag-grid-traversal-with-skip	Easy	{Array,Matrix,Simulation}
3418	Maximum Amount of Money Robot Can Earn	maximum-amount-of-money-robot-can-earn	Medium	{Array,"Dynamic Programming",Matrix}
3419	Minimize the Maximum Edge Weight of Graph	minimize-the-maximum-edge-weight-of-graph	Medium	{"Binary Search","Depth-First Search","Breadth-First Search","Graph Theory","Shortest Path"}
3420	Count Non-Decreasing Subarrays After K Operations	count-non-decreasing-subarrays-after-k-operations	Hard	{Array,Stack,"Segment Tree",Queue,"Sliding Window","Monotonic Stack","Monotonic Queue"}
3421	Find Students Who Improved	find-students-who-improved	Medium	{Database}
3422	Minimum Operations to Make Subarray Elements Equal	minimum-operations-to-make-subarray-elements-equal	Medium	{Array,"Hash Table",Math,"Sliding Window","Heap (Priority Queue)"}
3423	Maximum Difference Between Adjacent Elements in a Circular Array	maximum-difference-between-adjacent-elements-in-a-circular-array	Easy	{Array}
3424	Minimum Cost to Make Arrays Identical	minimum-cost-to-make-arrays-identical	Medium	{Array,Greedy,Sorting}
3425	Longest Special Path	longest-special-path	Hard	{Array,"Hash Table",Tree,"Depth-First Search","Prefix Sum"}
3426	Manhattan Distances of All Arrangements of Pieces	manhattan-distances-of-all-arrangements-of-pieces	Hard	{Math,Combinatorics}
3427	Sum of Variable Length Subarrays	sum-of-variable-length-subarrays	Easy	{Array,"Prefix Sum"}
3428	Maximum and Minimum Sums of at Most Size K Subsequences	maximum-and-minimum-sums-of-at-most-size-k-subsequences	Medium	{Array,Math,"Dynamic Programming",Sorting,Combinatorics}
3429	Paint House IV	paint-house-iv	Medium	{Array,"Dynamic Programming"}
3430	Maximum and Minimum Sums of at Most Size K Subarrays	maximum-and-minimum-sums-of-at-most-size-k-subarrays	Hard	{Array,Math,Stack,"Monotonic Stack"}
3431	Minimum Unlocked Indices to Sort Nums	minimum-unlocked-indices-to-sort-nums	Medium	{Array,"Hash Table"}
3432	Count Partitions with Even Sum Difference	count-partitions-with-even-sum-difference	Easy	{Array,Math,"Prefix Sum"}
3433	Count Mentions Per User	count-mentions-per-user	Medium	{Array,Math,Sorting,Simulation}
3434	Maximum Frequency After Subarray Operation	maximum-frequency-after-subarray-operation	Medium	{Array,"Hash Table","Dynamic Programming",Greedy,Enumeration,"Prefix Sum"}
3435	Frequencies of Shortest Supersequences	frequencies-of-shortest-supersequences	Hard	{Array,String,"Bit Manipulation","Graph Theory","Topological Sort",Enumeration}
3436	Find Valid Emails	find-valid-emails	Easy	{Database}
3437	Permutations III	permutations-iii	Medium	{Array,Backtracking}
3438	Find Valid Pair of Adjacent Digits in String	find-valid-pair-of-adjacent-digits-in-string	Easy	{"Hash Table",String,Counting}
3439	Reschedule Meetings for Maximum Free Time I	reschedule-meetings-for-maximum-free-time-i	Medium	{Array,Greedy,"Sliding Window"}
3440	Reschedule Meetings for Maximum Free Time II	reschedule-meetings-for-maximum-free-time-ii	Medium	{Array,Greedy,Enumeration}
3441	Minimum Cost Good Caption	minimum-cost-good-caption	Hard	{String,"Dynamic Programming"}
3442	Maximum Difference Between Even and Odd Frequency I	maximum-difference-between-even-and-odd-frequency-i	Easy	{"Hash Table",String,Counting}
3443	Maximum Manhattan Distance After K Changes	maximum-manhattan-distance-after-k-changes	Medium	{"Hash Table",Math,String,Counting}
3444	Minimum Increments for Target Multiples in an Array	minimum-increments-for-target-multiples-in-an-array	Hard	{Array,Math,"Dynamic Programming","Bit Manipulation","Number Theory",Bitmask}
3445	Maximum Difference Between Even and Odd Frequency II	maximum-difference-between-even-and-odd-frequency-ii	Hard	{String,"Sliding Window",Enumeration,"Prefix Sum"}
3446	Sort Matrix by Diagonals	sort-matrix-by-diagonals	Medium	{Array,Sorting,Matrix}
3447	Assign Elements to Groups with Constraints	assign-elements-to-groups-with-constraints	Medium	{Array,"Hash Table"}
3448	Count Substrings Divisible By Last Digit	count-substrings-divisible-by-last-digit	Hard	{String,"Dynamic Programming"}
3449	Maximize the Minimum Game Score	maximize-the-minimum-game-score	Hard	{Array,"Binary Search",Greedy}
3450	Maximum Students on a Single Bench	maximum-students-on-a-single-bench	Easy	{Array,"Hash Table"}
3451	Find Invalid IP Addresses	find-invalid-ip-addresses	Hard	{Database}
3452	Sum of Good Numbers	sum-of-good-numbers	Easy	{Array}
3453	Separate Squares I	separate-squares-i	Medium	{Array,"Binary Search"}
3454	Separate Squares II	separate-squares-ii	Hard	{Array,"Binary Search","Segment Tree","Sweep Line"}
3455	Shortest Matching Substring	shortest-matching-substring	Hard	{"Two Pointers",String,"Binary Search","String Matching"}
3456	Find Special Substring of Length K	find-special-substring-of-length-k	Easy	{String}
3457	Eat Pizzas!	eat-pizzas	Medium	{Array,Greedy,Sorting}
3458	Select K Disjoint Special Substrings	select-k-disjoint-special-substrings	Medium	{"Hash Table",String,"Dynamic Programming",Greedy,Sorting}
3459	Length of Longest V-Shaped Diagonal Segment	length-of-longest-v-shaped-diagonal-segment	Hard	{Array,"Dynamic Programming",Memoization,Matrix}
3460	Longest Common Prefix After at Most One Removal	longest-common-prefix-after-at-most-one-removal	Medium	{"Two Pointers",String}
3461	Check If Digits Are Equal in String After Operations I	check-if-digits-are-equal-in-string-after-operations-i	Easy	{Math,String,Simulation,Combinatorics,"Number Theory"}
3462	Maximum Sum With at Most K Elements	maximum-sum-with-at-most-k-elements	Medium	{Array,Greedy,Sorting,"Heap (Priority Queue)",Matrix}
3463	Check If Digits Are Equal in String After Operations II	check-if-digits-are-equal-in-string-after-operations-ii	Hard	{Math,String,Combinatorics,"Number Theory"}
3464	Maximize the Distance Between Points on a Square	maximize-the-distance-between-points-on-a-square	Hard	{Array,Math,"Binary Search",Geometry,Sorting}
3465	Find Products with Valid Serial Numbers	find-products-with-valid-serial-numbers	Easy	{Database}
3466	Maximum Coin Collection 	maximum-coin-collection	Medium	{Array,"Dynamic Programming"}
3467	Transform Array by Parity	transform-array-by-parity	Easy	{Array,Sorting,Counting}
3468	Find the Number of Copy Arrays	find-the-number-of-copy-arrays	Medium	{Array,Math}
3469	Find Minimum Cost to Remove Array Elements	find-minimum-cost-to-remove-array-elements	Medium	{Array,"Dynamic Programming"}
3470	Permutations IV	permutations-iv	Hard	{Array,Math,Combinatorics,Enumeration}
3471	Find the Largest Almost Missing Integer	find-the-largest-almost-missing-integer	Easy	{Array,"Hash Table"}
3472	Longest Palindromic Subsequence After at Most K Operations	longest-palindromic-subsequence-after-at-most-k-operations	Medium	{String,"Dynamic Programming"}
3473	Sum of K Subarrays With Length at Least M	sum-of-k-subarrays-with-length-at-least-m	Medium	{Array,"Dynamic Programming","Prefix Sum"}
3474	Lexicographically Smallest Generated String	lexicographically-smallest-generated-string	Hard	{String,Greedy,"String Matching"}
3475	DNA Pattern Recognition 	dna-pattern-recognition	Medium	{Database}
3476	Maximize Profit from Task Assignment	maximize-profit-from-task-assignment	Medium	{Array,Greedy,Sorting,"Heap (Priority Queue)"}
3477	Fruits Into Baskets II	fruits-into-baskets-ii	Easy	{Array,"Binary Search","Segment Tree",Simulation,"Ordered Set"}
3478	Choose K Elements With Maximum Sum	choose-k-elements-with-maximum-sum	Medium	{Array,Sorting,"Heap (Priority Queue)"}
3479	Fruits Into Baskets III	fruits-into-baskets-iii	Medium	{Array,"Binary Search","Segment Tree","Ordered Set"}
3480	Maximize Subarrays After Removing One Conflicting Pair	maximize-subarrays-after-removing-one-conflicting-pair	Hard	{Array,"Segment Tree",Enumeration,"Prefix Sum"}
3481	Apply Substitutions	apply-substitutions	Medium	{Array,"Hash Table",String,"Depth-First Search","Breadth-First Search","Graph Theory","Topological Sort"}
3482	Analyze Organization Hierarchy	analyze-organization-hierarchy	Hard	{Database}
3483	Unique 3-Digit Even Numbers	unique-3-digit-even-numbers	Easy	{Array,"Hash Table",Recursion,Enumeration}
3484	Design Spreadsheet	design-spreadsheet	Medium	{Array,"Hash Table",String,Design,Matrix}
3485	Longest Common Prefix of K Strings After Removal	longest-common-prefix-of-k-strings-after-removal	Hard	{Array,String,Trie}
3486	Longest Special Path II	longest-special-path-ii	Hard	{Array,"Hash Table",Tree,"Depth-First Search","Prefix Sum"}
3487	Maximum Unique Subarray Sum After Deletion	maximum-unique-subarray-sum-after-deletion	Easy	{Array,"Hash Table",Greedy}
3488	Closest Equal Element Queries	closest-equal-element-queries	Medium	{Array,"Hash Table","Binary Search"}
3489	Zero Array Transformation IV	zero-array-transformation-iv	Medium	{Array,"Dynamic Programming"}
3490	Count Beautiful Numbers	count-beautiful-numbers	Hard	{"Dynamic Programming"}
3491	Phone Number Prefix	phone-number-prefix	Easy	{Array,String,Trie,Sorting}
3492	Maximum Containers on a Ship	maximum-containers-on-a-ship	Easy	{Math}
3493	Properties Graph	properties-graph	Medium	{Array,"Hash Table","Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
3494	Find the Minimum Amount of Time to Brew Potions	find-the-minimum-amount-of-time-to-brew-potions	Medium	{Array,Simulation,"Prefix Sum"}
3495	Minimum Operations to Make Array Elements Zero	minimum-operations-to-make-array-elements-zero	Hard	{Array,Math,"Bit Manipulation"}
3496	Maximize Score After Pair Deletions	maximize-score-after-pair-deletions	Medium	{Array,Greedy}
3497	Analyze Subscription Conversion 	analyze-subscription-conversion	Medium	{Database}
3498	Reverse Degree of a String	reverse-degree-of-a-string	Easy	{String,Simulation}
3499	Maximize Active Section with Trade I	maximize-active-section-with-trade-i	Medium	{String,Enumeration}
3500	Minimum Cost to Divide Array Into Subarrays	minimum-cost-to-divide-array-into-subarrays	Hard	{Array,"Dynamic Programming","Prefix Sum"}
3501	Maximize Active Section with Trade II	maximize-active-section-with-trade-ii	Hard	{Array,String,"Binary Search","Segment Tree"}
3502	Minimum Cost to Reach Every Position	minimum-cost-to-reach-every-position	Easy	{Array}
3503	Longest Palindrome After Substring Concatenation I	longest-palindrome-after-substring-concatenation-i	Medium	{"Two Pointers",String,"Dynamic Programming",Enumeration}
3504	Longest Palindrome After Substring Concatenation II	longest-palindrome-after-substring-concatenation-ii	Hard	{"Two Pointers",String,"Dynamic Programming"}
3505	Minimum Operations to Make Elements Within K Subarrays Equal	minimum-operations-to-make-elements-within-k-subarrays-equal	Hard	{Array,"Hash Table",Math,"Dynamic Programming","Sliding Window","Heap (Priority Queue)"}
3506	Find Time Required to Eliminate Bacterial Strains	find-time-required-to-eliminate-bacterial-strains	Hard	{Array,Math,Greedy,"Heap (Priority Queue)"}
3507	Minimum Pair Removal to Sort Array I	minimum-pair-removal-to-sort-array-i	Easy	{Array,"Hash Table","Linked List","Heap (Priority Queue)",Simulation,"Doubly-Linked List","Ordered Set"}
3508	Implement Router	implement-router	Medium	{Array,"Hash Table","Binary Search",Design,Queue,"Ordered Set"}
3509	Maximum Product of Subsequences With an Alternating Sum Equal to K	maximum-product-of-subsequences-with-an-alternating-sum-equal-to-k	Hard	{Array,"Hash Table","Dynamic Programming"}
3510	Minimum Pair Removal to Sort Array II	minimum-pair-removal-to-sort-array-ii	Hard	{Array,"Hash Table","Linked List","Heap (Priority Queue)",Simulation,"Doubly-Linked List","Ordered Set"}
3511	Make a Positive Array	make-a-positive-array	Medium	{Array,Greedy,"Prefix Sum"}
3512	Minimum Operations to Make Array Sum Divisible by K	minimum-operations-to-make-array-sum-divisible-by-k	Easy	{Array,Math}
3513	Number of Unique XOR Triplets I	number-of-unique-xor-triplets-i	Medium	{Array,Math,"Bit Manipulation"}
3639	Minimum Time to Activate String	minimum-time-to-activate-string	Medium	{Array,"Binary Search"}
3514	Number of Unique XOR Triplets II	number-of-unique-xor-triplets-ii	Medium	{Array,Math,"Bit Manipulation",Enumeration}
3515	Shortest Path in a Weighted Tree	shortest-path-in-a-weighted-tree	Hard	{Array,Tree,"Depth-First Search","Binary Indexed Tree","Segment Tree"}
3516	Find Closest Person	find-closest-person	Easy	{Math}
3517	Smallest Palindromic Rearrangement I	smallest-palindromic-rearrangement-i	Medium	{String,Sorting,"Counting Sort"}
3518	Smallest Palindromic Rearrangement II	smallest-palindromic-rearrangement-ii	Hard	{"Hash Table",Math,String,Combinatorics,Counting}
3519	Count Numbers with Non-Decreasing Digits 	count-numbers-with-non-decreasing-digits	Hard	{Math,String,"Dynamic Programming"}
3520	Minimum Threshold for Inversion Pairs Count	minimum-threshold-for-inversion-pairs-count	Medium	{Array,"Binary Search","Binary Indexed Tree","Segment Tree"}
3521	Find Product Recommendation Pairs	find-product-recommendation-pairs	Medium	{Database}
3522	Calculate Score After Performing Instructions	calculate-score-after-performing-instructions	Medium	{Array,"Hash Table",String,Simulation}
3523	Make Array Non-decreasing	make-array-non-decreasing	Medium	{Array,Stack,Greedy,"Monotonic Stack"}
3524	Find X Value of Array I	find-x-value-of-array-i	Medium	{Array,Math,"Dynamic Programming"}
3525	Find X Value of Array II	find-x-value-of-array-ii	Hard	{Array,Math,"Segment Tree"}
3526	Range XOR Queries with Subarray Reversals	range-xor-queries-with-subarray-reversals	Hard	{Array,Tree,"Binary Tree"}
3527	Find the Most Common Response	find-the-most-common-response	Medium	{Array,"Hash Table",String,Counting}
3528	Unit Conversion I	unit-conversion-i	Medium	{"Depth-First Search","Breadth-First Search","Graph Theory"}
3529	Count Cells in Overlapping Horizontal and Vertical Substrings	count-cells-in-overlapping-horizontal-and-vertical-substrings	Medium	{Array,String,"Rolling Hash","String Matching",Matrix,"Hash Function"}
3530	Maximum Profit from Valid Topological Order in DAG	maximum-profit-from-valid-topological-order-in-dag	Hard	{Array,"Dynamic Programming","Bit Manipulation","Graph Theory","Topological Sort",Bitmask}
3531	Count Covered Buildings	count-covered-buildings	Medium	{Array,"Hash Table",Sorting}
3532	Path Existence Queries in a Graph I	path-existence-queries-in-a-graph-i	Medium	{Array,"Hash Table","Binary Search",Union-Find,"Graph Theory"}
3533	Concatenated Divisibility	concatenated-divisibility	Hard	{Array,"Dynamic Programming","Bit Manipulation",Bitmask}
3534	Path Existence Queries in a Graph II	path-existence-queries-in-a-graph-ii	Hard	{Array,"Two Pointers","Binary Search","Dynamic Programming",Greedy,"Bit Manipulation","Graph Theory",Sorting}
3535	Unit Conversion II	unit-conversion-ii	Medium	{Array,Math,"Depth-First Search","Breadth-First Search","Graph Theory"}
3536	Maximum Product of Two Digits	maximum-product-of-two-digits	Easy	{Math,Sorting}
3537	Fill a Special Grid	fill-a-special-grid	Medium	{Array,"Divide and Conquer",Matrix}
3538	Merge Operations for Minimum Travel Time	merge-operations-for-minimum-travel-time	Hard	{Array,"Dynamic Programming","Prefix Sum"}
3539	Find Sum of Array Product of Magical Sequences	find-sum-of-array-product-of-magical-sequences	Hard	{Array,Math,"Dynamic Programming","Bit Manipulation",Combinatorics,Bitmask}
3540	Minimum Time to Visit All Houses	minimum-time-to-visit-all-houses	Medium	{Array,"Prefix Sum"}
3541	Find Most Frequent Vowel and Consonant	find-most-frequent-vowel-and-consonant	Easy	{"Hash Table",String,Counting}
3542	Minimum Operations to Convert All Elements to Zero	minimum-operations-to-convert-all-elements-to-zero	Medium	{Array,"Hash Table",Stack,Greedy,"Monotonic Stack"}
3543	Maximum Weighted K-Edge Path	maximum-weighted-k-edge-path	Medium	{"Hash Table","Dynamic Programming","Graph Theory"}
3544	Subtree Inversion Sum	subtree-inversion-sum	Hard	{Array,"Dynamic Programming",Tree,"Depth-First Search"}
3545	Minimum Deletions for At Most K Distinct Characters	minimum-deletions-for-at-most-k-distinct-characters	Easy	{"Hash Table",String,Greedy,Sorting,Counting}
3546	Equal Sum Grid Partition I	equal-sum-grid-partition-i	Medium	{Array,Matrix,Enumeration,"Prefix Sum"}
3547	Maximum Sum of Edge Values in a Graph	maximum-sum-of-edge-values-in-a-graph	Hard	{Math,Greedy,"Graph Theory"}
3548	Equal Sum Grid Partition II	equal-sum-grid-partition-ii	Hard	{Array,"Hash Table",Matrix,Enumeration,"Prefix Sum"}
3549	Multiply Two Polynomials	multiply-two-polynomials	Hard	{Array,Math}
3550	Smallest Index With Digit Sum Equal to Index	smallest-index-with-digit-sum-equal-to-index	Easy	{Array,Math}
3551	Minimum Swaps to Sort by Digit Sum	minimum-swaps-to-sort-by-digit-sum	Medium	{Array,"Hash Table",Sorting}
3552	Grid Teleportation Traversal	grid-teleportation-traversal	Medium	{Array,"Hash Table","Breadth-First Search",Matrix}
3553	Minimum Weighted Subgraph With the Required Paths II	minimum-weighted-subgraph-with-the-required-paths-ii	Hard	{Array,"Dynamic Programming","Bit Manipulation",Tree,"Depth-First Search"}
3554	Find Category Recommendation Pairs	find-category-recommendation-pairs	Hard	{Database}
3555	Smallest Subarray to Sort in Every Sliding Window	smallest-subarray-to-sort-in-every-sliding-window	Medium	{Array,"Two Pointers",Stack,Greedy,Sorting,"Monotonic Stack"}
3640	Trionic Array II	trionic-array-ii	Hard	{Array,"Dynamic Programming"}
3556	Sum of Largest Prime Substrings	sum-of-largest-prime-substrings	Medium	{"Hash Table",Math,String,Sorting,"Number Theory"}
3557	Find Maximum Number of Non Intersecting Substrings	find-maximum-number-of-non-intersecting-substrings	Medium	{"Hash Table",String,"Dynamic Programming",Greedy}
3558	Number of Ways to Assign Edge Weights I	number-of-ways-to-assign-edge-weights-i	Medium	{Math,Tree,"Depth-First Search"}
3559	Number of Ways to Assign Edge Weights II	number-of-ways-to-assign-edge-weights-ii	Hard	{Array,Math,"Dynamic Programming","Bit Manipulation",Tree,"Depth-First Search"}
3560	Find Minimum Log Transportation Cost	find-minimum-log-transportation-cost	Easy	{Math}
3561	Resulting String After Adjacent Removals	resulting-string-after-adjacent-removals	Medium	{String,Stack,Simulation}
3562	Maximum Profit from Trading Stocks with Discounts	maximum-profit-from-trading-stocks-with-discounts	Hard	{Array,"Dynamic Programming",Tree,"Depth-First Search"}
3563	Lexicographically Smallest String After Adjacent Removals	lexicographically-smallest-string-after-adjacent-removals	Hard	{String,"Dynamic Programming"}
3564	Seasonal Sales Analysis	seasonal-sales-analysis	Medium	{Database}
3565	Sequential Grid Path Cover	sequential-grid-path-cover	Medium	{Array,Recursion,Matrix}
3566	Partition Array into Two Equal Product Subsets	partition-array-into-two-equal-product-subsets	Medium	{Array,"Bit Manipulation",Recursion,Enumeration}
3567	Minimum Absolute Difference in Sliding Submatrix	minimum-absolute-difference-in-sliding-submatrix	Medium	{Array,Sorting,Matrix}
3568	Minimum Moves to Clean the Classroom	minimum-moves-to-clean-the-classroom	Medium	{Array,"Hash Table","Bit Manipulation","Breadth-First Search",Matrix}
3569	Maximize Count of Distinct Primes After Split	maximize-count-of-distinct-primes-after-split	Hard	{Array,Math,"Segment Tree","Number Theory"}
3570	Find Books with No Available Copies	find-books-with-no-available-copies	Easy	{Database}
3571	Find the Shortest Superstring II	find-the-shortest-superstring-ii	Easy	{String}
3572	Maximize Y‑Sum by Picking a Triplet of Distinct X‑Values	maximize-ysum-by-picking-a-triplet-of-distinct-xvalues	Medium	{Array,"Hash Table",Greedy,Sorting,"Heap (Priority Queue)"}
3573	Best Time to Buy and Sell Stock V	best-time-to-buy-and-sell-stock-v	Medium	{Array,"Dynamic Programming"}
3574	Maximize Subarray GCD Score	maximize-subarray-gcd-score	Hard	{Array,Math,Enumeration,"Number Theory"}
3575	Maximum Good Subtree Score	maximum-good-subtree-score	Hard	{Array,"Dynamic Programming","Bit Manipulation",Tree,"Depth-First Search",Bitmask}
3576	Transform Array to All Equal Elements	transform-array-to-all-equal-elements	Medium	{Array,Greedy}
3577	Count the Number of Computer Unlocking Permutations	count-the-number-of-computer-unlocking-permutations	Medium	{Array,Math,Brainteaser,Combinatorics}
3578	Count Partitions With Max-Min Difference at Most K	count-partitions-with-max-min-difference-at-most-k	Medium	{Array,"Dynamic Programming",Queue,"Sliding Window","Prefix Sum","Monotonic Queue"}
3579	Minimum Steps to Convert String with Operations	minimum-steps-to-convert-string-with-operations	Hard	{String,"Dynamic Programming"}
3580	Find Consistently Improving Employees	find-consistently-improving-employees	Medium	{Database}
3581	Count Odd Letters from Number	count-odd-letters-from-number	Easy	{"Hash Table",String,Simulation,Counting}
3582	Generate Tag for Video Caption	generate-tag-for-video-caption	Easy	{String,Simulation}
3583	Count Special Triplets	count-special-triplets	Medium	{Array,"Hash Table",Counting}
3584	Maximum Product of First and Last Elements of a Subsequence	maximum-product-of-first-and-last-elements-of-a-subsequence	Medium	{Array,"Two Pointers"}
3585	Find Weighted Median Node in Tree	find-weighted-median-node-in-tree	Hard	{Array,"Binary Search","Dynamic Programming","Bit Manipulation",Tree,"Depth-First Search"}
3586	Find COVID Recovery Patients	find-covid-recovery-patients	Medium	{Database}
3587	Minimum Adjacent Swaps to Alternate Parity	minimum-adjacent-swaps-to-alternate-parity	Medium	{Array,Greedy}
3588	Find Maximum Area of a Triangle	find-maximum-area-of-a-triangle	Medium	{Array,"Hash Table",Math,Greedy,Geometry,Enumeration}
3589	Count Prime-Gap Balanced Subarrays	count-prime-gap-balanced-subarrays	Medium	{Array,Math,Queue,"Sliding Window","Number Theory","Monotonic Queue"}
3590	Kth Smallest Path XOR Sum	kth-smallest-path-xor-sum	Hard	{Array,Tree,"Depth-First Search","Ordered Set"}
3591	Check if Any Element Has Prime Frequency	check-if-any-element-has-prime-frequency	Easy	{Array,"Hash Table",Math,Counting,"Number Theory"}
3592	Inverse Coin Change	inverse-coin-change	Medium	{Array,"Dynamic Programming"}
3593	Minimum Increments to Equalize Leaf Paths	minimum-increments-to-equalize-leaf-paths	Medium	{Array,"Dynamic Programming",Tree,"Depth-First Search"}
3594	Minimum Time to Transport All Individuals	minimum-time-to-transport-all-individuals	Hard	{Array,"Bit Manipulation","Graph Theory","Heap (Priority Queue)","Shortest Path",Bitmask}
3595	Once Twice	once-twice	Medium	{Array,"Bit Manipulation"}
3596	Minimum Cost Path with Alternating Directions I	minimum-cost-path-with-alternating-directions-i	Medium	{Math,Brainteaser}
3597	Partition String 	partition-string	Medium	{"Hash Table",String,Trie,Simulation}
3865	Reverse K Subarrays	reverse-k-subarrays	Medium	{Array,"Two Pointers"}
3598	Longest Common Prefix Between Adjacent Strings After Removals	longest-common-prefix-between-adjacent-strings-after-removals	Medium	{Array,String}
3599	Partition Array to Minimize XOR	partition-array-to-minimize-xor	Medium	{Array,"Dynamic Programming","Bit Manipulation","Prefix Sum"}
3600	Maximize Spanning Tree Stability with Upgrades	maximize-spanning-tree-stability-with-upgrades	Hard	{"Binary Search",Greedy,Union-Find,"Graph Theory","Minimum Spanning Tree"}
3601	Find Drivers with Improved Fuel Efficiency	find-drivers-with-improved-fuel-efficiency	Medium	{Database}
3602	Hexadecimal and Hexatrigesimal Conversion	hexadecimal-and-hexatrigesimal-conversion	Easy	{Math,String}
3603	Minimum Cost Path with Alternating Directions II	minimum-cost-path-with-alternating-directions-ii	Medium	{Array,"Dynamic Programming",Matrix}
3604	Minimum Time to Reach Destination in Directed Graph	minimum-time-to-reach-destination-in-directed-graph	Medium	{"Graph Theory","Heap (Priority Queue)","Shortest Path"}
3605	Minimum Stability Factor of Array	minimum-stability-factor-of-array	Hard	{Array,Math,"Binary Search",Greedy,"Segment Tree","Number Theory"}
3606	Coupon Code Validator	coupon-code-validator	Easy	{Array,"Hash Table",String,Sorting}
3607	Power Grid Maintenance	power-grid-maintenance	Medium	{Array,"Hash Table","Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory","Heap (Priority Queue)","Ordered Set"}
3608	Minimum Time for K Connected Components	minimum-time-for-k-connected-components	Medium	{"Binary Search",Union-Find,"Graph Theory",Sorting}
3609	Minimum Moves to Reach Target in Grid	minimum-moves-to-reach-target-in-grid	Hard	{Math}
3610	Minimum Number of Primes to Sum to Target	minimum-number-of-primes-to-sum-to-target	Medium	{Array,Math,"Dynamic Programming","Number Theory"}
3611	Find Overbooked Employees	find-overbooked-employees	Medium	{Database}
3612	Process String with Special Operations I	process-string-with-special-operations-i	Medium	{String,Simulation}
3613	Minimize Maximum Component Cost	minimize-maximum-component-cost	Medium	{"Binary Search",Union-Find,"Graph Theory",Sorting}
3614	Process String with Special Operations II	process-string-with-special-operations-ii	Hard	{String,Simulation}
3615	Longest Palindromic Path in Graph	longest-palindromic-path-in-graph	Hard	{String,"Dynamic Programming","Bit Manipulation","Graph Theory",Bitmask}
3616	Number of Student Replacements	number-of-student-replacements	Medium	{Array,Simulation}
3617	Find Students with Study Spiral Pattern	find-students-with-study-spiral-pattern	Hard	{}
3618	Split Array by Prime Indices	split-array-by-prime-indices	Medium	{Array,Math,"Number Theory"}
3619	Count Islands With Total Value Divisible by K	count-islands-with-total-value-divisible-by-k	Medium	{Array,"Depth-First Search","Breadth-First Search",Union-Find,Matrix}
3620	Network Recovery Pathways	network-recovery-pathways	Hard	{Array,"Binary Search","Dynamic Programming","Graph Theory","Topological Sort","Heap (Priority Queue)","Shortest Path"}
3621	Number of Integers With Popcount-Depth Equal to K I	number-of-integers-with-popcount-depth-equal-to-k-i	Hard	{Math,"Dynamic Programming","Bit Manipulation",Combinatorics}
3622	Check Divisibility by Digit Sum and Product	check-divisibility-by-digit-sum-and-product	Easy	{Math}
3623	Count Number of Trapezoids I	count-number-of-trapezoids-i	Medium	{Array,"Hash Table",Math,Geometry}
3624	Number of Integers With Popcount-Depth Equal to K II	number-of-integers-with-popcount-depth-equal-to-k-ii	Hard	{Array,"Divide and Conquer","Binary Indexed Tree","Segment Tree"}
3625	Count Number of Trapezoids II	count-number-of-trapezoids-ii	Hard	{Array,"Hash Table",Math,Geometry}
3626	Find Stores with Inventory Imbalance	find-stores-with-inventory-imbalance	Medium	{}
3627	Maximum Median Sum of Subsequences of Size 3	maximum-median-sum-of-subsequences-of-size-3	Medium	{Array,Math,Greedy,Sorting,"Game Theory"}
3628	Maximum Number of Subsequences After One Inserting	maximum-number-of-subsequences-after-one-inserting	Medium	{String,"Dynamic Programming",Greedy,"Prefix Sum"}
3629	Minimum Jumps to Reach End via Prime Teleportation	minimum-jumps-to-reach-end-via-prime-teleportation	Medium	{Array,"Hash Table",Math,"Breadth-First Search","Number Theory"}
3630	Partition Array for Maximum XOR and AND	partition-array-for-maximum-xor-and-and	Hard	{Array,Math,Greedy,"Bit Manipulation",Enumeration}
3631	Sort Threats by Severity and Exploitability	sort-threats-by-severity-and-exploitability	Medium	{Array,Sorting}
3632	Subarrays with XOR at Least K	subarrays-with-xor-at-least-k	Hard	{Array,"Bit Manipulation",Trie,"Prefix Sum"}
3633	Earliest Finish Time for Land and Water Rides I	earliest-finish-time-for-land-and-water-rides-i	Easy	{Array,"Two Pointers","Binary Search",Greedy,Sorting}
3634	Minimum Removals to Balance Array	minimum-removals-to-balance-array	Medium	{Array,"Binary Search","Sliding Window",Sorting}
3635	Earliest Finish Time for Land and Water Rides II	earliest-finish-time-for-land-and-water-rides-ii	Medium	{Array,"Two Pointers","Binary Search",Greedy,Sorting}
3636	Threshold Majority Queries	threshold-majority-queries	Hard	{Array,"Hash Table","Binary Search","Divide and Conquer",Counting,"Prefix Sum"}
3637	Trionic Array I	trionic-array-i	Easy	{Array}
3638	Maximum Balanced Shipments	maximum-balanced-shipments	Medium	{Array,"Dynamic Programming",Stack,Greedy,"Monotonic Stack"}
3641	Longest Semi-Repeating Subarray	longest-semi-repeating-subarray	Medium	{Array,"Hash Table","Sliding Window"}
3642	Find Books with Polarized Opinions	find-books-with-polarized-opinions	Medium	{}
3643	Flip Square Submatrix Vertically	flip-square-submatrix-vertically	Easy	{Array,"Two Pointers",Matrix}
3644	Maximum K to Sort a Permutation	maximum-k-to-sort-a-permutation	Medium	{Array,"Bit Manipulation"}
3645	Maximum Total from Optimal Activation Order	maximum-total-from-optimal-activation-order	Medium	{Array,"Two Pointers",Greedy,Sorting,"Heap (Priority Queue)"}
3646	Next Special Palindrome Number	next-special-palindrome-number	Hard	{Backtracking,"Bit Manipulation"}
3647	Maximum Weight in Two Bags	maximum-weight-in-two-bags	Medium	{Array,"Dynamic Programming"}
3648	Minimum Sensors to Cover Grid	minimum-sensors-to-cover-grid	Medium	{Math}
3649	Number of Perfect Pairs	number-of-perfect-pairs	Medium	{Array,Math,"Two Pointers",Sorting}
3650	Minimum Cost Path with Edge Reversals	minimum-cost-path-with-edge-reversals	Medium	{"Graph Theory","Heap (Priority Queue)","Shortest Path"}
3651	Minimum Cost Path with Teleportations	minimum-cost-path-with-teleportations	Hard	{Array,"Dynamic Programming",Matrix}
3652	Best Time to Buy and Sell Stock using Strategy	best-time-to-buy-and-sell-stock-using-strategy	Medium	{Array,"Sliding Window","Prefix Sum"}
3653	XOR After Range Multiplication Queries I	xor-after-range-multiplication-queries-i	Medium	{Array,"Divide and Conquer",Simulation}
3654	Minimum Sum After Divisible Sum Deletions	minimum-sum-after-divisible-sum-deletions	Medium	{Array,"Hash Table","Dynamic Programming","Prefix Sum"}
3655	XOR After Range Multiplication Queries II	xor-after-range-multiplication-queries-ii	Hard	{Array,"Divide and Conquer"}
3656	Determine if a Simple Graph Exists	determine-if-a-simple-graph-exists	Medium	{Array,"Binary Search","Graph Theory",Sorting,"Prefix Sum"}
3657	Find Loyal Customers	find-loyal-customers	Medium	{}
3658	GCD of Odd and Even Sums	gcd-of-odd-and-even-sums	Easy	{Math,"Number Theory"}
3659	Partition Array Into K-Distinct Groups	partition-array-into-k-distinct-groups	Medium	{Array,"Hash Table",Counting}
3660	Jump Game IX	jump-game-ix	Medium	{Array,"Dynamic Programming"}
3661	Maximum Walls Destroyed by Robots	maximum-walls-destroyed-by-robots	Hard	{Array,"Binary Search","Dynamic Programming",Sorting}
3662	Filter Characters by Frequency	filter-characters-by-frequency	Easy	{"Hash Table",String,Counting}
3663	Find The Least Frequent Digit	find-the-least-frequent-digit	Easy	{Array,"Hash Table",Math,Counting}
3664	Two-Letter Card Game	two-letter-card-game	Medium	{Array,"Hash Table",String,Counting,Enumeration}
3665	Twisted Mirror Path Count	twisted-mirror-path-count	Medium	{Array,"Dynamic Programming",Matrix}
3666	Minimum Operations to Equalize Binary String	minimum-operations-to-equalize-binary-string	Hard	{Math,String,"Breadth-First Search",Union-Find,"Ordered Set"}
3667	Sort Array By Absolute Value	sort-array-by-absolute-value	Easy	{Array,Math,"Two Pointers",Sorting}
3668	Restore Finishing Order	restore-finishing-order	Easy	{Array,"Hash Table"}
3669	Balanced K-Factor Decomposition	balanced-k-factor-decomposition	Medium	{Math,Backtracking,"Number Theory"}
3670	Maximum Product of Two Integers With No Common Bits	maximum-product-of-two-integers-with-no-common-bits	Medium	{Array,"Dynamic Programming","Bit Manipulation"}
3671	Sum of Beautiful Subsequences	sum-of-beautiful-subsequences	Hard	{Array,Math,"Binary Indexed Tree","Number Theory"}
3672	Sum of Weighted Modes in Subarrays	sum-of-weighted-modes-in-subarrays	Medium	{Array,"Hash Table","Sliding Window",Counting,"Ordered Set"}
3673	Find Zombie Sessions	find-zombie-sessions	Hard	{}
3674	Minimum Operations to Equalize Array	minimum-operations-to-equalize-array	Easy	{Array,"Bit Manipulation",Brainteaser}
3675	Minimum Operations to Transform String	minimum-operations-to-transform-string	Medium	{String,Greedy}
3676	Count Bowl Subarrays	count-bowl-subarrays	Medium	{Array,Stack,"Monotonic Stack"}
3677	Count Binary Palindromic Numbers	count-binary-palindromic-numbers	Hard	{Math,"Bit Manipulation"}
3678	Smallest Absent Positive Greater Than Average	smallest-absent-positive-greater-than-average	Easy	{Array,"Hash Table"}
3679	 Minimum Discards to Balance Inventory	minimum-discards-to-balance-inventory	Medium	{Array,"Hash Table","Sliding Window",Simulation,Counting}
3680	Generate Schedule	generate-schedule	Medium	{Array,Math,Greedy}
3681	Maximum XOR of Subsequences	maximum-xor-of-subsequences	Hard	{Array,Math,Greedy,"Bit Manipulation"}
3682	Minimum Index Sum of Common Elements	minimum-index-sum-of-common-elements	Medium	{Array,"Hash Table"}
3683	Earliest Time to Finish One Task	earliest-time-to-finish-one-task	Easy	{Array}
3684	Maximize Sum of At Most K Distinct Elements	maximize-sum-of-at-most-k-distinct-elements	Easy	{Array,"Hash Table",Greedy,Sorting}
3685	Subsequence Sum After Capping Elements	subsequence-sum-after-capping-elements	Medium	{Array,"Two Pointers","Dynamic Programming",Sorting}
3686	Number of Stable Subsequences	number-of-stable-subsequences	Hard	{Array,"Dynamic Programming"}
3687	Library Late Fee Calculator	library-late-fee-calculator	Easy	{Array,Simulation}
3688	Bitwise OR of Even Numbers in an Array	bitwise-or-of-even-numbers-in-an-array	Easy	{Array,"Bit Manipulation",Simulation}
3689	Maximum Total Subarray Value I	maximum-total-subarray-value-i	Medium	{Array,Greedy}
3690	Split and Merge Array Transformation	split-and-merge-array-transformation	Medium	{Array,"Hash Table","Breadth-First Search"}
3691	Maximum Total Subarray Value II	maximum-total-subarray-value-ii	Hard	{Array,Greedy,"Segment Tree","Heap (Priority Queue)"}
3692	Majority Frequency Characters	majority-frequency-characters	Easy	{"Hash Table",String,Counting}
3693	Climbing Stairs II	climbing-stairs-ii	Medium	{Array,"Dynamic Programming"}
3694	Distinct Points Reachable After Substring Removal	distinct-points-reachable-after-substring-removal	Medium	{"Hash Table",String,"Sliding Window","Prefix Sum"}
3695	Maximize Alternating Sum Using Swaps	maximize-alternating-sum-using-swaps	Hard	{Array,Greedy,Union-Find,Sorting}
3696	Maximum Distance Between Unequal Words in Array I	maximum-distance-between-unequal-words-in-array-i	Easy	{Array,String}
3697	Compute Decimal Representation	compute-decimal-representation	Easy	{Array,Math}
3698	Split Array With Minimum Difference	split-array-with-minimum-difference	Medium	{Array,"Prefix Sum"}
3699	Number of ZigZag Arrays I	number-of-zigzag-arrays-i	Hard	{"Dynamic Programming","Prefix Sum"}
3700	Number of ZigZag Arrays II	number-of-zigzag-arrays-ii	Hard	{Math,"Dynamic Programming"}
3701	Compute Alternating Sum	compute-alternating-sum	Easy	{Array,Simulation}
3702	Longest Subsequence With Non-Zero Bitwise XOR	longest-subsequence-with-non-zero-bitwise-xor	Medium	{Array,"Bit Manipulation"}
3703	Remove K-Balanced Substrings	remove-k-balanced-substrings	Medium	{String,Stack,Simulation}
3704	Count No-Zero Pairs That Sum to N	count-no-zero-pairs-that-sum-to-n	Hard	{Math,"Dynamic Programming"}
3705	Find Golden Hour Customers	find-golden-hour-customers	Medium	{}
3706	Maximum Distance Between Unequal Words in Array II	maximum-distance-between-unequal-words-in-array-ii	Medium	{Array,String}
3707	Equal Score Substrings	equal-score-substrings	Easy	{String,"Prefix Sum"}
3708	Longest Fibonacci Subarray	longest-fibonacci-subarray	Medium	{Array}
3709	Design Exam Scores Tracker	design-exam-scores-tracker	Medium	{Array,"Binary Search",Design,"Prefix Sum"}
3710	Maximum Partition Factor	maximum-partition-factor	Hard	{Array,"Binary Search","Depth-First Search","Breadth-First Search",Union-Find,"Graph Theory"}
3711	Maximum Transactions Without Negative Balance	maximum-transactions-without-negative-balance	Medium	{Array,Greedy,"Heap (Priority Queue)"}
3712	Sum of Elements With Frequency Divisible by K	sum-of-elements-with-frequency-divisible-by-k	Easy	{Array,"Hash Table",Counting}
3713	Longest Balanced Substring I	longest-balanced-substring-i	Medium	{"Hash Table",String,Counting,Enumeration}
3714	Longest Balanced Substring II	longest-balanced-substring-ii	Medium	{"Hash Table",String,"Prefix Sum"}
3715	Sum of Perfect Square Ancestors	sum-of-perfect-square-ancestors	Hard	{Array,"Hash Table",Math,Tree,"Depth-First Search",Counting,"Number Theory"}
3716	Find Churn Risk Customers	find-churn-risk-customers	Medium	{}
3717	Minimum Operations to Make the Array Beautiful	minimum-operations-to-make-the-array-beautiful	Medium	{Array,"Dynamic Programming"}
3718	Smallest Missing Multiple of K	smallest-missing-multiple-of-k	Easy	{Array,"Hash Table"}
3719	Longest Balanced Subarray I	longest-balanced-subarray-i	Medium	{Array,"Hash Table","Divide and Conquer","Segment Tree","Prefix Sum"}
3720	Lexicographically Smallest Permutation Greater Than Target	lexicographically-smallest-permutation-greater-than-target	Medium	{"Hash Table",String,Greedy,Counting,Enumeration}
3721	Longest Balanced Subarray II	longest-balanced-subarray-ii	Hard	{Array,"Hash Table","Divide and Conquer","Segment Tree","Prefix Sum"}
3722	Lexicographically Smallest String After Reverse	lexicographically-smallest-string-after-reverse	Medium	{"Two Pointers","Binary Search",Enumeration}
3723	Maximize Sum of Squares of Digits	maximize-sum-of-squares-of-digits	Medium	{Math,Greedy}
3724	Minimum Operations to Transform Array	minimum-operations-to-transform-array	Medium	{Array,Greedy}
3725	Count Ways to Choose Coprime Integers from Rows	count-ways-to-choose-coprime-integers-from-rows	Hard	{Array,Math,"Dynamic Programming",Matrix,Combinatorics,"Number Theory"}
3726	Remove Zeros in Decimal Representation	remove-zeros-in-decimal-representation	Easy	{Math,Simulation}
3727	Maximum Alternating Sum of Squares	maximum-alternating-sum-of-squares	Medium	{Array,Greedy,Sorting}
3728	Stable Subarrays With Equal Boundary and Interior Sum	stable-subarrays-with-equal-boundary-and-interior-sum	Medium	{Array,"Hash Table","Prefix Sum"}
3729	Count Distinct Subarrays Divisible by K in Sorted Array	count-distinct-subarrays-divisible-by-k-in-sorted-array	Hard	{Array,"Hash Table","Prefix Sum"}
3730	Maximum Calories Burnt from Jumps	maximum-calories-burnt-from-jumps	Medium	{Array,"Two Pointers",Greedy,Sorting}
3731	Find Missing Elements	find-missing-elements	Easy	{Array,"Hash Table",Sorting}
3732	Maximum Product of Three Elements After One Replacement	maximum-product-of-three-elements-after-one-replacement	Medium	{Array,Math,Greedy,Sorting}
3733	Minimum Time to Complete All Deliveries	minimum-time-to-complete-all-deliveries	Medium	{Math,"Binary Search"}
3734	Lexicographically Smallest Palindromic Permutation Greater Than Target	lexicographically-smallest-palindromic-permutation-greater-than-target	Hard	{"Two Pointers",String,Enumeration}
3735	Lexicographically Smallest String After Reverse II	lexicographically-smallest-string-after-reverse-ii	Hard	{String,"Binary Search","Rolling Hash","Suffix Array","Hash Function"}
3736	Minimum Moves to Equal Array Elements III	minimum-moves-to-equal-array-elements-iii	Easy	{Array,Math}
3737	Count Subarrays With Majority Element I	count-subarrays-with-majority-element-i	Medium	{Array,"Hash Table","Divide and Conquer","Segment Tree","Merge Sort",Counting,"Prefix Sum"}
3738	Longest Non-Decreasing Subarray After Replacing at Most One Element	longest-non-decreasing-subarray-after-replacing-at-most-one-element	Medium	{Array,"Dynamic Programming"}
3739	Count Subarrays With Majority Element II	count-subarrays-with-majority-element-ii	Hard	{Array,"Hash Table","Divide and Conquer","Segment Tree","Merge Sort","Prefix Sum"}
3740	Minimum Distance Between Three Equal Elements I	minimum-distance-between-three-equal-elements-i	Easy	{Array,"Hash Table"}
3741	Minimum Distance Between Three Equal Elements II	minimum-distance-between-three-equal-elements-ii	Medium	{Array,"Hash Table"}
3742	Maximum Path Score in a Grid	maximum-path-score-in-a-grid	Medium	{Array,"Dynamic Programming",Matrix}
3743	Maximize Cyclic Partition Score	maximize-cyclic-partition-score	Hard	{Array,"Dynamic Programming"}
3744	Find Kth Character in Expanded String	find-kth-character-in-expanded-string	Medium	{String}
3745	Maximize Expression of Three Elements	maximize-expression-of-three-elements	Easy	{Array,Greedy,Sorting,Enumeration}
3746	Minimum String Length After Balanced Removals	minimum-string-length-after-balanced-removals	Medium	{String,Stack,Counting}
3747	Count Distinct Integers After Removing Zeros	count-distinct-integers-after-removing-zeros	Medium	{Math,"Dynamic Programming"}
3748	Count Stable Subarrays	count-stable-subarrays	Hard	{Array,"Binary Search","Prefix Sum"}
3749	Evaluate Valid Expressions	evaluate-valid-expressions	Hard	{"Hash Table",Math,String,"Divide and Conquer",Stack}
3750	Minimum Number of Flips to Reverse Binary String	minimum-number-of-flips-to-reverse-binary-string	Easy	{Math,"Two Pointers",String,"Bit Manipulation"}
3751	Total Waviness of Numbers in Range I	total-waviness-of-numbers-in-range-i	Medium	{Math,"Dynamic Programming",Enumeration}
3752	Lexicographically Smallest Negated Permutation that Sums to Target	lexicographically-smallest-negated-permutation-that-sums-to-target	Medium	{Array,Math,"Two Pointers",Greedy,Sorting}
3753	Total Waviness of Numbers in Range II	total-waviness-of-numbers-in-range-ii	Hard	{Math,"Dynamic Programming"}
3754	Concatenate Non-Zero Digits and Multiply by Sum I	concatenate-non-zero-digits-and-multiply-by-sum-i	Easy	{Math}
3755	Find Maximum Balanced XOR Subarray Length	find-maximum-balanced-xor-subarray-length	Medium	{Array,"Hash Table","Bit Manipulation","Prefix Sum"}
3756	Concatenate Non-Zero Digits and Multiply by Sum II	concatenate-non-zero-digits-and-multiply-by-sum-ii	Medium	{Math,String,"Prefix Sum"}
3757	Number of Effective Subsequences	number-of-effective-subsequences	Hard	{Array,Math,"Dynamic Programming","Bit Manipulation",Combinatorics}
3758	Convert Number Words to Digits	convert-number-words-to-digits	Medium	{String,Trie}
3759	Count Elements With at Least K Greater Values	count-elements-with-at-least-k-greater-values	Medium	{Array,"Binary Search","Divide and Conquer",Sorting,Quickselect}
3760	Maximum Substrings With Distinct Start	maximum-substrings-with-distinct-start	Medium	{"Hash Table",String}
3761	Minimum Absolute Distance Between Mirror Pairs	minimum-absolute-distance-between-mirror-pairs	Medium	{Array,"Hash Table",Math}
3762	Minimum Operations to Equalize Subarrays	minimum-operations-to-equalize-subarrays	Hard	{Array,Math,"Binary Search","Segment Tree"}
3763	Maximum Total Sum with Threshold Constraints	maximum-total-sum-with-threshold-constraints	Medium	{Array,Greedy,Sorting,"Heap (Priority Queue)"}
3764	Most Common Course Pairs	most-common-course-pairs	Hard	{}
3765	Complete Prime Number	complete-prime-number	Medium	{Math,Enumeration,"Number Theory"}
3766	Minimum Operations to Make Binary Palindrome	minimum-operations-to-make-binary-palindrome	Medium	{Array,"Two Pointers","Binary Search","Bit Manipulation"}
3767	Maximize Points After Choosing K Tasks	maximize-points-after-choosing-k-tasks	Medium	{Array,Greedy,Sorting,"Heap (Priority Queue)"}
3768	Minimum Inversion Count in Subarrays of Fixed Length	minimum-inversion-count-in-subarrays-of-fixed-length	Hard	{Array,"Segment Tree","Sliding Window"}
3769	Sort Integers by Binary Reflection	sort-integers-by-binary-reflection	Easy	{Array,Sorting}
3770	Largest Prime from Consecutive Prime Sum	largest-prime-from-consecutive-prime-sum	Medium	{Array,Math,"Number Theory"}
3771	Total Score of Dungeon Runs	total-score-of-dungeon-runs	Medium	{Array,"Binary Search","Prefix Sum"}
3772	Maximum Subgraph Score in a Tree	maximum-subgraph-score-in-a-tree	Hard	{Array,"Dynamic Programming",Tree,"Depth-First Search"}
3773	Maximum Number of Equal Length Runs	maximum-number-of-equal-length-runs	Medium	{"Hash Table",String,Counting}
3866	First Unique Even Element	first-unique-even-element	Easy	{Array,"Hash Table",Counting}
3774	Absolute Difference Between Maximum and Minimum K Elements	absolute-difference-between-maximum-and-minimum-k-elements	Easy	{Array,Sorting}
3775	Reverse Words With Same Vowel Count	reverse-words-with-same-vowel-count	Medium	{"Two Pointers",String,Simulation}
3776	Minimum Moves to Balance Circular Array	minimum-moves-to-balance-circular-array	Medium	{Array,Greedy,Sorting}
3777	Minimum Deletions to Make Alternating Substring	minimum-deletions-to-make-alternating-substring	Hard	{String,"Segment Tree"}
3778	Minimum Distance Excluding One Maximum Weighted Edge	minimum-distance-excluding-one-maximum-weighted-edge	Medium	{}
3779	Minimum Number of Operations to Have Distinct Elements	minimum-number-of-operations-to-have-distinct-elements	Medium	{Array,"Hash Table"}
3780	Maximum Sum of Three Numbers Divisible by Three	maximum-sum-of-three-numbers-divisible-by-three	Medium	{Array,Greedy,Sorting,"Heap (Priority Queue)"}
3781	Maximum Score After Binary Swaps	maximum-score-after-binary-swaps	Medium	{Array,String,Greedy,"Heap (Priority Queue)"}
3782	Last Remaining Integer After Alternating Deletion Operations	last-remaining-integer-after-alternating-deletion-operations	Hard	{Math,Recursion}
3783	Mirror Distance of an Integer	mirror-distance-of-an-integer	Easy	{Math}
3784	Minimum Deletion Cost to Make All Characters Equal	minimum-deletion-cost-to-make-all-characters-equal	Medium	{Array,"Hash Table",String,Enumeration}
3785	Minimum Swaps to Avoid Forbidden Values	minimum-swaps-to-avoid-forbidden-values	Hard	{Array,"Hash Table",Greedy,Counting}
3786	Total Sum of Interaction Cost in Tree Groups	total-sum-of-interaction-cost-in-tree-groups	Hard	{Array,Tree,"Depth-First Search"}
3787	Find Diameter Endpoints of a Tree	find-diameter-endpoints-of-a-tree	Medium	{Tree,"Breadth-First Search","Graph Theory"}
3788	Maximum Score of a Split	maximum-score-of-a-split	Medium	{Array,"Prefix Sum"}
3789	Minimum Cost to Acquire Required Items	minimum-cost-to-acquire-required-items	Medium	{Math,Greedy}
3790	Smallest All-Ones Multiple	smallest-all-ones-multiple	Medium	{"Hash Table",Math}
3791	Number of Balanced Integers in a Range	number-of-balanced-integers-in-a-range	Hard	{"Dynamic Programming"}
3792	Sum of Increasing Product Blocks	sum-of-increasing-product-blocks	Medium	{Math,Simulation}
3793	Find Users with High Token Usage	find-users-with-high-token-usage	Easy	{}
3794	Reverse String Prefix	reverse-string-prefix	Easy	{"Two Pointers",String}
3795	Minimum Subarray Length With Distinct Sum At Least K	minimum-subarray-length-with-distinct-sum-at-least-k	Medium	{Array,"Hash Table","Sliding Window"}
3796	Find Maximum Value in a Constrained Sequence	find-maximum-value-in-a-constrained-sequence	Medium	{Array,Greedy}
3797	Count Routes to Climb a Rectangular Grid	count-routes-to-climb-a-rectangular-grid	Hard	{Array,"Dynamic Programming",Matrix,"Prefix Sum"}
3798	Largest Even Number	largest-even-number	Easy	{String}
3799	Word Squares II	word-squares-ii	Medium	{Array,String,Backtracking,Sorting,Enumeration}
3800	Minimum Cost to Make Two Binary Strings Equal	minimum-cost-to-make-two-binary-strings-equal	Medium	{String,Greedy}
3801	Minimum Cost to Merge Sorted Lists	minimum-cost-to-merge-sorted-lists	Hard	{Array,"Two Pointers","Binary Search","Dynamic Programming","Bit Manipulation"}
3802	Number of Ways to Paint Sheets	number-of-ways-to-paint-sheets	Hard	{}
3803	Count Residue Prefixes	count-residue-prefixes	Easy	{"Hash Table",String}
3804	Number of Centered Subarrays	number-of-centered-subarrays	Medium	{Array,"Hash Table",Enumeration}
3805	Count Caesar Cipher Pairs	count-caesar-cipher-pairs	Medium	{Array,"Hash Table",Math,String,Counting}
3806	Maximum Bitwise AND After Increment Operations	maximum-bitwise-and-after-increment-operations	Hard	{Array,Greedy,"Bit Manipulation",Sorting}
3807	Minimum Cost to Repair Edges to Traverse a Graph	minimum-cost-to-repair-edges-to-traverse-a-graph	Medium	{"Binary Search","Breadth-First Search","Graph Theory"}
3808	Find Emotionally Consistent Users	find-emotionally-consistent-users	Medium	{}
3809	Best Reachable Tower	best-reachable-tower	Medium	{Array}
3810	Minimum Operations to Reach Target Array	minimum-operations-to-reach-target-array	Medium	{Array,"Hash Table",Greedy}
3811	Number of Alternating XOR Partitions	number-of-alternating-xor-partitions	Medium	{Array,"Hash Table","Dynamic Programming","Bit Manipulation"}
3812	Minimum Edge Toggles on a Tree	minimum-edge-toggles-on-a-tree	Hard	{Tree,"Depth-First Search","Graph Theory","Topological Sort",Sorting}
3813	Vowel-Consonant Score	vowel-consonant-score	Easy	{String,Simulation}
3814	Maximum Capacity Within Budget	maximum-capacity-within-budget	Medium	{Array,"Two Pointers","Binary Search",Sorting}
3815	Design Auction System	design-auction-system	Medium	{"Hash Table",Design,"Heap (Priority Queue)","Ordered Set"}
3816	Lexicographically Smallest String After Deleting Duplicate Characters	lexicographically-smallest-string-after-deleting-duplicate-characters	Hard	{"Hash Table",String,Stack,Greedy,"Monotonic Stack"}
3817	Good Indices in a Digit String	good-indices-in-a-digit-string	Medium	{Math,String}
3818	Minimum Prefix Removal to Make Array Strictly Increasing	minimum-prefix-removal-to-make-array-strictly-increasing	Medium	{Array}
3819	Rotate Non Negative Elements	rotate-non-negative-elements	Medium	{Array,Simulation}
3820	Pythagorean Distance Nodes in a Tree	pythagorean-distance-nodes-in-a-tree	Medium	{Tree,"Breadth-First Search"}
3821	Find Nth Smallest Integer With K One Bits	find-nth-smallest-integer-with-k-one-bits	Hard	{Math,"Bit Manipulation",Combinatorics}
3822	Design Order Management System	design-order-management-system	Medium	{"Hash Table",Design}
3823	Reverse Letters Then Special Characters in a String	reverse-letters-then-special-characters-in-a-string	Easy	{"Two Pointers",String,Simulation}
3824	Minimum K to Reduce Array Within Limit	minimum-k-to-reduce-array-within-limit	Medium	{Array,"Binary Search"}
3825	Longest Strictly Increasing Subsequence With Non-Zero Bitwise AND	longest-strictly-increasing-subsequence-with-non-zero-bitwise-and	Medium	{Array,"Binary Search","Bit Manipulation",Enumeration}
3826	Minimum Partition Score	minimum-partition-score	Hard	{Array,"Divide and Conquer","Dynamic Programming",Queue,"Prefix Sum","Monotonic Queue"}
3827	Count Monobit Integers	count-monobit-integers	Easy	{"Bit Manipulation",Enumeration}
3828	Final Element After Subarray Deletions	final-element-after-subarray-deletions	Medium	{Array,Math,Brainteaser,"Game Theory"}
3829	Design Ride Sharing System	design-ride-sharing-system	Medium	{"Hash Table",Design,Queue,"Data Stream"}
3830	Longest Alternating Subarray After Removing At Most One Element	longest-alternating-subarray-after-removing-at-most-one-element	Hard	{Array,"Dynamic Programming",Enumeration}
3831	Median of a Binary Search Tree Level	median-of-a-binary-search-tree-level	Medium	{Tree,"Depth-First Search","Breadth-First Search","Binary Search Tree","Binary Tree"}
3832	Find Users with Persistent Behavior Patterns	find-users-with-persistent-behavior-patterns	Hard	{}
3833	Count Dominant Indices	count-dominant-indices	Easy	{Array,Enumeration}
3834	Merge Adjacent Equal Elements	merge-adjacent-equal-elements	Medium	{Array,Stack,Simulation}
3835	Count Subarrays With Cost Less Than or Equal to K	count-subarrays-with-cost-less-than-or-equal-to-k	Medium	{Array,Queue,"Monotonic Queue"}
3836	Maximum Score Using Exactly K Pairs	maximum-score-using-exactly-k-pairs	Hard	{Array,"Dynamic Programming"}
3837	Delayed Count of Equal Elements	delayed-count-of-equal-elements	Medium	{Array,"Hash Table",Counting}
3838	Weighted Word Mapping	weighted-word-mapping	Easy	{Array,String,Simulation}
3839	Number of Prefix Connected Groups	number-of-prefix-connected-groups	Medium	{Array,"Hash Table",String,Counting}
3840	House Robber V	house-robber-v	Medium	{Array,"Dynamic Programming"}
3841	Palindromic Path Queries in a Tree	palindromic-path-queries-in-a-tree	Hard	{Array,String,"Divide and Conquer",Tree,"Segment Tree"}
3842	Toggle Light Bulbs	toggle-light-bulbs	Easy	{Array,"Hash Table",Sorting,Simulation}
3843	First Element with Unique Frequency	first-element-with-unique-frequency	Medium	{Array,"Hash Table",Counting}
3844	Longest Almost-Palindromic Substring	longest-almost-palindromic-substring	Medium	{"Two Pointers",String,"Dynamic Programming"}
3845	Maximum Subarray XOR with Bounded Range	maximum-subarray-xor-with-bounded-range	Hard	{Array,"Bit Manipulation",Trie,Queue,"Sliding Window","Prefix Sum","Monotonic Queue"}
3846	Total Distance to Type a String Using One Finger	total-distance-to-type-a-string-using-one-finger	Medium	{"Hash Table",String}
3847	Find the Score Difference in a Game	find-the-score-difference-in-a-game	Medium	{Array,Simulation}
3848	Check Digitorial Permutation	check-digitorial-permutation	Medium	{Math,Counting}
3849	Maximum Bitwise XOR After Rearrangement	maximum-bitwise-xor-after-rearrangement	Medium	{String,Greedy,"Bit Manipulation"}
3850	Count Sequences to K	count-sequences-to-k	Hard	{Array,Math,"Dynamic Programming",Memoization,"Number Theory"}
3851	Maximum Requests Without Violating the Limit	maximum-requests-without-violating-the-limit	Medium	{Array,"Hash Table",Greedy,"Sliding Window",Sorting}
3852	Smallest Pair With Different Frequencies	smallest-pair-with-different-frequencies	Easy	{Array,"Hash Table",Counting}
3853	Merge Close Characters	merge-close-characters	Medium	{"Hash Table",String}
3854	Minimum Operations to Make Array Parity Alternating	minimum-operations-to-make-array-parity-alternating	Medium	{Array,Greedy}
3855	Sum of K-Digit Numbers in a Range	sum-of-k-digit-numbers-in-a-range	Hard	{Math,"Divide and Conquer",Combinatorics,"Number Theory"}
3856	Trim Trailing Vowels	trim-trailing-vowels	Easy	{String}
3857	Minimum Cost to Split into Ones	minimum-cost-to-split-into-ones	Medium	{Math,"Dynamic Programming"}
3858	Minimum Bitwise OR From Grid	minimum-bitwise-or-from-grid	Medium	{Array,Greedy,"Bit Manipulation",Matrix}
3859	Count Subarrays With K Distinct Integers	count-subarrays-with-k-distinct-integers	Hard	{Array,"Hash Table","Sliding Window",Counting}
3860	Unique Email Groups	unique-email-groups	Medium	{Array,"Hash Table",String}
3861	Minimum Capacity Box	minimum-capacity-box	Easy	{Array}
3862	Find the Smallest Balanced Index	find-the-smallest-balanced-index	Medium	{Array,"Prefix Sum"}
3863	Minimum Operations to Sort a String	minimum-operations-to-sort-a-string	Medium	{String}
3864	Minimum Cost to Partition a Binary String	minimum-cost-to-partition-a-binary-string	Hard	{String,"Divide and Conquer","Prefix Sum"}
3867	Sum of GCD of Formed Pairs	sum-of-gcd-of-formed-pairs	Medium	{Array,Math,"Two Pointers",Simulation,"Number Theory"}
3868	Minimum Cost to Equalize Arrays Using Swaps	minimum-cost-to-equalize-arrays-using-swaps	Medium	{Array,"Hash Table",Greedy,Counting}
3869	Count Fancy Numbers in a Range	count-fancy-numbers-in-a-range	Hard	{Math,"Dynamic Programming"}
3870	Count Commas in Range	count-commas-in-range	Easy	{Math}
3871	Count Commas in Range II	count-commas-in-range-ii	Medium	{Math}
3872	Longest Arithmetic Sequence After Changing At Most One Element	longest-arithmetic-sequence-after-changing-at-most-one-element	Medium	{Array,Enumeration}
3873	Maximum Points Activated with One Addition	maximum-points-activated-with-one-addition	Hard	{Array,"Hash Table",Union-Find}
3874	Valid Subarrays With Exactly One Peak	valid-subarrays-with-exactly-one-peak	Medium	{Array,Math}
3875	Construct Uniform Parity Array I	construct-uniform-parity-array-i	Easy	{Array,Math}
3876	Construct Uniform Parity Array II	construct-uniform-parity-array-ii	Medium	{Array,Math}
3877	Minimum Removals to Achieve Target XOR	minimum-removals-to-achieve-target-xor	Medium	{Array,"Dynamic Programming","Bit Manipulation"}
3878	Count Good Subarrays	count-good-subarrays	Hard	{Array,Stack,"Bit Manipulation","Monotonic Stack"}
3879	Maximum Distinct Path Sum in a Binary Tree	maximum-distinct-path-sum-in-a-binary-tree	Medium	{"Hash Table",Tree,"Depth-First Search","Binary Tree"}
\.


--
-- Data for Name: submissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.submissions (id, title, title_slug, submitted_at, status, language, difficulty, topics) FROM stdin;
1957060068	House Robber	house-robber	2026-03-23 11:40:50	Accepted	python	Medium	{Array,"Dynamic Programming"}
1956302544	Climbing Stairs	climbing-stairs	2026-03-22 21:12:37	Accepted	python	Easy	{Math,"Dynamic Programming",Memoization}
1956282063	Validate Binary Search Tree	validate-binary-search-tree	2026-03-22 20:41:03	Accepted	python	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
1956224116	Kth Smallest Element in a BST	kth-smallest-element-in-a-bst	2026-03-22 18:27:46	Accepted	python	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
1956216284	Minimum Absolute Difference in BST	minimum-absolute-difference-in-bst	2026-03-22 18:06:06	Accepted	python	Easy	{Tree,"Depth-First Search","Breadth-First Search","Binary Search Tree","Binary Tree"}
1955184967	Single Number II	single-number-ii	2026-03-21 17:33:54	Accepted	python	Medium	{Array,"Bit Manipulation"}
1955183332	Single Number	single-number	2026-03-21 17:28:00	Accepted	python	Easy	{Array,"Bit Manipulation"}
1954403214	Evaluate Reverse Polish Notation	evaluate-reverse-polish-notation	2026-03-20 20:31:23	Accepted	python	Medium	{Array,Math,Stack}
1954391228	Reverse Bits	reverse-bits	2026-03-20 19:59:28	Accepted	python	Easy	{"Divide and Conquer","Bit Manipulation"}
1954390522	Add Binary	add-binary	2026-03-20 19:57:31	Accepted	python	Easy	{Math,String,"Bit Manipulation",Simulation}
1954146076	Reverse Bits	reverse-bits	2026-03-20 10:26:55	Accepted	python	Easy	{"Divide and Conquer","Bit Manipulation"}
1954121098	Add Binary	add-binary	2026-03-20 10:01:34	Accepted	python	Easy	{Math,String,"Bit Manipulation",Simulation}
1952789932	Pow(x, n)	powx-n	2026-03-19 00:05:54	Accepted	python	Medium	{Math,Recursion}
1952773717	Simplify Path	simplify-path	2026-03-18 23:44:36	Accepted	python	Medium	{String,Stack}
1952574772	Sqrt(x)	sqrtx	2026-03-18 17:53:55	Accepted	python	Easy	{Math,"Binary Search"}
1952541188	Factorial Trailing Zeroes	factorial-trailing-zeroes	2026-03-18 16:02:24	Accepted	python	Medium	{Math}
1952533264	Palindrome Number	palindrome-number	2026-03-18 15:37:21	Accepted	python	Easy	{Math}
1952531340	Plus One	plus-one	2026-03-18 15:31:29	Accepted	python	Easy	{Array,Math}
1951559260	Simplify Path	simplify-path	2026-03-17 15:01:15	Accepted	python	Medium	{String,Stack}
1950536584	Valid Sudoku	valid-sudoku	2026-03-16 15:18:10	Accepted	python	Medium	{Array,"Hash Table",Matrix}
1957270069	Kth Smallest Element in a BST	kth-smallest-element-in-a-bst	2026-03-23 19:21:54	Accepted	python	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
1957267495	Remove Element	remove-element	2026-03-23 19:16:25	Accepted	python	Easy	{Array,"Two Pointers"}
1959489622	Two Sum	two-sum	2026-03-25 21:02:16	Accepted	python	Easy	{Array,"Hash Table"}
1958364476	Check If Array Pairs Are Divisible by k	check-if-array-pairs-are-divisible-by-k	2026-03-24 20:05:28	Accepted	python	Medium	{Array,"Hash Table",Counting}
1957058933	House Robber	house-robber	2026-03-23 11:39:38	Accepted	python	Medium	{Array,"Dynamic Programming"}
1956281861	Validate Binary Search Tree	validate-binary-search-tree	2026-03-22 20:40:44	Accepted	python	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
1956223998	Kth Smallest Element in a BST	kth-smallest-element-in-a-bst	2026-03-22 18:27:27	Accepted	python	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
1954120663	Add Binary	add-binary	2026-03-20 10:01:07	Accepted	python	Easy	{Math,String,"Bit Manipulation",Simulation}
1952570595	Sqrt(x)	sqrtx	2026-03-18 17:40:31	Accepted	python	Easy	{Math,"Binary Search"}
1952570048	Sqrt(x)	sqrtx	2026-03-18 17:38:57	Accepted	python	Easy	{Math,"Binary Search"}
1952537767	Factorial Trailing Zeroes	factorial-trailing-zeroes	2026-03-18 15:51:40	Accepted	python	Medium	{Math}
1952537409	Factorial Trailing Zeroes	factorial-trailing-zeroes	2026-03-18 15:50:32	Accepted	python	Medium	{Math}
1949544370	Two Sum	two-sum	2026-03-15 16:11:23	Accepted	python	Easy	{Array,"Hash Table"}
1948426773	Maximum Subarray	maximum-subarray	2026-03-14 14:53:20	Accepted	python	Medium	{Array,"Divide and Conquer","Dynamic Programming"}
1947239899	Minimum Number of Seconds to Make Mountain Height Zero	minimum-number-of-seconds-to-make-mountain-height-zero	2026-03-13 10:22:40	Accepted	python	Medium	{Array,Math,"Binary Search",Greedy,"Heap (Priority Queue)"}
1946480213	Top K Frequent Elements	top-k-frequent-elements	2026-03-12 15:09:41	Accepted	python	Medium	{Array,"Hash Table","Divide and Conquer",Sorting,"Heap (Priority Queue)","Bucket Sort",Counting,Quickselect}
1945215554	Valid Parentheses	valid-parentheses	2026-03-11 09:40:42	Accepted	python	Easy	{String,Stack}
1944236038	Valid Parentheses	valid-parentheses	2026-03-10 11:02:10	Accepted	python	Easy	{String,Stack}
1944215497	Summary Ranges	summary-ranges	2026-03-10 10:45:49	Accepted	python	Easy	{Array}
1943408548	Minimum Window Substring	minimum-window-substring	2026-03-09 18:29:53	Accepted	python	Hard	{"Hash Table",String,"Sliding Window"}
1943408119	Minimum Window Substring	minimum-window-substring	2026-03-09 18:28:50	Accepted	python	Hard	{"Hash Table",String,"Sliding Window"}
1943385669	Summary Ranges	summary-ranges	2026-03-09 17:30:46	Accepted	python	Easy	{Array}
1943175894	Summary Ranges	summary-ranges	2026-03-09 11:02:05	Accepted	python	Easy	{Array}
1943104441	Longest Consecutive Sequence	longest-consecutive-sequence	2026-03-09 10:00:26	Accepted	python	Medium	{Array,"Hash Table",Union-Find}
1942238541	Longest Consecutive Sequence	longest-consecutive-sequence	2026-03-08 12:26:38	Accepted	python	Medium	{Array,"Hash Table",Union-Find}
1941516033	Isomorphic Strings	isomorphic-strings	2026-03-07 19:45:52	Accepted	python	Easy	{"Hash Table",String}
1941504971	Isomorphic Strings	isomorphic-strings	2026-03-07 19:40:58	Accepted	python	Easy	{"Hash Table",String}
1941288685	Contains Duplicate II	contains-duplicate-ii	2026-03-07 17:51:10	Accepted	python	Easy	{Array,"Hash Table","Sliding Window"}
1941277444	Word Pattern	word-pattern	2026-03-07 17:16:39	Accepted	python	Easy	{"Hash Table",String}
1941277386	Word Pattern	word-pattern	2026-03-07 17:16:29	Accepted	python	Easy	{"Hash Table",String}
1941277288	Word Pattern	word-pattern	2026-03-07 17:16:11	Accepted	python	Easy	{"Hash Table",String}
1941262701	Valid Anagram	valid-anagram	2026-03-07 16:30:15	Accepted	python	Easy	{"Hash Table",String,Sorting}
1941193609	Ransom Note	ransom-note	2026-03-07 13:18:17	Accepted	python	Easy	{"Hash Table",String,Counting}
1940570269	3Sum	3sum	2026-03-06 23:46:48	Accepted	python	Medium	{Array,"Two Pointers",Sorting}
1940199766	Container With Most Water	container-with-most-water	2026-03-06 11:24:54	Accepted	python	Medium	{Array,"Two Pointers",Greedy}
1940195440	Two Sum II - Input Array Is Sorted	two-sum-ii-input-array-is-sorted	2026-03-06 11:18:14	Accepted	python	Medium	{Array,"Two Pointers","Binary Search"}
1940192152	Is Subsequence	is-subsequence	2026-03-06 11:13:20	Accepted	python	Easy	{"Two Pointers",String,"Dynamic Programming"}
1940191721	Is Subsequence	is-subsequence	2026-03-06 11:12:43	Accepted	python	Easy	{"Two Pointers",String,"Dynamic Programming"}
1940181980	Valid Palindrome	valid-palindrome	2026-03-06 10:59:36	Accepted	python	Easy	{"Two Pointers",String}
1940180930	Valid Palindrome	valid-palindrome	2026-03-06 10:58:10	Accepted	python	Easy	{"Two Pointers",String}
1939166123	Find the Index of the First Occurrence in a String	find-the-index-of-the-first-occurrence-in-a-string	2026-03-05 13:01:15	Accepted	python	Easy	{"Two Pointers",String,"String Matching"}
1939166037	Find the Index of the First Occurrence in a String	find-the-index-of-the-first-occurrence-in-a-string	2026-03-05 13:01:04	Accepted	python	Easy	{"Two Pointers",String,"String Matching"}
1939151621	Integer to Roman	integer-to-roman	2026-03-05 12:30:04	Accepted	python	Medium	{"Hash Table",Math,String}
1939141421	Reverse Words in a String	reverse-words-in-a-string	2026-03-05 12:10:18	Accepted	python	Medium	{"Two Pointers",String}
1939140941	Reverse Words in a String	reverse-words-in-a-string	2026-03-05 12:09:29	Accepted	python	Medium	{"Two Pointers",String}
1939137105	Longest Common Prefix	longest-common-prefix	2026-03-05 12:02:32	Accepted	python	Easy	{Array,String,Trie}
1939132946	Length of Last Word	length-of-last-word	2026-03-05 11:55:08	Accepted	python	Easy	{String}
1938170340	Longest Substring Without Repeating Characters	longest-substring-without-repeating-characters	2026-03-04 15:20:29	Accepted	python	Medium	{"Hash Table",String,"Sliding Window"}
1938169941	Longest Substring Without Repeating Characters	longest-substring-without-repeating-characters	2026-03-04 15:19:09	Accepted	python	Medium	{"Hash Table",String,"Sliding Window"}
1938166554	Minimum Size Subarray Sum	minimum-size-subarray-sum	2026-03-04 15:08:46	Accepted	python	Medium	{Array,"Binary Search","Sliding Window","Prefix Sum"}
1938133769	Minimum Size Subarray Sum	minimum-size-subarray-sum	2026-03-04 13:35:08	Accepted	python	Medium	{Array,"Binary Search","Sliding Window","Prefix Sum"}
1938133616	Minimum Size Subarray Sum	minimum-size-subarray-sum	2026-03-04 13:34:43	Accepted	python	Medium	{Array,"Binary Search","Sliding Window","Prefix Sum"}
1938132955	Minimum Size Subarray Sum	minimum-size-subarray-sum	2026-03-04 13:33:03	Accepted	python	Medium	{Array,"Binary Search","Sliding Window","Prefix Sum"}
1938075093	Top K Frequent Elements	top-k-frequent-elements	2026-03-04 11:32:45	Accepted	python	Medium	{Array,"Hash Table","Divide and Conquer",Sorting,"Heap (Priority Queue)","Bucket Sort",Counting,Quickselect}
1937074346	Subarray Sum Equals K	subarray-sum-equals-k	2026-03-03 11:11:27	Accepted	python	Medium	{Array,"Hash Table","Prefix Sum"}
1937048914	Valid Anagram	valid-anagram	2026-03-03 10:38:34	Accepted	python	Easy	{"Hash Table",String,Sorting}
1937048155	Valid Anagram	valid-anagram	2026-03-03 10:37:42	Accepted	python	Easy	{"Hash Table",String,Sorting}
1937044540	Product of Array Except Self	product-of-array-except-self	2026-03-03 10:33:33	Accepted	python	Medium	{Array,"Prefix Sum"}
1937022042	Top K Frequent Elements	top-k-frequent-elements	2026-03-03 10:11:44	Accepted	python	Medium	{Array,"Hash Table","Divide and Conquer",Sorting,"Heap (Priority Queue)","Bucket Sort",Counting,Quickselect}
1936982579	Group Anagrams	group-anagrams	2026-03-03 09:36:14	Accepted	python	Medium	{Array,"Hash Table",String,Sorting}
1936956526	Longest Substring Without Repeating Characters	longest-substring-without-repeating-characters	2026-03-03 09:13:11	Accepted	python	Medium	{"Hash Table",String,"Sliding Window"}
1936939899	Merge Sorted Array	merge-sorted-array	2026-03-03 08:58:34	Accepted	python	Easy	{Array,"Two Pointers",Sorting}
1936127227	Jump Game	jump-game	2026-03-02 14:16:29	Accepted	python	Medium	{Array,"Dynamic Programming",Greedy}
1934167664	Contains Duplicate	contains-duplicate	2026-02-28 17:00:07	Accepted	python	Easy	{Array,"Hash Table",Sorting}
1934166371	Best Time to Buy and Sell Stock	best-time-to-buy-and-sell-stock	2026-02-28 16:55:47	Accepted	python	Easy	{Array,"Dynamic Programming"}
1934151962	Valid Parentheses	valid-parentheses	2026-02-28 16:10:16	Accepted	python	Easy	{String,Stack}
1933158849	Two Sum	two-sum	2026-02-27 15:27:30	Accepted	python	Easy	{Array,"Hash Table"}
1932251987	Last Person to Fit in the Bus	last-person-to-fit-in-the-bus	2026-02-26 14:23:44	Accepted	postgresql	Medium	{Database}
1932247852	Duplicate Emails	duplicate-emails	2026-02-26 14:11:04	Accepted	postgresql	Easy	{Database}
1932245606	Rank Scores	rank-scores	2026-02-26 14:04:33	Accepted	postgresql	Medium	{Database}
1932239974	Confirmation Rate	confirmation-rate	2026-02-26 13:49:53	Accepted	postgresql	Medium	{Database}
1932228213	Second Highest Salary	second-highest-salary	2026-02-26 13:20:46	Accepted	postgresql	Medium	{Database}
1932227246	Second Highest Salary	second-highest-salary	2026-02-26 13:18:29	Accepted	postgresql	Medium	{Database}
1932222742	Employees Earning More Than Their Managers	employees-earning-more-than-their-managers	2026-02-26 13:07:26	Accepted	postgresql	Easy	{Database}
1932210563	Generate Parentheses	generate-parentheses	2026-02-26 12:39:51	Accepted	python	Medium	{String,"Dynamic Programming",Backtracking}
1932179185	Method Chaining	method-chaining	2026-02-26 11:40:40	Accepted	pythondata	Easy	{}
1932173262	Maximum Subarray	maximum-subarray	2026-02-26 11:31:18	Accepted	python	Medium	{Array,"Divide and Conquer","Dynamic Programming"}
1932161513	Valid Palindrome	valid-palindrome	2026-02-26 11:13:40	Accepted	python	Easy	{"Two Pointers",String}
1932145417	Kth Largest Element in an Array	kth-largest-element-in-an-array	2026-02-26 10:51:53	Accepted	python	Medium	{Array,"Divide and Conquer",Sorting,"Heap (Priority Queue)",Quickselect}
1931292986	Unique Number of Occurrences	unique-number-of-occurrences	2026-02-25 17:42:42	Accepted	python	Easy	{Array,"Hash Table"}
1931285808	Reverse Words in a String	reverse-words-in-a-string	2026-02-25 17:26:15	Accepted	python	Medium	{"Two Pointers",String}
1931274619	Maximum Average Subarray I	maximum-average-subarray-i	2026-02-25 16:58:33	Accepted	python	Easy	{Array,"Sliding Window"}
1931249422	Move Zeroes	move-zeroes	2026-02-25 15:50:32	Accepted	python	Easy	{Array,"Two Pointers"}
1931078042	Is Subsequence	is-subsequence	2026-02-25 10:19:11	Accepted	python	Easy	{"Two Pointers",String,"Dynamic Programming"}
1930220137	Trapping Rain Water	trapping-rain-water	2026-02-24 17:34:25	Accepted	python	Hard	{Array,"Two Pointers","Dynamic Programming",Stack,"Monotonic Stack"}
1930217291	Roman to Integer	roman-to-integer	2026-02-24 17:27:31	Accepted	python	Easy	{"Hash Table",Math,String}
1930070109	Insert Delete GetRandom O(1)	insert-delete-getrandom-o1	2026-02-24 11:38:06	Accepted	python	Medium	{Array,"Hash Table",Math,Design,Randomized}
1930045361	Container With Most Water	container-with-most-water	2026-02-24 11:04:28	Accepted	python	Medium	{Array,"Two Pointers",Greedy}
1930044988	Container With Most Water	container-with-most-water	2026-02-24 11:03:57	Accepted	python	Medium	{Array,"Two Pointers",Greedy}
1929009623	Trapping Rain Water	trapping-rain-water	2026-02-23 14:02:39	Accepted	python	Hard	{Array,"Two Pointers","Dynamic Programming",Stack,"Monotonic Stack"}
1926796791	Container With Most Water	container-with-most-water	2026-02-21 16:09:05	Accepted	python	Medium	{Array,"Two Pointers",Greedy}
1926788792	Students and Examinations	students-and-examinations	2026-02-21 15:45:33	Accepted	postgresql	Easy	{Database}
1925757856	Rising Temperature	rising-temperature	2026-02-20 12:46:54	Accepted	postgresql	Easy	{Database}
1925753591	Product Sales Analysis I	product-sales-analysis-i	2026-02-20 12:37:31	Accepted	postgresql	Easy	{Database}
1925730020	Replace Employee ID With The Unique Identifier	replace-employee-id-with-the-unique-identifier	2026-02-20 11:50:28	Accepted	postgresql	Easy	{Database}
1925702317	Invalid Tweets	invalid-tweets	2026-02-20 11:06:54	Accepted	postgresql	Easy	{Database}
1925699632	Article Views I	article-views-i	2026-02-20 11:02:50	Accepted	postgresql	Easy	{Database}
1925697135	Big Countries	big-countries	2026-02-20 10:59:22	Accepted	postgresql	Easy	{Database}
1925685127	Find Customer Referee	find-customer-referee	2026-02-20 10:43:29	Accepted	postgresql	Easy	{Database}
1925684364	Find Customer Referee	find-customer-referee	2026-02-20 10:42:27	Accepted	mysql	Easy	{Database}
1925671751	Recyclable and Low Fat Products	recyclable-and-low-fat-products	2026-02-20 10:27:53	Accepted	postgresql	Easy	{Database}
1925658240	Trapping Rain Water	trapping-rain-water	2026-02-20 10:14:57	Accepted	python	Hard	{Array,"Two Pointers","Dynamic Programming",Stack,"Monotonic Stack"}
1924825112	Maximum Subarray	maximum-subarray	2026-02-19 13:41:17	Accepted	python	Medium	{Array,"Divide and Conquer","Dynamic Programming"}
1923807936	Maximum Subarray	maximum-subarray	2026-02-18 16:29:13	Accepted	python	Medium	{Array,"Divide and Conquer","Dynamic Programming"}
1923747313	Students and Examinations	students-and-examinations	2026-02-18 13:38:12	Accepted	postgresql	Easy	{Database}
1923728834	Employee Bonus	employee-bonus	2026-02-18 12:55:29	Accepted	postgresql	Easy	{Database}
1923725433	Employee Bonus	employee-bonus	2026-02-18 12:48:48	Accepted	postgresql	Easy	{Database}
1923694109	Average Time of Process per Machine	average-time-of-process-per-machine	2026-02-18 11:52:43	Accepted	postgresql	Easy	{Database}
1923692000	Average Time of Process per Machine	average-time-of-process-per-machine	2026-02-18 11:49:21	Accepted	postgresql	Easy	{Database}
1923670374	Rising Temperature	rising-temperature	2026-02-18 11:18:19	Accepted	postgresql	Easy	{Database}
1923670136	Rising Temperature	rising-temperature	2026-02-18 11:18:01	Accepted	postgresql	Easy	{Database}
1923669998	Rising Temperature	rising-temperature	2026-02-18 11:17:50	Accepted	postgresql	Easy	{Database}
1923669778	Rising Temperature	rising-temperature	2026-02-18 11:17:32	Accepted	postgresql	Easy	{Database}
1923661908	Customer Who Visited but Did Not Make Any Transactions	customer-who-visited-but-did-not-make-any-transactions	2026-02-18 11:06:51	Accepted	postgresql	Easy	{Database}
1923661686	Customer Who Visited but Did Not Make Any Transactions	customer-who-visited-but-did-not-make-any-transactions	2026-02-18 11:06:33	Accepted	postgresql	Easy	{Database}
1923634791	Product Sales Analysis I	product-sales-analysis-i	2026-02-18 10:35:36	Accepted	postgresql	Easy	{Database}
1923620632	Replace Employee ID With The Unique Identifier	replace-employee-id-with-the-unique-identifier	2026-02-18 10:22:45	Accepted	postgresql	Easy	{Database}
1923526350	Invalid Tweets	invalid-tweets	2026-02-18 09:07:44	Accepted	postgresql	Easy	{Database}
1923526040	Invalid Tweets	invalid-tweets	2026-02-18 09:07:27	Accepted	postgresql	Easy	{Database}
1923525029	Invalid Tweets	invalid-tweets	2026-02-18 09:06:37	Accepted	postgresql	Easy	{Database}
1923515715	Article Views I	article-views-i	2026-02-18 08:59:07	Accepted	postgresql	Easy	{Database}
1923514868	Article Views I	article-views-i	2026-02-18 08:58:28	Accepted	postgresql	Easy	{Database}
1923514574	Article Views I	article-views-i	2026-02-18 08:58:13	Accepted	postgresql	Easy	{Database}
1923514250	Article Views I	article-views-i	2026-02-18 08:57:58	Accepted	postgresql	Easy	{Database}
1923446192	Big Countries	big-countries	2026-02-18 08:01:34	Accepted	postgresql	Easy	{Database}
1922691045	Find Customer Referee	find-customer-referee	2026-02-17 16:50:22	Accepted	postgresql	Easy	{Database}
1922677665	Recyclable and Low Fat Products	recyclable-and-low-fat-products	2026-02-17 16:14:30	Accepted	postgresql	Easy	{Database}
1922672267	Plus One	plus-one	2026-02-17 15:59:41	Accepted	python	Easy	{Array,Math}
1921428335	Plus One	plus-one	2026-02-16 11:03:10	Accepted	python	Easy	{Array,Math}
1920372566	Transformed Array	transformed-array	2026-02-15 11:05:25	Accepted	python	Easy	{Array,Simulation}
1917477476	Longest Repeating Character Replacement	longest-repeating-character-replacement	2026-02-12 16:13:14	Accepted	python	Medium	{"Hash Table",String,"Sliding Window"}
1917477426	Longest Repeating Character Replacement	longest-repeating-character-replacement	2026-02-12 16:13:04	Accepted	python	Medium	{"Hash Table",String,"Sliding Window"}
1917477359	Longest Repeating Character Replacement	longest-repeating-character-replacement	2026-02-12 16:12:54	Accepted	python	Medium	{"Hash Table",String,"Sliding Window"}
1917422856	Product of Array Except Self	product-of-array-except-self	2026-02-12 13:38:00	Accepted	python	Medium	{Array,"Prefix Sum"}
1916256540	Contains Duplicate	contains-duplicate	2026-02-11 11:44:09	Accepted	python	Easy	{Array,"Hash Table",Sorting}
1914981156	Max Consecutive Ones	max-consecutive-ones	2026-02-10 09:49:54	Accepted	python	Easy	{Array}
1914980856	Max Consecutive Ones	max-consecutive-ones	2026-02-10 09:49:40	Accepted	python	Easy	{Array}
1912939966	Group Anagrams	group-anagrams	2026-02-08 16:39:05	Accepted	python	Medium	{Array,"Hash Table",String,Sorting}
1911749820	Transformed Array	transformed-array	2026-02-07 15:00:42	Accepted	python	Easy	{Array,Simulation}
1909547759	Transformed Array	transformed-array	2026-02-05 11:41:39	Accepted	python	Easy	{Array,Simulation}
1909497693	Group Anagrams	group-anagrams	2026-02-05 10:41:08	Accepted	python	Medium	{Array,"Hash Table",String,Sorting}
1908434565	Longest Common Prefix	longest-common-prefix	2026-02-04 12:47:30	Accepted	python	Easy	{Array,String,Trie}
1908433424	Longest Common Prefix	longest-common-prefix	2026-02-04 12:45:26	Accepted	python	Easy	{Array,String,Trie}
1908432224	Longest Common Prefix	longest-common-prefix	2026-02-04 12:43:18	Accepted	python	Easy	{Array,String,Trie}
1907270062	Median of Two Sorted Arrays	median-of-two-sorted-arrays	2026-02-03 13:35:22	Accepted	python	Hard	{Array,"Binary Search","Divide and Conquer"}
1906025560	Squares of a Sorted Array	squares-of-a-sorted-array	2026-02-02 14:54:59	Accepted	python	Easy	{Array,"Two Pointers",Sorting}
1906014915	Two Sum II - Input Array Is Sorted	two-sum-ii-input-array-is-sorted	2026-02-02 14:27:29	Accepted	python	Medium	{Array,"Two Pointers","Binary Search"}
1904826880	Longest Consecutive Sequence	longest-consecutive-sequence	2026-02-01 13:43:05	Accepted	python	Medium	{Array,"Hash Table",Union-Find}
1903643431	Group Anagrams	group-anagrams	2026-01-31 14:29:02	Accepted	python	Medium	{Array,"Hash Table",String,Sorting}
1902460656	Concatenation of Array	concatenation-of-array	2026-01-30 15:32:58	Accepted	python	Easy	{Array,Simulation}
1900409365	Contains Duplicate	contains-duplicate	2026-01-28 18:41:09	Accepted	python	Easy	{Array,"Hash Table",Sorting}
1900403129	Group Anagrams	group-anagrams	2026-01-28 18:28:54	Accepted	python	Medium	{Array,"Hash Table",String,Sorting}
1900268850	Max Consecutive Ones	max-consecutive-ones	2026-01-28 12:48:49	Accepted	python	Easy	{Array}
1900260962	Shuffle the Array	shuffle-the-array	2026-01-28 12:33:46	Accepted	python	Easy	{Array}
1899263189	Max Consecutive Ones	max-consecutive-ones	2026-01-27 18:39:30	Accepted	python	Easy	{Array}
1899247771	Shuffle the Array	shuffle-the-array	2026-01-27 18:08:25	Accepted	python	Easy	{Array}
1899163839	Min Stack	min-stack	2026-01-27 14:38:46	Accepted	python	Medium	{Stack,Design}
1899160298	Valid Parentheses	valid-parentheses	2026-01-27 14:30:00	Accepted	python	Easy	{String,Stack}
1899147764	Concatenation of Array	concatenation-of-array	2026-01-27 13:59:09	Accepted	python	Easy	{Array,Simulation}
1899143605	Remove Element	remove-element	2026-01-27 13:49:53	Accepted	python	Easy	{Array,"Two Pointers"}
1899139100	Remove Duplicates from Sorted Array	remove-duplicates-from-sorted-array	2026-01-27 13:40:18	Accepted	python	Easy	{Array,"Two Pointers"}
1898094032	Valid Sudoku	valid-sudoku	2026-01-26 13:40:18	Accepted	python	Medium	{Array,"Hash Table",Matrix}
1898093400	Valid Sudoku	valid-sudoku	2026-01-26 13:38:56	Accepted	python	Medium	{Array,"Hash Table",Matrix}
1898045855	Longest Consecutive Sequence	longest-consecutive-sequence	2026-01-26 12:13:16	Accepted	python	Medium	{Array,"Hash Table",Union-Find}
1897984620	Minimum Absolute Difference	minimum-absolute-difference	2026-01-26 10:51:21	Accepted	python	Easy	{Array,Sorting}
1897984416	Minimum Absolute Difference	minimum-absolute-difference	2026-01-26 10:51:09	Accepted	python	Easy	{Array,Sorting}
1897983568	Minimum Absolute Difference	minimum-absolute-difference	2026-01-26 10:50:11	Accepted	python	Easy	{Array,Sorting}
1897038182	Longest Substring Without Repeating Characters	longest-substring-without-repeating-characters	2026-01-25 17:26:49	Accepted	python	Medium	{"Hash Table",String,"Sliding Window"}
1896996597	Longest Substring Without Repeating Characters	longest-substring-without-repeating-characters	2026-01-25 15:44:08	Accepted	python	Medium	{"Hash Table",String,"Sliding Window"}
1894711059	Move Zeroes	move-zeroes	2026-01-23 11:47:49	Accepted	python	Easy	{Array,"Two Pointers"}
1894679004	Remove Duplicates from Sorted Array	remove-duplicates-from-sorted-array	2026-01-23 11:01:23	Accepted	python	Easy	{Array,"Two Pointers"}
1894663420	Valid Palindrome	valid-palindrome	2026-01-23 10:42:24	Accepted	python	Easy	{"Two Pointers",String}
1894632905	Best Time to Buy and Sell Stock	best-time-to-buy-and-sell-stock	2026-01-23 10:13:17	Accepted	python	Easy	{Array,"Dynamic Programming"}
1894582887	Intersection of Two Arrays II	intersection-of-two-arrays-ii	2026-01-23 09:29:10	Accepted	python	Easy	{Array,"Hash Table","Two Pointers","Binary Search",Sorting}
1894552003	Find All Numbers Disappeared in an Array	find-all-numbers-disappeared-in-an-array	2026-01-23 09:01:55	Accepted	python	Easy	{Array,"Hash Table"}
1893919013	Single Number	single-number	2026-01-22 20:21:01	Accepted	python	Easy	{Array,"Bit Manipulation"}
1893906727	Intersection of Two Arrays	intersection-of-two-arrays	2026-01-22 20:04:42	Accepted	python	Easy	{Array,"Hash Table","Two Pointers","Binary Search",Sorting}
1893896107	Jump Game	jump-game	2026-01-22 19:49:21	Accepted	python	Medium	{Array,"Dynamic Programming",Greedy}
1893814035	First Unique Character in a String	first-unique-character-in-a-string	2026-01-22 16:47:54	Accepted	python	Easy	{"Hash Table",String,Queue,Counting}
1893795648	Majority Element	majority-element	2026-01-22 15:55:12	Accepted	python	Easy	{Array,"Hash Table","Divide and Conquer",Sorting,Counting}
1893793111	Valid Anagram	valid-anagram	2026-01-22 15:47:08	Accepted	python	Easy	{"Hash Table",String,Sorting}
1893788522	Two Sum	two-sum	2026-01-22 15:32:33	Accepted	python	Easy	{Array,"Hash Table"}
1893781957	Contains Duplicate	contains-duplicate	2026-01-22 15:11:37	Accepted	python	Easy	{Array,"Hash Table",Sorting}
1886214677	Group Anagrams	group-anagrams	2026-01-15 12:11:22	Accepted	python	Medium	{Array,"Hash Table",String,Sorting}
1886194359	Two Sum	two-sum	2026-01-15 11:39:27	Accepted	python	Easy	{Array,"Hash Table"}
1886161834	Valid Anagram	valid-anagram	2026-01-15 10:56:00	Accepted	python	Easy	{"Hash Table",String,Sorting}
1886158496	Valid Anagram	valid-anagram	2026-01-15 10:51:56	Accepted	python	Easy	{"Hash Table",String,Sorting}
1886143100	Contains Duplicate	contains-duplicate	2026-01-15 10:34:25	Accepted	python	Easy	{Array,"Hash Table",Sorting}
1885322932	H-Index	h-index	2026-01-14 16:21:05	Accepted	python	Medium	{Array,Sorting,"Counting Sort"}
1885244823	Jump Game II	jump-game-ii	2026-01-14 12:59:27	Accepted	python	Medium	{Array,"Dynamic Programming",Greedy}
1885229380	Best Time to Buy and Sell Stock II	best-time-to-buy-and-sell-stock-ii	2026-01-14 12:28:48	Accepted	python	Medium	{Array,"Dynamic Programming",Greedy}
1885219516	Jump Game	jump-game	2026-01-14 12:11:35	Accepted	python	Medium	{Array,"Dynamic Programming",Greedy}
1884348037	Jump Game	jump-game	2026-01-13 16:40:24	Accepted	python	Medium	{Array,"Dynamic Programming",Greedy}
1884239559	Best Time to Buy and Sell Stock	best-time-to-buy-and-sell-stock	2026-01-13 12:24:36	Accepted	python	Easy	{Array,"Dynamic Programming"}
1884202818	Rotate Array	rotate-array	2026-01-13 11:30:26	Accepted	python	Medium	{Array,Math,"Two Pointers"}
1884159518	Majority Element	majority-element	2026-01-13 10:38:14	Accepted	python	Easy	{Array,"Hash Table","Divide and Conquer",Sorting,Counting}
1884152865	Remove Duplicates from Sorted Array II	remove-duplicates-from-sorted-array-ii	2026-01-13 10:31:28	Accepted	python	Medium	{Array,"Two Pointers"}
1884126198	Remove Duplicates from Sorted Array	remove-duplicates-from-sorted-array	2026-01-13 10:09:02	Accepted	python	Easy	{Array,"Two Pointers"}
1883223379	Remove Duplicates from Sorted Array	remove-duplicates-from-sorted-array	2026-01-12 12:50:24	Accepted	python	Easy	{Array,"Two Pointers"}
1883190861	Remove Element	remove-element	2026-01-12 11:52:48	Accepted	python	Easy	{Array,"Two Pointers"}
1883187571	Merge Sorted Array	merge-sorted-array	2026-01-12 11:47:40	Accepted	python	Easy	{Array,"Two Pointers",Sorting}
1883183429	Single Number II	single-number-ii	2026-01-12 11:41:18	Accepted	python	Medium	{Array,"Bit Manipulation"}
1883181139	Single Number	single-number	2026-01-12 11:37:56	Accepted	python	Easy	{Array,"Bit Manipulation"}
1883175253	Validate Binary Search Tree	validate-binary-search-tree	2026-01-12 11:29:32	Accepted	python	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
1883127390	Kth Smallest Element in a BST	kth-smallest-element-in-a-bst	2026-01-12 10:31:32	Accepted	python	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
1883112217	Binary Tree Inorder Traversal	binary-tree-inorder-traversal	2026-01-12 10:18:18	Accepted	python	Easy	{Stack,Tree,"Depth-First Search","Binary Tree"}
1880279740	Rotate Array	rotate-array	2026-01-09 18:31:49	Accepted	python	Medium	{Array,Math,"Two Pointers"}
1880267051	Majority Element	majority-element	2026-01-09 17:51:57	Accepted	python	Easy	{Array,"Hash Table","Divide and Conquer",Sorting,Counting}
1880264686	Remove Duplicates from Sorted Array II	remove-duplicates-from-sorted-array-ii	2026-01-09 17:44:17	Accepted	python	Medium	{Array,"Two Pointers"}
1880259873	Remove Duplicates from Sorted Array	remove-duplicates-from-sorted-array	2026-01-09 17:28:44	Accepted	python	Easy	{Array,"Two Pointers"}
1880253455	Remove Element	remove-element	2026-01-09 17:07:46	Accepted	python	Easy	{Array,"Two Pointers"}
1880249739	Merge Sorted Array	merge-sorted-array	2026-01-09 16:55:42	Accepted	python	Easy	{Array,"Two Pointers",Sorting}
1880148348	Single Number II	single-number-ii	2026-01-09 12:20:14	Accepted	python	Medium	{Array,"Bit Manipulation"}
1880133605	Single Number	single-number	2026-01-09 11:54:05	Accepted	python	Easy	{Array,"Bit Manipulation"}
1880123821	Binary Tree Paths	binary-tree-paths	2026-01-09 11:38:11	Accepted	python3	Easy	{String,Backtracking,Tree,"Depth-First Search","Binary Tree"}
1880102618	Validate Binary Search Tree	validate-binary-search-tree	2026-01-09 11:07:00	Accepted	python3	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
1880101926	Validate Binary Search Tree	validate-binary-search-tree	2026-01-09 11:05:59	Accepted	python3	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
1880087678	Kth Smallest Element in a BST	kth-smallest-element-in-a-bst	2026-01-09 10:47:21	Accepted	python3	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
1880080737	Binary Tree Inorder Traversal	binary-tree-inorder-traversal	2026-01-09 10:38:50	Accepted	python3	Easy	{Stack,Tree,"Depth-First Search","Binary Tree"}
1879216216	Validate Binary Search Tree	validate-binary-search-tree	2026-01-08 14:36:32	Accepted	python	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
1879208515	Validate Binary Search Tree	validate-binary-search-tree	2026-01-08 14:16:23	Accepted	python	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
1879188996	Kth Smallest Element in a BST	kth-smallest-element-in-a-bst	2026-01-08 13:27:48	Accepted	python	Medium	{Tree,"Depth-First Search","Binary Search Tree","Binary Tree"}
1879184109	Binary Tree Inorder Traversal	binary-tree-inorder-traversal	2026-01-08 13:16:56	Accepted	python	Easy	{Stack,Tree,"Depth-First Search","Binary Tree"}
1879161146	Binary Tree Inorder Traversal	binary-tree-inorder-traversal	2026-01-08 12:29:19	Accepted	python	Easy	{Stack,Tree,"Depth-First Search","Binary Tree"}
1879158017	Binary Tree Inorder Traversal	binary-tree-inorder-traversal	2026-01-08 12:23:34	Accepted	python	Easy	{Stack,Tree,"Depth-First Search","Binary Tree"}
1878030147	Remove Duplicates from Sorted Array II	remove-duplicates-from-sorted-array-ii	2026-01-07 11:39:51	Accepted	python	Medium	{Array,"Two Pointers"}
1878027145	Remove Duplicates from Sorted Array	remove-duplicates-from-sorted-array	2026-01-07 11:35:34	Accepted	python	Easy	{Array,"Two Pointers"}
1878006858	Move Zeroes	move-zeroes	2026-01-07 11:08:58	Accepted	python	Easy	{Array,"Two Pointers"}
1877986254	Merge Sorted Array	merge-sorted-array	2026-01-07 10:45:51	Accepted	python	Easy	{Array,"Two Pointers",Sorting}
1877946126	Remove Duplicates from Sorted Array	remove-duplicates-from-sorted-array	2026-01-07 10:10:58	Accepted	python	Easy	{Array,"Two Pointers"}
1877062114	Assign Cookies	assign-cookies	2026-01-06 18:18:15	Accepted	python	Easy	{Array,"Two Pointers",Greedy,Sorting}
1877045737	Find All Numbers Disappeared in an Array	find-all-numbers-disappeared-in-an-array	2026-01-06 17:43:50	Accepted	python	Easy	{Array,"Hash Table"}
1877041154	Remove Duplicates from Sorted Array II	remove-duplicates-from-sorted-array-ii	2026-01-06 17:33:24	Accepted	python	Medium	{Array,"Two Pointers"}
1875782594	Move Zeroes	move-zeroes	2026-01-05 13:34:35	Accepted	python	Easy	{Array,"Two Pointers"}
1875761950	Move Zeroes	move-zeroes	2026-01-05 12:51:06	Accepted	python	Easy	{Array,"Two Pointers"}
1875745303	Move Zeroes	move-zeroes	2026-01-05 12:20:37	Accepted	python	Easy	{Array,"Two Pointers"}
1875704465	Squares of a Sorted Array	squares-of-a-sorted-array	2026-01-05 11:18:25	Accepted	python	Easy	{Array,"Two Pointers",Sorting}
1875701278	Squares of a Sorted Array	squares-of-a-sorted-array	2026-01-05 11:14:08	Accepted	python	Easy	{Array,"Two Pointers",Sorting}
1875678562	Squares of a Sorted Array	squares-of-a-sorted-array	2026-01-05 10:46:31	Accepted	python	Easy	{Array,"Two Pointers",Sorting}
1875677192	Squares of a Sorted Array	squares-of-a-sorted-array	2026-01-05 10:44:58	Accepted	python	Easy	{Array,"Two Pointers",Sorting}
1875649405	Find Numbers with Even Number of Digits	find-numbers-with-even-number-of-digits	2026-01-05 10:18:25	Accepted	python	Easy	{Array,Math}
1875638386	Count Negative Numbers in a Sorted Matrix	count-negative-numbers-in-a-sorted-matrix	2026-01-05 10:08:54	Accepted	python	Easy	{Array,"Binary Search",Matrix}
1875618782	Keyboard Row	keyboard-row	2026-01-05 09:52:55	Accepted	python	Easy	{Array,"Hash Table",String}
1873900993	Remove Duplicates from Sorted Array	remove-duplicates-from-sorted-array	2026-01-03 22:49:29	Accepted	python	Easy	{Array,"Two Pointers"}
1873847062	Pow(x, n)	powx-n	2026-01-03 21:53:39	Accepted	python	Medium	{Math,Recursion}
1873714027	Baseball Game	baseball-game	2026-01-03 19:29:20	Accepted	python	Easy	{Array,Stack,Simulation}
1873693819	Contains Duplicate	contains-duplicate	2026-01-03 18:11:05	Accepted	python	Easy	{Array,"Hash Table",Sorting}
1873691903	Two Sum	two-sum	2026-01-03 18:06:40	Accepted	python	Easy	{Array,"Hash Table"}
1844581655	Two Sum	two-sum	2025-12-01 17:12:11	Accepted	python	Easy	{Array,"Hash Table"}
1779580659	Power of Three	power-of-three	2025-09-22 15:33:51	Accepted	python	Easy	{Math,Recursion}
1779574608	Length of Last Word	length-of-last-word	2025-09-22 15:18:35	Accepted	python	Easy	{String}
1779568827	Count Elements With Maximum Frequency	count-elements-with-maximum-frequency	2025-09-22 15:04:15	Accepted	python	Easy	{Array,"Hash Table",Counting}
1776456529	Two Sum II - Input Array Is Sorted	two-sum-ii-input-array-is-sorted	2025-09-19 13:33:29	Accepted	python	Medium	{Array,"Two Pointers","Binary Search"}
1775514618	Kids With the Greatest Number of Candies	kids-with-the-greatest-number-of-candies	2025-09-18 16:50:32	Accepted	python	Easy	{Array}
1775514533	Two Sum II - Input Array Is Sorted	two-sum-ii-input-array-is-sorted	2025-09-18 16:50:16	Accepted	python	Medium	{Array,"Two Pointers","Binary Search"}
1774286219	Reverse Linked List	reverse-linked-list	2025-09-17 12:31:15	Accepted	python	Easy	{"Linked List",Recursion}
1774276369	Binary Search	binary-search	2025-09-17 12:18:55	Accepted	python	Easy	{Array,"Binary Search"}
1774208887	Two Sum II - Input Array Is Sorted	two-sum-ii-input-array-is-sorted	2025-09-17 11:10:40	Accepted	python	Medium	{Array,"Two Pointers","Binary Search"}
1774185850	Median of Two Sorted Arrays	median-of-two-sorted-arrays	2025-09-17 10:51:44	Accepted	python	Hard	{Array,"Binary Search","Divide and Conquer"}
1774185629	Median of Two Sorted Arrays	median-of-two-sorted-arrays	2025-09-17 10:51:32	Accepted	python	Hard	{Array,"Binary Search","Divide and Conquer"}
1772237722	3Sum	3sum	2025-09-15 20:19:11	Accepted	python	Medium	{Array,"Two Pointers",Sorting}
1772214530	Two Sum II - Input Array Is Sorted	two-sum-ii-input-array-is-sorted	2025-09-15 19:39:04	Accepted	python	Medium	{Array,"Two Pointers","Binary Search"}
1772191524	Valid Palindrome	valid-palindrome	2025-09-15 18:56:18	Accepted	python	Easy	{"Two Pointers",String}
1772172272	Median of Two Sorted Arrays	median-of-two-sorted-arrays	2025-09-15 18:17:29	Accepted	python	Hard	{Array,"Binary Search","Divide and Conquer"}
1772136120	Reverse Vowels of a String	reverse-vowels-of-a-string	2025-09-15 16:52:58	Accepted	python	Easy	{"Two Pointers",String}
1772125355	Kids With the Greatest Number of Candies	kids-with-the-greatest-number-of-candies	2025-09-15 16:23:52	Accepted	python	Easy	{Array}
1772036212	Greatest Common Divisor of Strings	greatest-common-divisor-of-strings	2025-09-15 13:12:08	Accepted	python	Easy	{Math,String}
1772020903	Merge Strings Alternately	merge-strings-alternately	2025-09-15 12:50:16	Accepted	python	Easy	{"Two Pointers",String}
1772010726	Find the Highest Altitude	find-the-highest-altitude	2025-09-15 12:36:25	Accepted	python	Easy	{Array,"Prefix Sum"}
1771997542	Determine if Two Strings Are Close	determine-if-two-strings-are-close	2025-09-15 12:19:49	Accepted	python	Medium	{"Hash Table",String,Sorting,Counting}
1771971393	Guess Number Higher or Lower	guess-number-higher-or-lower	2025-09-15 11:50:13	Accepted	python	Easy	{"Binary Search",Interactive}
1771877500	Maximum Number of Words You Can Type	maximum-number-of-words-you-can-type	2025-09-15 10:31:21	Accepted	python	Easy	{"Hash Table",String}
1771868796	Majority Element	majority-element	2025-09-15 10:24:47	Accepted	python	Easy	{Array,"Hash Table","Divide and Conquer",Sorting,Counting}
1771191085	Valid Word	valid-word	2025-09-14 22:16:02	Accepted	python	Easy	{String}
1762980077	Find N Unique Integers Sum up to Zero	find-n-unique-integers-sum-up-to-zero	2025-09-07 11:10:23	Accepted	python	Easy	{Array,Math}
1761540953	Majority Element	majority-element	2025-09-06 07:09:36	Accepted	python	Easy	{Array,"Hash Table","Divide and Conquer",Sorting,Counting}
1760959550	Roman to Integer	roman-to-integer	2025-09-05 16:30:24	Accepted	python	Easy	{"Hash Table",Math,String}
1760953137	Minimum Operations to Make the Integer Zero	minimum-operations-to-make-the-integer-zero	2025-09-05 16:08:56	Accepted	python	Medium	{"Bit Manipulation",Brainteaser,Enumeration}
1759746338	Find Closest Person	find-closest-person	2025-09-04 11:51:38	Accepted	python	Easy	{Math}
1758764956	Group Anagrams	group-anagrams	2025-09-03 16:40:41	Accepted	python	Medium	{Array,"Hash Table",String,Sorting}
1757707685	Product of Array Except Self	product-of-array-except-self	2025-09-02 19:47:55	Accepted	python	Medium	{Array,"Prefix Sum"}
1757686843	Concatenation of Array	concatenation-of-array	2025-09-02 19:08:42	Accepted	python	Easy	{Array,Simulation}
1757625316	Concatenation of Array	concatenation-of-array	2025-09-02 16:44:56	Accepted	python	Easy	{Array,Simulation}
1757594486	Longest Consecutive Sequence	longest-consecutive-sequence	2025-09-02 15:23:29	Accepted	python	Medium	{Array,"Hash Table",Union-Find}
1757570888	Range Sum Query - Immutable	range-sum-query-immutable	2025-09-02 14:31:04	Accepted	python	Easy	{Array,Design,"Prefix Sum"}
1757566139	Range Sum Query - Immutable	range-sum-query-immutable	2025-09-02 14:21:26	Accepted	python	Easy	{Array,Design,"Prefix Sum"}
1757405115	Find Pivot Index	find-pivot-index	2025-09-02 11:10:31	Accepted	python	Easy	{Array,"Prefix Sum"}
1757401236	Find Pivot Index	find-pivot-index	2025-09-02 11:07:42	Accepted	python	Easy	{Array,"Prefix Sum"}
1757345526	Range Sum Query - Immutable	range-sum-query-immutable	2025-09-02 10:27:56	Accepted	python	Easy	{Array,Design,"Prefix Sum"}
1747101241	Remove Element	remove-element	2025-08-24 14:31:33	Accepted	python	Easy	{Array,"Two Pointers"}
1744847116	Remove Element	remove-element	2025-08-22 15:57:52	Accepted	python	Easy	{Array,"Two Pointers"}
1742637467	Reverse Linked List	reverse-linked-list	2025-08-20 17:21:21	Accepted	python	Easy	{"Linked List",Recursion}
1742609785	Linked List Cycle	linked-list-cycle	2025-08-20 16:05:28	Accepted	python	Easy	{"Hash Table","Linked List","Two Pointers"}
1742590783	Remove Nth Node From End of List	remove-nth-node-from-end-of-list	2025-08-20 15:16:45	Accepted	python	Medium	{"Linked List","Two Pointers"}
1742582952	Merge Two Sorted Lists	merge-two-sorted-lists	2025-08-20 14:59:14	Accepted	python	Easy	{"Linked List",Recursion}
1742559948	Valid Anagram	valid-anagram	2025-08-20 14:11:46	Accepted	python	Easy	{"Hash Table",String,Sorting}
1742537236	Reverse Linked List	reverse-linked-list	2025-08-20 13:33:27	Accepted	python	Easy	{"Linked List",Recursion}
1741538972	Remove Duplicates from Sorted Array	remove-duplicates-from-sorted-array	2025-08-19 19:52:07	Accepted	python	Easy	{Array,"Two Pointers"}
1741506269	Palindrome Number	palindrome-number	2025-08-19 18:51:03	Accepted	python	Easy	{Math}
1741457788	Find the Difference of Two Arrays	find-the-difference-of-two-arrays	2025-08-19 16:59:49	Accepted	python	Easy	{Array,"Hash Table"}
1741331530	Unique Number of Occurrences	unique-number-of-occurrences	2025-08-19 12:48:01	Accepted	python	Easy	{Array,"Hash Table"}
1740191006	Dota2 Senate	dota2-senate	2025-08-18 16:07:40	Accepted	python	Medium	{String,Greedy,Queue}
1740165175	Baseball Game	baseball-game	2025-08-18 15:03:03	Accepted	python	Easy	{Array,Stack,Simulation}
1740135589	Number of Recent Calls	number-of-recent-calls	2025-08-18 14:03:36	Accepted	python	Easy	{Design,Queue,"Data Stream"}
1740119913	Minimum Remove to Make Valid Parentheses	minimum-remove-to-make-valid-parentheses	2025-08-18 13:37:54	Accepted	python	Medium	{String,Stack}
1740117339	Minimum Remove to Make Valid Parentheses	minimum-remove-to-make-valid-parentheses	2025-08-18 13:34:03	Accepted	python	Medium	{String,Stack}
1740086822	Remove All Adjacent Duplicates In String	remove-all-adjacent-duplicates-in-string	2025-08-18 12:50:51	Accepted	python	Easy	{String,Stack}
1740058295	Backspace String Compare	backspace-string-compare	2025-08-18 12:16:59	Accepted	python	Easy	{"Two Pointers",String,Stack,Simulation}
1739956535	Two Sum	two-sum	2025-08-18 10:50:02	Accepted	python	Easy	{Array,"Hash Table"}
1739940535	Valid Parentheses	valid-parentheses	2025-08-18 10:38:29	Accepted	python	Easy	{String,Stack}
1739929624	Valid Parentheses	valid-parentheses	2025-08-18 10:30:30	Accepted	python	Easy	{String,Stack}
1739915140	Top K Frequent Elements	top-k-frequent-elements	2025-08-18 10:19:51	Accepted	python	Medium	{Array,"Hash Table","Divide and Conquer",Sorting,"Heap (Priority Queue)","Bucket Sort",Counting,Quickselect}
1739878737	Find the Difference of Two Arrays	find-the-difference-of-two-arrays	2025-08-18 09:52:43	Accepted	python	Easy	{Array,"Hash Table"}
1739866016	Unique Number of Occurrences	unique-number-of-occurrences	2025-08-18 09:43:05	Accepted	python	Easy	{Array,"Hash Table"}
1739082825	First Unique Character in a String	first-unique-character-in-a-string	2025-08-17 17:54:52	Accepted	python	Easy	{"Hash Table",String,Queue,Counting}
1739039392	Contains Duplicate	contains-duplicate	2025-08-17 15:58:56	Accepted	python	Easy	{Array,"Hash Table",Sorting}
1739000100	Happy Number	happy-number	2025-08-17 14:25:05	Accepted	python	Easy	{"Hash Table",Math,"Two Pointers"}
1738995361	Group Anagrams	group-anagrams	2025-08-17 14:15:43	Accepted	python	Medium	{Array,"Hash Table",String,Sorting}
1737733192	Valid Parentheses	valid-parentheses	2025-08-16 11:49:50	Accepted	python	Easy	{String,Stack}
1737728591	Valid Parentheses	valid-parentheses	2025-08-16 11:44:32	Accepted	python	Easy	{String,Stack}
1737582314	Find the Difference of Two Arrays	find-the-difference-of-two-arrays	2025-08-16 09:31:32	Accepted	python	Easy	{Array,"Hash Table"}
1737575310	Find the Difference of Two Arrays	find-the-difference-of-two-arrays	2025-08-16 09:25:09	Accepted	python	Easy	{Array,"Hash Table"}
1737539554	Unique Number of Occurrences	unique-number-of-occurrences	2025-08-16 08:56:23	Accepted	python	Easy	{Array,"Hash Table"}
1737509537	Unique Number of Occurrences	unique-number-of-occurrences	2025-08-16 08:39:09	Accepted	python	Easy	{Array,"Hash Table"}
1736677726	Top K Frequent Elements	top-k-frequent-elements	2025-08-15 16:29:51	Accepted	python	Medium	{Array,"Hash Table","Divide and Conquer",Sorting,"Heap (Priority Queue)","Bucket Sort",Counting,Quickselect}
1736640661	Group Anagrams	group-anagrams	2025-08-15 14:49:09	Accepted	python	Medium	{Array,"Hash Table",String,Sorting}
1736634332	First Unique Character in a String	first-unique-character-in-a-string	2025-08-15 14:35:30	Accepted	python	Easy	{"Hash Table",String,Queue,Counting}
1736624139	Contains Duplicate	contains-duplicate	2025-08-15 14:15:10	Accepted	python	Easy	{Array,"Hash Table",Sorting}
1736620766	Happy Number	happy-number	2025-08-15 14:08:54	Accepted	python	Easy	{"Hash Table",Math,"Two Pointers"}
1736607793	Two Sum	two-sum	2025-08-15 13:45:54	Accepted	python	Easy	{Array,"Hash Table"}
1735490349	Group Anagrams	group-anagrams	2025-08-14 17:43:45	Accepted	python	Medium	{Array,"Hash Table",String,Sorting}
1735485680	First Unique Character in a String	first-unique-character-in-a-string	2025-08-14 17:31:28	Accepted	python	Easy	{"Hash Table",String,Queue,Counting}
1735483437	Two Sum	two-sum	2025-08-14 17:25:41	Accepted	python	Easy	{Array,"Hash Table"}
1735481479	Contains Duplicate	contains-duplicate	2025-08-14 17:20:37	Accepted	python	Easy	{Array,"Hash Table",Sorting}
1735477242	Happy Number	happy-number	2025-08-14 17:10:27	Accepted	python	Easy	{"Hash Table",Math,"Two Pointers"}
1734402317	Group Anagrams	group-anagrams	2025-08-13 19:38:09	Accepted	python	Medium	{Array,"Hash Table",String,Sorting}
1734339321	First Unique Character in a String	first-unique-character-in-a-string	2025-08-13 17:24:25	Accepted	python	Easy	{"Hash Table",String,Queue,Counting}
1734336753	Contains Duplicate	contains-duplicate	2025-08-13 17:18:36	Accepted	python	Easy	{Array,"Hash Table",Sorting}
1734330451	Two Sum	two-sum	2025-08-13 17:03:16	Accepted	python	Easy	{Array,"Hash Table"}
1734301893	Happy Number	happy-number	2025-08-13 15:45:08	Accepted	python	Easy	{"Hash Table",Math,"Two Pointers"}
1734286884	Contains Duplicate	contains-duplicate	2025-08-13 15:08:22	Accepted	python	Easy	{Array,"Hash Table",Sorting}
1734273072	Two Sum	two-sum	2025-08-13 14:38:18	Accepted	python	Easy	{Array,"Hash Table"}
1734236399	First Unique Character in a String	first-unique-character-in-a-string	2025-08-13 13:30:36	Accepted	python	Easy	{"Hash Table",String,Queue,Counting}
1960521039	Number of 1 Bits	number-of-1-bits	2026-03-26 21:19:40	Accepted	python	Easy	{"Divide and Conquer","Bit Manipulation"}
\.


--
-- Name: problems problems_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.problems
    ADD CONSTRAINT problems_pkey PRIMARY KEY (id);


--
-- Name: submissions submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict gUIh9jGklpaYuERNDuUq3NAWudF3rBzArVCLmjDyHjWUD892afvW4JH6Y9tAM1c

