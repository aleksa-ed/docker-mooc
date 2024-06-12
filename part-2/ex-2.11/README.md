I have used options similiar to the node-dev-example with Docker previously. I found docker to be a great choice even if only for running a specific version of database locally like mentioned in this course.

I would like to give an example of a simple frontend project that I was building. I've used docker in combination with vscode. Vscode has an interesting feature named devcontainers. They have a wide range of already configured docker images, but you can create your own Dockerfile like I did here. 

Once you have everything running it works as if you are inside the container and developing in that enviroment, which can easily be reproducable with docker anywhere. 

Since a lot of developers already use vscode, devcontainers give extra options like defining which vscode plugins are mandatory for dev enviroment. This is useful in preventing errors like not running a code linter or code formatter before pushing code to CI and having it fail. In devcontainer you can define eslint and prettier to be required and to auto format on document save. 

Even though I haven't been able to convince other developers to use it, I still use it personally.