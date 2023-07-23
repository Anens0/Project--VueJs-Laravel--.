{
    "compilerOptions": {
        "target": "esnext",
        "module": "esnext",
        "strict": true,
        "jsx": "preserve",
        "importHelpers": true,
        "moduleResolution": "node",
        "experimentalDecorators": true,
        "esModuleInterop": true,
        "allowSyntheticDefaultImports": true,
        "sourceMap": true,
        "baseUrl": "./",
        "types": ["webpack-env", "jest"],
        "paths": {
            "@/*": ["vue/src/*"]
        },
        "lib": ["esnext", "dom", "dom.iterable", "scripthost"]
    },
    "include": [
        "/**/*.ts",
        "/**/*.tsx",
        "/tests/**/*.ts",
        "/tests/**/*.tsx",
        "resources/js/**/*.vue"

    ],
    "exclude": ["node_modules"]
}

