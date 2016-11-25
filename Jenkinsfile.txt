node("docker") {
    docker.withRegistry('https://index.docker.io/v1/', 'dvohra') {
    
        git url: "https://github.com/dvohra/docker-node-server.git"
    
        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id
    
        stage "build"
        def app = docker.build "your-project-name"
    
        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
}