# 0 "stra.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "stra.c"






# 1 "str.h" 1



# 1 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 1 3 4
# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4

# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 209 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 321 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 5 "str.h" 2



# 7 "str.h"
size_t Str_getLength(const char *s);



char *Str_copy(char *s1, const char *s2);



char *Str_concat(char *s1, const char *s2);





int Str_compare(const char *s1, const char *s2);




char *Str_search(const char *s1, const char *s2);
# 8 "stra.c" 2
# 1 "/usr/include/assert.h" 1 3 4
# 35 "/usr/include/assert.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 392 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 393 "/usr/include/features.h" 2 3 4
# 490 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 551 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 552 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 553 "/usr/include/sys/cdefs.h" 2 3 4
# 491 "/usr/include/features.h" 2 3 4
# 514 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4




# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 6 "/usr/include/gnu/stubs.h" 2 3 4


# 1 "/usr/include/gnu/stubs-lp64.h" 1 3 4
# 9 "/usr/include/gnu/stubs.h" 2 3 4
# 515 "/usr/include/features.h" 2 3 4
# 36 "/usr/include/assert.h" 2 3 4
# 64 "/usr/include/assert.h" 3 4




# 67 "/usr/include/assert.h" 3 4
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 9 "stra.c" 2



# 11 "stra.c"
size_t Str_getLength(const char s[])
{
   size_t strLength = 0;
   
# 14 "stra.c" 3 4
  ((
# 14 "stra.c"
  s != 
# 14 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 14 "stra.c"
  "s != NULL"
# 14 "stra.c" 3 4
  , "stra.c", 14, __extension__ __PRETTY_FUNCTION__))
# 14 "stra.c"
                   ;
   while (s[strLength] != '\0')
      strLength++;
   return strLength;
}

char *Str_copy(char s1[], const char s2[])
{
    size_t strIndex = 0;

    
# 24 "stra.c" 3 4
   ((
# 24 "stra.c"
   s1 != 
# 24 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 24 "stra.c"
   "s1 != NULL"
# 24 "stra.c" 3 4
   , "stra.c", 24, __extension__ __PRETTY_FUNCTION__))
# 24 "stra.c"
                     ;
    
# 25 "stra.c" 3 4
   ((
# 25 "stra.c"
   s2 != 
# 25 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 25 "stra.c"
   "s2 != NULL"
# 25 "stra.c" 3 4
   , "stra.c", 25, __extension__ __PRETTY_FUNCTION__))
# 25 "stra.c"
                     ;
    while (s2[strIndex] != '\0')
    {
        s1[strIndex] = s2[strIndex];
        strIndex++;
    }
    s1[strIndex] = s2[strIndex];
    return s1;
}

char *Str_concat(char s1[], const char s2[])
{
    size_t tsl1 = Str_getLength(s1);
    size_t strIndex = 0;

    
# 40 "stra.c" 3 4
   ((
# 40 "stra.c"
   s1 != 
# 40 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 40 "stra.c"
   "s1 != NULL"
# 40 "stra.c" 3 4
   , "stra.c", 40, __extension__ __PRETTY_FUNCTION__))
# 40 "stra.c"
                     ;
    
# 41 "stra.c" 3 4
   ((
# 41 "stra.c"
   s2 != 
# 41 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 41 "stra.c"
   "s2 != NULL"
# 41 "stra.c" 3 4
   , "stra.c", 41, __extension__ __PRETTY_FUNCTION__))
# 41 "stra.c"
                     ;
    while (s2[strIndex] != '\0')
    {
        s1[strIndex + tsl1] = s2[strIndex];
        strIndex++;
    }
    s1[strIndex + tsl1] = s2[strIndex];
    return s1;
}

int Str_compare(const char s1[], const char s2[])
{
    size_t strIndex = 0;

    
# 55 "stra.c" 3 4
   ((
# 55 "stra.c"
   s1 != 
# 55 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 55 "stra.c"
   "s1 != NULL"
# 55 "stra.c" 3 4
   , "stra.c", 55, __extension__ __PRETTY_FUNCTION__))
# 55 "stra.c"
                     ;
    
# 56 "stra.c" 3 4
   ((
# 56 "stra.c"
   s2 != 
# 56 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 56 "stra.c"
   "s2 != NULL"
# 56 "stra.c" 3 4
   , "stra.c", 56, __extension__ __PRETTY_FUNCTION__))
# 56 "stra.c"
                     ;
    while (s1[strIndex] != '\0')
    {
        if ( s1[strIndex] < s2[strIndex] )
        {
            return -1;
        }
        else if ( s1[strIndex] > s2[strIndex] )
        {
            return 1;
        }
        strIndex++;
    }
    if ( s1[strIndex] < s2[strIndex] )
    {
        return -1;
    }
    else if ( s1[strIndex] > s2[strIndex] )
    {
        return 1;
    }
    return 0;
}

char *Str_search(const char s1[], const char s2[])
{
    size_t strIndex = 0;

    char *nullpointer = 
# 84 "stra.c" 3 4
                       ((void *)0)
# 84 "stra.c"
                           ;

    
# 86 "stra.c" 3 4
   ((
# 86 "stra.c"
   s1 != 
# 86 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 86 "stra.c"
   "s1 != NULL"
# 86 "stra.c" 3 4
   , "stra.c", 86, __extension__ __PRETTY_FUNCTION__))
# 86 "stra.c"
                     ;
    
# 87 "stra.c" 3 4
   ((
# 87 "stra.c"
   s2 != 
# 87 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 87 "stra.c"
   "s2 != NULL"
# 87 "stra.c" 3 4
   , "stra.c", 87, __extension__ __PRETTY_FUNCTION__))
# 87 "stra.c"
                     ;
    while (s1[strIndex] != '\0')
    {
        size_t substringIndex = 0;

        while (s2[substringIndex] != '\0' && s2[substringIndex] == s1[strIndex+substringIndex])
        {
            substringIndex++;
        }
        if (s2[substringIndex] == '\0')
        {
            return (char *)&(s1[strIndex]);
        }

        strIndex++;
    }
    if (*s2 == '\0' && strIndex == 0) {
        return (char *)&(s1[strIndex]);
    }
    return nullpointer;
}
