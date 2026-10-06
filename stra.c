/*--------------------------------------------------------------------*/
/* stra.c                                                             */
/* Author: Darwin Lopez Campos                                        */
/*--------------------------------------------------------------------*/


#include "str.h"
#include <assert.h>


size_t Str_getLength(const char s[])
{
   size_t strLength = 0;
   assert(s != NULL);
   while (s[strLength] != '\0')
      strLength++;
   return strLength;
}

char *Str_copy(char s1[], const char s2[])
{
    size_t strIndex = 0;

    assert(s1 != NULL);
    assert(s2 != NULL);
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

    assert(s1 != NULL);
    assert(s2 != NULL);
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
    
    assert(s1 != NULL);
    assert(s2 != NULL);
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
    
    char *nullpointer = NULL;

    assert(s1 != NULL);
    assert(s2 != NULL);
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