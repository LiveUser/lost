## 0.0.1+3 - October 8 2021
* ignoreDiacritics optional parameter added
* normalizer: ^0.0.1 added as dependency to perform the ignoreDiacritics functionality
* RegExp is now used to determine the amount of instances
* RegExp now counts how many times each instance of the query matches(it used to only count as 1 instance even if there were multiple matches(this adds recursion))
## 0.0.1+2 - September 17 2021
* Added null safety(ran "dart migrate" and did nothing but change the version number)
* removed flutter from the dependencies list on the .yaml(it wasn't needed)

## 0.0.1 - September 17 2021

* Basic search functionality
* Basic functionality to find the amount of instances
* Written the documentation
