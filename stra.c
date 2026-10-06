#include "str.h"
#include <assert.h>


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
    str1[strIndex + tsl1] = str2[strIndex];
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
    
    char *p = NULL;

    assert(str1 != NULL);
    assert(str2 != NULL);
    while (str1[strIndex] != '\0')
    {
        size_t substringIndex = 0;

        while (str2[substringIndex] != '\0' && str2[substringIndex] == str1[strIndex+substringIndex])
        {
            substringIndex++;
        }
        if (str2[substringIndex] == '\0') 
        {
            return (char *)&(str1[strIndex]);
        }

        strIndex++;
    }
    if (*str2 == '\0' && strIndex == 0) {
        return (char *)&(str1[strIndex]);
    }
    return p;
}