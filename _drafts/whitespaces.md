## The evil of whitespaces ##

Another thing to consider is to avoid trailing whitespaces, or any whitespace changes to exsisting code. Look at the diff below:

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

The diff above is hard to review, because there are changes there that could be hard to spot (what are the difference between the lines where we have invisible characters are removed or added!). It's also very hard for your SCM to merge, because it will create conflicts with other (hopefully more significant) changes.

