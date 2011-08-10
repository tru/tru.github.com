---
layout: post
title: Making good commits for code reviews
date: 2011-08-11T13:00:00+00:00
---


In large software development teams you can often encounter problems with large commits. How often have a developer been working for weeks on a new feature without commiting even once? How hard was it to merge that? Did anyone manage to review it? If you encounter problems with that big commit, how easy was it to find the problem? This post considers how to make better commits and how to avoid problems like that.

With two words: **commit often**. With a couple of more words ... read on.

## Atomic commits ##

The key is often to do "atomic" commits, meaning commits that are independent from each other. To make it a bit more real, I will use this example program: A simple array to CSV/TSV converter written in Python (ignore the code and language, it's just an example):

{% highlight python %}
class Converter:
    def __init__(self, source):
        self.source = source
        
    def csv(self):
        returnData = ""
        for line in self.source:
            returnData += ",".join(line) + "\n"
        return returnData
    
    def tsv(self):
        returnData = ""
        for line in self.source:
            returnData += "\t".join(line) + "\n"
        return returnData
        
if __name__ == "__main__":
    a = [["Jonas", "1234567"], ["Anders", "9757272"]]
    conv = Converter(a)
    print conv.csv()
    print conv.tsv()
{% endhighlight %}

That is the base code we are going to use to show two different examples on how to add features and refactor the code.

We want add support for CSV converter with semi-colon instead of colon. While doing this we realize that we can refactor the code to use list comprehensions instead of the for loop, usually you do all that changes in one honking commit. This is the diff for adding CSV semi-colon and refactor the functions that are already in there:

{% highlight diff %}
diff --git a/commits.py b/commits.py
index 6f1dddb..b07d7ba 100644
--- a/commits.py
+++ b/commits.py
@@ -3,15 +3,15 @@ class Converter:
         self.source = source
         
     def csv(self):
-        returnData = ""
-        for line in self.source:
-            returnData += ",".join(line) + "\n"
+        returnData = "\n".join([",".join(line) for line in self.source])
         return returnData
     
     def tsv(self):
-        returnData = ""
-        for line in self.source:
-            returnData += "\t".join(line) + "\n"
+        returnData = "\n".join(["\t".join(line) for line in self.source])
+        return returnData
+        
+    def csvSemiColon(self):
+        returnData = "\n".join([";".join(line) for line in self.source])
         return returnData
         
 if __name__ == "__main__":
@@ -19,5 +19,6 @@ if __name__ == "__main__":
     conv = Converter(a)
     print conv.csv()
     print conv.tsv()
+    print conv.csvSemiColon()

{% endhighlight %}

That is one messy diff! Hard to see what it actually does, and hard to review, because you have review multiple things at the same time. What we could do instead is to first do the refactoring, commit that and then add the new function, then we get a diff that looks like this for refactoring:

{% highlight diff %}
diff --git a/commits.py b/commits.py
index 6f1dddb..efa5161 100644
--- a/commits.py
+++ b/commits.py
@@ -3,15 +3,11 @@ class Converter:
         self.source = source
         
     def csv(self):
-        returnData = ""
-        for line in self.source:
-            returnData += ",".join(line) + "\n"
+        returnData = "\n".join([",".join(line) for line in self.source])
         return returnData
     
     def tsv(self):
-        returnData = ""
-        for line in self.source:
-            returnData += "\t".join(line) + "\n"
+        returnData = "\n".join(["\t".join(line) for line in self.source])
         return returnData
         
 if __name__ == "__main__":
{% endhighlight %}

and this for adding the new feature:

{% highlight diff %}
diff --git a/commits.py b/commits.py
index efa5161..aa276c6 100644
--- a/commits.py
+++ b/commits.py
@@ -9,11 +9,18 @@ class Converter:
     def tsv(self):
         returnData = "\n".join(["\t".join(line) for line in self.source])
         return returnData
+
+    def csvSemiColon(self):
+        returnData = "\n".join([";".join(line) for line in self.source])
+        return returnData
+        
+        
         
 if __name__ == "__main__":
     a = [["Jonas", "1234567"], ["Anders", "9757272"]]
     conv = Converter(a)
     print conv.csv()
     print conv.tsv()
+    print conv.csvSemiColon()
{% endhighlight %}

Much smaller and more focused commits, we see for each function what has been changed and what they have become. In the second commit is very obvious what happened. 

A side effect of this is that it's much easier to write sensible commit messages. Instead of folding two changes and in a commit message that says "Added semi-colon feature" we get two different commit messages that makes sense and describes the full extent of the change. This is good because if something later breaks, it's much easier to track down the offending commit if the commit message is sensible.

The example above is very small, atomic commits are going to be harder in bigger projects when adding bigger features. A good rule of thumb could be to make sure that each commit can be compiled, executed and tested by itself. That makes it much easier to review and test.

## Conclusion ##

To facilitate code reviews you need to make the commits sane to review. If you keep it atomic, easy to overview and easy to test you get better reviews and less merge problems.
