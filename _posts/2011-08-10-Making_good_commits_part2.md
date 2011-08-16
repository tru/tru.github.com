---
layout: default
title: Making good commits, part 2
date: 2011-08-16T10:06:56+01:00
---

## The evil of whitespaces ##

In the second part of this epic opus about how to make better commits we are going to banish bad whitespaces from commits.

Most people think that I am very picky when it comes to complaining about whitespaces, but there are a couple of valid reasons why you shouldn't check in a lot of trailing whitespaces. Consider the diff below:

{% highlight diff %}
diff --git a/commits.py b/commits.py
index efa5161..7f99446 100644
--- a/commits.py
+++ b/commits.py
@@ -4,16 +4,23 @@ class Converter:
         
     def csv(self):
         returnData = "\n".join([",".join(line) for line in self.source])
-        return returnData
+        return returnData  
     
     def tsv(self):
-        returnData = "\n".join(["\t".join(line) for line in self.source])
-        return returnData
+        returnData = "\n".join(["\t".join(line) for line in self.source])  
+        return returnData  
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

The lines above contains trailing whitespaces and empty lines, which makes the diff hard to review, because there are changes there that could be hard to spot (what are the difference between the lines where we have invisible characters are removed or added!).

Not only is it hard to review, but it can be hard to merge. If any of the lines above has changed in the repo or branch you are trying to merge with it will create a conflict, even if the SCM normally should be able to solve that.

It should be noted that it's not only adding whitespaces that can screw up your merge and review, even removing whitespace and empty lines can make it harder to merge and review.

### Whitespaces with indentation ###

Indentation with tabs and whitespaces are also sources of problem with whitespaces. The same problem apply as above, if you change indentation or if you have different methods of indenting between your developers you will get unnecessary merge conflicts and hard to review diffs.

It doesn't really matter if you are using tabs or spaces to indent your code, the important part is to make sure that all developers are using the same settings.

### Remedy ###

To remedy the problems above there are two things to think about:

* Make whitespace and indendentation changes in seperate commits
* Configure all editors in the development team to remove whitespaces or at least highlight them so that they are visible and if possible automatically remove them when saved

Another trick that can be very handy is to review the diff in a terminal or text editor before submitting it. A text representation of the diff doesn't reformat whitespaces to tabs and the other way around.