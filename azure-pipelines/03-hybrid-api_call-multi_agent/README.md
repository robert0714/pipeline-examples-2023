# [API call pipeline](https://learn.microsoft.com/en-us/rest/api/azure/devops/pipelines/runs/run-pipeline?view=azure-devops-rest-7.0) - Using jsonArrayData Trigger Pipeline

* [Download artifacts from a specific project/pipeline](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/download-pipeline-artifact-v2?view=azure-pipelines#examples)

* request example:   
           ```shell
            POST https://dev.azure.com/iisiD210641-a/CHT_WildFly/_apis/pipelines/41/runs?api-version=7.0
            body:
            {
             "previewRun" : "false"
            }
           ```
* Considering [authentication](https://www.sanderh.dev/call-Azure-DevOps-REST-API-Postman/#authentication). You need to apply [**PAT(personal access token)**](https://learn.microsoft.com/zh-tw/azure/devops/organizations/accounts/use-personal-access-tokens-to-authenticate?view=azure-devops&tabs=Windows).  
* Jenkins enterprise edition(CloudBee)2016 had examples like it。   
* [Run stages parallel on multi agent in YAML pipeline](https://www.youtube.com/watch?v=esXNOyLbBks)