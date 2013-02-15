#include <windows.h>
#include <stdio.h>

int main(int argc, char * argv[]){
    printf("Taille de structures :\n");
    printf("DEBUG_EVENT: %d -- 3 DWORD + union des structures suivantes :\n", sizeof(DEBUG_EVENT));
    printf("\tEXCEPTION_DEBUG_INFO: %d\n", sizeof(EXCEPTION_DEBUG_INFO));
    printf("\tCREATE_THREAD_DEBUG_INFO: %d\n", sizeof(CREATE_THREAD_DEBUG_INFO));
    printf("\tCREATE_PROCESS_DEBUG_INFO: %d\n", sizeof(CREATE_PROCESS_DEBUG_INFO));
    printf("\tEXIT_THREAD_DEBUG_INFO: %d\n", sizeof(EXIT_THREAD_DEBUG_INFO));
    printf("\tEXIT_PROCESS_DEBUG_INFO: %d\n", sizeof(EXIT_PROCESS_DEBUG_INFO));
    printf("\tLOAD_DLL_DEBUG_INFO: %d\n", sizeof(LOAD_DLL_DEBUG_INFO));
    printf("\tUNLOAD_DLL_DEBUG_INFO: %d\n", sizeof(UNLOAD_DLL_DEBUG_INFO));
    printf("\tOUTPUT_DEBUG_STRING_INFO: %d\n", sizeof(OUTPUT_DEBUG_STRING_INFO));
    printf("\tRIP_INFO: %d\n", sizeof(RIP_INFO));
    
    printf("OPENFILENAME: %d\n", sizeof(OPENFILENAME));

    printf("PROCESS_ALL_ACCESS = %d\n", PROCESS_ALL_ACCESS);
}

/*
DEBUG_EVENT: 96 -- 3 DWORD + union des structures suivantes :
        EXCEPTION_DEBUG_INFO: 84
        CREATE_THREAD_DEBUG_INFO: 12
        CREATE_PROCESS_DEBUG_INFO: 40
        EXIT_THREAD_DEBUG_INFO: 4
        EXIT_PROCESS_DEBUG_INFO: 4
        LOAD_DLL_DEBUG_INFO: 24
        UNLOAD_DLL_DEBUG_INFO: 4
        OUTPUT_DEBUG_STRING_INFO: 8
        RIP_INFO: 8
*/
