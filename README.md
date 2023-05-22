# Purpose
This is a collection of ansible scripts I use to run our home infrastructure.

# Vim Cheatsheet

## Basic Commands
- Change uppercase: `U`
- Change lowercase: `u`
- Move Panes - `<CTRL>+hjkl` - Left, Down, Up, Right

## NERDTree
- Open NERDTree: `<CTRL>+F`

## Vim Folds
- Open Fold: `za`
- Close Fold: `zc`

## Vim Surround
### Surround One Word
```
I am happy.
I am "happy".
```
`ysiw" (ys: add surroundings; iw: entire word, no matter where the cursor is as long as it's at the word you want to surround; ": character to surround text with)`

### Surround Entire Line
```
I am happy; she is sad.
(I am happy; she is sad.)
```
`yss) (ys: add surroundings; s: entire line; ) character to surround line with)`

Note: If you use yss( instead of yss), spaces will be added around your text: ( I am happy; she is sad. )

### Surround Entire Line or Paragraph with Tags
```
Hello World! How are you?
<p>Hello World! How are you?</p>
```
`yss<p> (yss: add surroundings to entire line; <p> tag to surround line with)`

Note: The closing tag </p> will be auto-completed. Very convenient!

### Surround Multiple Words
```
I am very very happy.
I am *very very* happy.
```
`ys2aw* (ys: add surroundings; 2: number of words to surround, starting with the word under the cursor; aw: around words; *: character to surround text with)`

### Surround Multiple Words with Tags
```
Hello World! How are you?
<em>Hello World</em>! How are you?
```
`ys2aw<em> (add surroundings around 2 words; remember to place your cursor under Hello first!)`

### Surround Selected Text
```
The solution is x + y = z. You responded wrongly.
The solution is "x + y = z". You responded wrongly.
```
`Place cursor under x, then veeeeS" (v: enter visual mode to select text; eeee: press however many times you need to select the number of words you want to select; S" surrounds the selected text with ")`

### Delete Surroundings
```
"Hello World!"
Hello World
```
`ds" (ds: delete surrounding; ": character to delete; place cursor anywhere inside the text area)`

### Delete Surrounding Tags
```
<em><p>Hello World!</p></em>
Hello World!
```
`dstdst (dst; delete surrounding tag); if you install repeat.vim, you can use . to repeat, so dst. will be the same as dstdst`

### Change Surroundings
```
"Hello World!"
*Hello World!*
```
`cs"* (cs: change surrounding; ": existing surrounding; *: new surrounding)`

### Change Surrounding Tags
```
<p>Hello World!</p>
<em>Hello World!</em>
```
`cst<em> (cst: change surrounding tag; <em>: new surrounding)`
