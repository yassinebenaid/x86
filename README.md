# x86
basic x86 scripts to achieve random tasks , 
this repository tends to be educational for anyone who is wondering how all the magic given by all programming languages is working under the hood , from loops , if statements , variables and so on
each file represent one topic , shows the instructions needed to represent it in the cpu level

## prerequesties
as descibed earlier , this project is for educational purposes , but if you're intersted and want to pull it to your local , here are some cautions :
- this is `x86` , so you probably know that it runs on linux , and it should be 64 bits :)
- you need and assembler , literally `nasm` , the instuctions do differ from an assembler to another , `sudo apt update && sudo apt install nasm` will get it 
- and ofcourse a linker to lnik the objects , I use `ld` , you should have it already installed on linux , but you can still get it by `sudo apt install binutils`


## usage

1. run `nasm -f elf64 "./hello_world.asm" -o hello.o`
2. `ld hello.o -o hello`
3. `./hello`

ofcourse i used `hello_world` as example , but change it according to your needs

thanks :) :)
