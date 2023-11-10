#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "cJSON.h"
 
int main()
{
    cJSON *json, *name, *sex, *age;
    char* out="{\"name\":\"luffy\",\"sex\":\"man\",\"age\":19}";
 
    json = cJSON_Parse(out); //解析成json形式
    name = cJSON_GetObjectItem(json, "name");  //获取键值内容
    sex = cJSON_GetObjectItem(json, "sex");
    age = cJSON_GetObjectItem(json, "age");
 
    printf("name:%s,sex:%s,age:%d\n", name->valuestring, sex->valuestring, age->valueint);
 
    cJSON_Delete(json);  //释放内存 
}
