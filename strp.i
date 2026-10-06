# 0 "strp.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "strp.c"






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
# 8 "strp.c" 2
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



# 9 "strp.c" 2


# 10 "strp.c"
size_t Str_getLength(const char *str)
{
   const char *pcEnd;
   
# 13 "strp.c" 3 4
  ((
# 13 "strp.c"
  str != 
# 13 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 13 "strp.c"
  "str != NULL"
# 13 "strp.c" 3 4
  , "strp.c", 13, __extension__ __PRETTY_FUNCTION__))
# 13 "strp.c"
                     ;
   pcEnd = str;
   while (*pcEnd != '\0')
      pcEnd++;
   return (size_t)(pcEnd - str);
}

char *Str_copy(char *s1, const char *s2)
{
    char *pcEnd1;
    const char *pcEnd2;

    
# 25 "strp.c" 3 4
   ((
# 25 "strp.c"
   s1 != 
# 25 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 25 "strp.c"
   "s1 != NULL"
# 25 "strp.c" 3 4
   , "strp.c", 25, __extension__ __PRETTY_FUNCTION__))
# 25 "strp.c"
                     ;
    
# 26 "strp.c" 3 4
   ((
# 26 "strp.c"
   s2 != 
# 26 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 26 "strp.c"
   "s2 != NULL"
# 26 "strp.c" 3 4
   , "strp.c", 26, __extension__ __PRETTY_FUNCTION__))
# 26 "strp.c"
                     ;

    pcEnd1 = s1;
    pcEnd2 = s2;
    while (*pcEnd2 != '\0')
    {
        *pcEnd1 = *pcEnd2;
        pcEnd1++;
        pcEnd2++;
    }
    *pcEnd1 = *pcEnd2;
    return s1;
}

char *Str_concat(char *s1, const char *s2)
{
    char *pcEnd1;
    const char *pcEnd2;

    
# 45 "strp.c" 3 4
   ((
# 45 "strp.c"
   s1 != 
# 45 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 45 "strp.c"
   "s1 != NULL"
# 45 "strp.c" 3 4
   , "strp.c", 45, __extension__ __PRETTY_FUNCTION__))
# 45 "strp.c"
                     ;
    
# 46 "strp.c" 3 4
   ((
# 46 "strp.c"
   s2 != 
# 46 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 46 "strp.c"
   "s2 != NULL"
# 46 "strp.c" 3 4
   , "strp.c", 46, __extension__ __PRETTY_FUNCTION__))
# 46 "strp.c"
                     ;
    pcEnd1 = s1 + Str_getLength(s1);
    pcEnd2 = s2;
    while (*pcEnd2 != '\0')
    {
        *pcEnd1 = *pcEnd2;
        pcEnd1++;
        pcEnd2++;
    }
   *pcEnd1 = *pcEnd2;
    return s1;
}

int Str_compare(const char *s1, const char *s2)
{
    const char *pcEnd1;
    const char *pcEnd2;

    
# 64 "strp.c" 3 4
   ((
# 64 "strp.c"
   s1 != 
# 64 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 64 "strp.c"
   "s1 != NULL"
# 64 "strp.c" 3 4
   , "strp.c", 64, __extension__ __PRETTY_FUNCTION__))
# 64 "strp.c"
                     ;
    
# 65 "strp.c" 3 4
   ((
# 65 "strp.c"
   s2 != 
# 65 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 65 "strp.c"
   "s2 != NULL"
# 65 "strp.c" 3 4
   , "strp.c", 65, __extension__ __PRETTY_FUNCTION__))
# 65 "strp.c"
                     ;
    pcEnd1 = s1;
    pcEnd2 = s2;
    while (*pcEnd1 != '\0')
    {
        if (*pcEnd1 < *pcEnd2)
        {
            return -1;
        }
        else if (*pcEnd1 > *pcEnd2)
        {
            return 1;
        }
        pcEnd1++;
        pcEnd2++;
    }
    if (*pcEnd1 < *pcEnd2)
    {
        return -1;
    }
    else if (*pcEnd1 > *pcEnd2)
    {
        return 1;
    }
    return 0;
}

char *Str_search(const char *s1, const char *s2)
{
    char *nullpointer = 
# 94 "strp.c" 3 4
                       ((void *)0)
# 94 "strp.c"
                           ;
    char *pcEnd1;
    const char *s2Tracker;

    
# 98 "strp.c" 3 4
   ((
# 98 "strp.c"
   s1 != 
# 98 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 98 "strp.c"
   "s1 != NULL"
# 98 "strp.c" 3 4
   , "strp.c", 98, __extension__ __PRETTY_FUNCTION__))
# 98 "strp.c"
                     ;
    
# 99 "strp.c" 3 4
   ((
# 99 "strp.c"
   s2 != 
# 99 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 99 "strp.c"
   "s2 != NULL"
# 99 "strp.c" 3 4
   , "strp.c", 99, __extension__ __PRETTY_FUNCTION__))
# 99 "strp.c"
                     ;
    pcEnd1 = s1;
    while (*pcEnd1 != '\0')
    {
        s2Tracker = s2;
        while (*s2Tracker != '\0' && *s2Tracker == *(pcEnd1 + (s2Tracker - s2)))
        {
            s2Tracker++;
        }
        if (*s2Tracker == '\0')
        {
            return pcEnd1;
        }
        pcEnd1++;
    }
    if (*s2 == '\0' && Str_getLength(s1) == 0) {
        return s1;
    }
    return nullpointer;
}
