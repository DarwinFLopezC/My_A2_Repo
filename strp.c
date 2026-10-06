#include "str.h"
#include <assert.h>

size_t Str_getLength(const char *str)
{
   const char *pcEnd;
   assert(str != NULL);
   pcEnd = str;
   while (*pcEnd != '\0')
      pcEnd++;
   return (size_t)(pcEnd - str);
}

char *Str_copy(char *s1, const char *s2)
{
    char *pcEnd1;
    const char *pcEnd2;

    assert(s1 != NULL);
    assert(s2 != NULL);

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

    assert(s1 != NULL);
    assert(s2 != NULL);
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

size_t Str_compare(const char *s1, const char *s2)
{
    const char *pcEnd1;
    const char *pcEnd2;

    assert(s1 != NULL);
    assert(s2 != NULL);
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
    if (pcEnd1 < pcEnd2) 
    {
        return -1;
    }
    else if (pcEnd1 > pcEnd2)
    {
        return 1;
    }
    return 0;
}

char *Str_search(const char *s1, const char *s2)
{
    const char *pcEnd1;
    const char *s2Tracker;
    const char *p = NULL;
    size_t inSubstring = 0;

    assert(s1 != NULL);
    assert(s2 != NULL);    
    pcEnd1 = s1;
    s2Tracker = s2;
    while (*pcEnd1 != '\0')
    {
        if (inSubstring == 1 && s2Tracker - s2 == Str_getLength(s2))
        {
            return pcEnd1 - Str_getLength(s2);
        }
        if (*pcEnd1 == *s2Tracker && inSubstring == 0)
        {
            inSubstring = 1;
            s2Tracker++;
        }
        else if (*pcEnd1 == *s2Tracker && inSubstring == 1) 
        {
            s2Tracker++;
        }
        else
        {
            inSubstring = 0;
            s2Tracker = s2;
        }
        pcEnd1++;
    }
    return p;
}