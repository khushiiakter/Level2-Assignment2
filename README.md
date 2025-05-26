
## 1. What is PostgreSQL?

**PostgreSQL** হচ্ছে একটি **Open Source Object-Relational Database Management System (RDBMS)**।

Database Management System (DBMS) হলো একটি সফটওয়্যার, যা আমরা আমাদের কম্পিউটারে ইনস্টল করে নিজস্ব ডাটাবেস সার্ভার তৈরি করতে পারি।  
**PostgreSQL** ডাটাবেসের **Relational Model** এর ওপর ভিত্তি করে তৈরি। এখানে আমরা **SQL (Structured Query Language)** ব্যবহার করে কমিউনিকেশন করতে পারি।

---

### PostgreSQL কেন ব্যবহার করবো?

### 1. Open Source (ওপেন সোর্স)
PostgreSQL সম্পূর্ণ ফ্রি এবং ওপেন সোর্স। আমরা এটি বিনামূল্যে ব্যবহার করতে পারি এবং প্রয়োজন অনুযায়ী কাস্টমাইজও করতে পারি।

### 2. RDBMS (রিলেশনাল ডেটাবেস ম্যানেজমেন্ট সিস্টেম)
এটি একটি টেবিল-ভিত্তিক ডেটাবেস সিস্টেম, যা SQL ব্যবহার করে ডেটা সংরক্ষণ ও পরিচালনা করে।

### 3. Modern (আধুনিক প্রযুক্তি সমৃদ্ধ)
PostgreSQL আধুনিক সফটওয়্যার আর্কিটেকচারের সাথে সামঞ্জস্যপূর্ণ এবং নিয়মিত আপডেট ও নতুন ফিচার সরবরাহ করে।

### 4. ACID Compliance
এটি **ACID (Atomicity, Consistency, Isolation, Durability)** নীতিমালা অনুসরণ করে, যা ডেটা লেনদেনকে নিরাপদ ও নির্ভরযোগ্য করে তোলে।

### 5. Advanced Data Types
এটি JSON, XML, Array, Hstore ইত্যাদি উন্নত ডেটা টাইপ সাপোর্ট করে।

### 6. Scalability (স্কেলযোগ্যতা)
PostgreSQL ছোট থেকে বড় যেকোনো অ্যাপ্লিকেশনের জন্য ব্যবহৃত হতে পারে।

### 7. Indexing (ইনডেক্সিং)
B-Tree, Hash, GIN, GiST ইত্যাদি ইনডেক্সিং প্রযুক্তি ব্যবহারে Query-এর পারফর্মেন্স বৃদ্ধি পায়।

### 8. Community Support
PostgreSQL-এর একটি সক্রিয় ও সহায়ক কমিউনিটি রয়েছে, যেখান থেকে সহজেই সাহায্য ও আপডেট পাওয়া যায়।

---

## 2. Primary Key এবং Foreign Key কনসেপ্ট

### কী (Key) কী?
**Key** হলো একটি single field বা একাধিক field-এর সমন্বয়, যা টেবিলের রেকর্ডকে ইউনিকভাবে চিহ্নিত করে। এটি টেবিলের একটি বিশেষ বৈশিষ্ট্য।

---

### Primary Key (প্রাইমারি কী)
- ক্যান্ডিডেট কী গুলোর মধ্যে থেকে একটি কী বেছে নিয়ে প্রাইমারি কী নির্ধারণ করা হয়।
- এটি প্রতিটি রেকর্ডকে ইউনিকভাবে চিহ্নিত করে।
- এটি **unique**, **not null**, এবং **stable** (পরিবর্তনশীল নয়) হতে হয়।

**উদাহরণ:**

```text
Candidate Keys: {u_id}, {name, gender}
Primary Key: {u_id}
```

<u_id> কে প্রাইমারি কী হিসেবে বেছে নেওয়া হয়েছে কারণ এটি ইউনিক এবং পরিবর্তিত হয় না।

---

### Foreign Key (ফরেইন কী)
Foreign Key হলো এমন একটি কী, যা অন্য একটি টেবিলের Primary Key-এর সাথে সম্পর্ক তৈরি করে। এটি টেবিলগুলোর মধ্যে সম্পর্ক স্থাপন করে।

**উদাহরণ:**

#### Students টেবিল:

| student_id | name   | department_id |
|------------|--------|----------------|
| 1          | Rafiq  | 101            |
| 2          | Salma  | 102            |

#### Departments টেবিল:

| department_id | department_name |
|---------------|------------------|
| 101           | CSE              |
| 102           | BBA              |

- `department_id` → **Departments** টেবিলের **Primary Key**
- `department_id` → **Students** টেবিলের **Foreign Key**

এভাবে `department_id` দুটি টেবিলের মধ্যে সম্পর্ক তৈরি করে।

---


