#include "str.h"
#include <stddef.h>


size_t Str_getLength(const char str[])
{
   size_t strLength = 0;
   assert(str != NULL);
   while (str[strLength] != '\0')
      strLength++;
   return strLength;
}

char *Str_copy(char str1[], const char str2[])
{
    size_t strIndex = 0;

    assert(str1 != NULL);
    assert(str2 != NULL);
    while (str2[strIndex] != '\0')
    {
        str1[strIndex] = str2[strIndex];
        strIndex++;
    }
    str1[strIndex] = str2[strIndex];
    return str1;
}

char *Str_concat(char str1[], const char str2[])
{
    size_t tsl1 = Str_getLength(str1);
    size_t strIndex = 0;

    assert(str1 != NULL);
    assert(str2 != NULL);
    while (str2[strIndex] != '\0')
    {
        str1[strIndex + tsl1] = str2[strIndex];
        strIndex++;
    }
    return str1;
}

size_t Str_compare(const char str1[], const char str2[])
{
    size_t strIndex = 0;
    
    assert(str1 != NULL);
    assert(str2 != NULL);
    while (str1[strIndex] != '\0')
    {
        if ( str1[strIndex] < str2[strIndex] ) 
        {
            return -1;
        }
        else if ( str1[strIndex] > str2[strIndex] )
        {
            return 1;
        }
        strIndex++;
    }
    if ( str1[strIndex] < str2[strIndex] ) 
    {
        return -1;
    }
    else if ( str1[strIndex] > str2[strIndex] )
    {
        return 1;
    }
    return 0;
}

char *Str_search(const char str1[], const char str2[])
{
    size_t strIndex = 0;
    int inSubstring = 0;
    int substringIndex = 0;
    char *p = NULL;

    assert(str1 != NULL);
    assert(str2 != NULL);
    while (str1[strIndex] != '\0')
    {
        if (inSubstring == 1 && substringIndex == Str_getLength(str2)) 
        {
            return str1 + strIndex - Str_getLength(str2);
        }
        if (str1[strIndex] == str2[substringIndex] && inSubstring == 0)
        {
            inSubstring = 1;
            substringIndex++;
        }
        else if ( str1[strIndex] == str2[substringIndex] && inSubstring == 1) 
        {
            substringIndex++;
        }
        else
        {
            inSubstring = 0;
        }
        strIndex++;
    }
    return p;
}