# Word Salad

## DESCRIPTION:

Word Salad is a very simple Ruby library for generating random strings of English words based on a list of basic english words. It adds six methods to the <tt>Integer</tt> class.


Words originally retrieved from http://www.langmaker.com/wordlist/basiclex.htm


## INSTALL:

  gem install word_salad

## USAGE:

  <code>require 'word_salad'</code>

    1.word ==> "quite"
    5.words ==> ["stone", "bent", "kick", "name", "event"]
    1.sentence => "Take past even rice land red open name engine grass thick pen."
    3.sentences(5) ==> ["Move mass increase fact step quite.", "Clock shirt pocket mountain drain.", "Before fat group such."]
    1.paragraph(5, 5) => "Belief same minute market control. Stamp sand stocking ant angle. Grip form distribution up. Leaf blue committee camera test. Event detail addition point trousers be."
    2.paragraphs(2, 3) ==> ["Disgust idea bucket. Branch sail right.", "Cotton root discussion. Grey thumb.", "Lift minute pipe cake. Any scale.", "Size take gun. Not bell smash out."]


## LICENSE:

(The MIT License)

Copyright (c) 2008 Alex Vollmer\
Copyright (c) 2011, 2025 Alice Brown

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
