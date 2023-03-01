This Program Uses the Flex (a fast lexer generator) to generate a lexer. we process in stream of characters 
and dividing them input into tokens

### How to run this program

Run these commands in terminal to get started on Linux

```
sudo apt-get install flex
sudo apt-get update (if new version is needed)
lex flex.l
gcc lex.yy.c
./a.out > output.txt
```
then open output.txt to view the output