
char * get_address()
{
    char *address =  "0x71C7656EC7ab88b098defB751B7401B5f6d8976F";
    char *address_m = malloc(strlen(address));
    strcpy(address_m, address);
    return address_m;
}
