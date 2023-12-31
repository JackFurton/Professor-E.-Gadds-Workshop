#include <stdio.h>
#include <stdlib.h>
#include <string.h>


char *stripOutPut (char *str) {
    char *stripped_output = malloc(strlen(str) +1);
    if (stripped_output == NULL) {
        return NULL;
    }

    strcpy(stripped_output, str);

    strtok(stripped_output, "");
    strtok(stripped_output, "\n");

    return stripped_output;
}

void borgermayne () {
    printf("enter ye nomber xDDD");
}

int main () {
    int testInteger;
    printf("enter a test integer: ");
    scanf("%d", &testInteger);
    printf("Number = %d\n", testInteger);
    borgermayne();
    stripOutPut;
}

/*
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Function to strip the output from the previous function
char *strip_output(char *str) {
  // Allocate memory for the stripped output
  char *stripped_output = malloc(strlen(str) + 1);
  if (stripped_output == NULL) {
    return NULL;
  }

  // Copy the stripped output to the allocated memory
  strcpy(stripped_output, str);

  // Strip the leading and trailing whitespace from the stripped output
  strtok(stripped_output, " ");
  strtok(stripped_output, "\n");

  // Return the stripped output
  return stripped_output;
}

// Main function
int main() {
  // Create a string to store the output from the previous function
  char output[100];

  // Call the previous function to generate the output
  // ...

  // Strip the output from the previous function
  char *stripped_output = strip_output(output);

  // Print the stripped output
  printf("%s\n", stripped_output);

  // Free the memory allocated for the stripped output
  free(stripped_output);

  return 0;
}
*/
