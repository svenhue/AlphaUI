type plugin = {
    client?: boolean
    server?: boolean
    name: string
}



type AppConfig = {
    plugins: plugin[]
}


export { AppConfig, plugin }