https://www.youtube.com/watch?v=E84fLe6qXAk

`helm template .` - will output the generated yaml configuration files based on your helm chart.
 - Takes multiple files and combines them into one. 

Developers of helm decided to use Golang to implement charts. The Go Templating Language. 

blocks - `{{}}` - expressions in the templating language
 - use this syntax in your helm templates

`--set` or a customer values.yaml file can be used to override the default chart values. 

#### Go Actions

Template Function List - Helm docs

Ex: String Functions
 - User overrides default value where repositoryName is improperly cased
 - `{{ <function> .Values.example parameter1 p2 separatedBySpaces }}`

Default function - helm chart author left a yaml field empty or chart is set up for user to apply manually (ex: --set)

#### Pipelines 

You often need to chain the output of one function to another.

`pipeline syntax`

