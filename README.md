# wordify
This program is to changing the given 10 digit numbers into memorable words with the help of dict


The phone numbers will never contain a 0 or 1. 
Words have to be at least 3 characters.

To give you an initial idea, here are some numbers that return (a lot of) results.

`6686787825` returns a (long) list with these word combinations:

```bash
["noun", "struck"]
["onto", "struck"]
["motor", "truck"]
["motor", "usual"]
["nouns", "truck"]
["nouns", "usual"]
"motortruck"
```


`2282668687` returns a (long) list with these word combinations:

```bash
["act", "amounts"]
["act", "contour"]
["bat", "amounts"]
["bat", "contour"]
["cat", "amounts"]
["cat", "contour"]
["acta", "mounts"]
"catamounts"
```

This program takes around 800ms approximately to display the result


full output:

#output when valid 10 digit is given

```bash
$ ruby wordify.rb 
Please enter 10 digits number(without '0' & '1') : 2282668687
Time : 816.0953521728516 ms
["act", "amounts"]
["act", "contour"]
["bat", "amounts"]
["bat", "contour"]
["cat", "amounts"]
["cat", "contour"]
["acta", "mounts"]
"catamounts"
```


#output when invalid 10 digit is given

```bash
$ ruby wordify.rb 
Please enter 10 digits number(without '0' & '1') : 9625004218
"Please enter valid 10 digits number! "
```

See how it looks

![Output](https://raw.githubusercontent.com/actionanand/wordify/master/output.png)

