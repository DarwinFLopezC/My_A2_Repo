#ifndef STR_INCLUDED
#define STR_INCLUDED

#include <stddef.h>
/* Takes an array of characters (a string) 
and returns the length of that string */
size_t Str_getLength(const char *s);

/* Takes two strings and copies the s2 into s1
and returns the updated s1 */
char *Str_copy(char *s1, const char *s2);

/* Takes two strings and concatenates s2 to 
end of s1 and returns the updated s1 */
char *Str_concat(char *s1, const char *s2);

/* Takes two strings and compares them to see if
either is greater or they're equal. Returns 0 if
equal, a value < 0 if s1 < s2, or a value > 0 if 
s1 > s2 */
size_t Str_compare(const char *s1, const char *s2);

/* Takes two strings and searches s1 for a match 
with s2. Returns a pointer to the first occurence
or a null pointer if there is no match found.  */
char *Str_search(const char *s1, const char *s2);

#endif